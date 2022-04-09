import torch
from transformers import AutoModelForSeq2SeqLM, AutoTokenizer, pipeline

# Set model name that will be used to generate the text
model_name = "nouamanetazi/cover-letter-t5-base"
tokenizer = AutoTokenizer.from_pretrained(model_name)
model = AutoModelForSeq2SeqLM.from_pretrained(model_name)


def generate_cover_letter(
    name, job, company, background, experiences, max_length=300, temperature=1.0, top_p=0.9, max_time=10
):
    model_args = {
        "max_length": max_length,
        "temperature": temperature,
        "top_p": top_p,
        # "top_k": 120,
        "early_stopping": True,
        "max_time": max_time,
        "do_sample": True,  # do_sample=False to force deterministic output
        "num_return_sequences": 1,  # number of samples to return
        "min_length": 100,
        "num_beams": 4,
        # "num_beam_groups": 1,
        # "diversity_penalty": 0,
        # "repetition_penalty": 5.0,
        # "length_penalty": 0,
        # "remove_invalid_values": True,
        "no_repeat_ngram_size": 3,
    }
    # Load the tokenizer and the distilgpt2 model
    # Set up the transformers pipeline
    text_generator = pipeline(
        "text2text-generation", model=model, tokenizer=tokenizer, device=0 if torch.cuda.is_available() else -1
    )
    # Generate the text
    prompt = f"coverletter name: {name} job: {job} at {company} background: {background} experiences: {experiences}"
    generated_text = text_generator(prompt, **model_args)[0]["generated_text"]
    return generated_text