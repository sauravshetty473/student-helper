from transformers import AutoModelForCausalLM, AutoTokenizer


model_name = "flax-community/gpt-neo-125M-apps-all"



def get_model():
    model = AutoModelForCausalLM.from_pretrained(model_name)
    tokenizer = AutoTokenizer.from_pretrained(model_name)
    tokenizer.pad_token = tokenizer.eos_token
    return (model, tokenizer)


def format_input(question, starter_code=""):
    answer_type = (
        "\nUse Call-Based format\n" if starter_code else "\nUse Standard Input format\n"
    )
    return f"\nQUESTION:\n{question}\n{starter_code}\n{answer_type}\nANSWER:\n"


def clean_text(generation):
    # clean up text has discussed in OpenAI's paper "Evaluating Large Language Models Trained on Code"
    generation = generation.split("\ndef")[0]
    generation = generation.split("\nclass")[0]
    generation = generation.split("\n#")[0]
    generation = generation.split("\nif")[0]

    return generation


def generate_solution(
    model, tokenizer, question, starter_code="", temperature=1.0, num_beams=1
):
    prompt = format_input(question, starter_code)
    input_ids = tokenizer(prompt, return_tensors="pt").input_ids
    start = len(input_ids[0])

    output = model.generate(
        input_ids,
        max_length=start + 150,
        do_sample=True,
        top_p=0.95,
        pad_token_id=tokenizer.pad_token_id,
        eos_token_id=tokenizer.eos_token_id,
        early_stopping=True,
        temperature=temperature,
        num_beams=int(num_beams),
        no_repeat_ngram_size=None,
        repetition_penalty=None,
        num_return_sequences=None,
    )
    output_str = tokenizer.decode(output[0][start:], skip_special_tokens=True).strip()
    output_str = clean_text(output_str)

    return output_str

if __name__ == '__main__':
    model,tokenizer = get_model()
    outs = generate_solution(model, tokenizer, 'generate sum of n numbers')
    print(outs)