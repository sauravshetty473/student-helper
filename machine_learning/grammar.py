
from transformers import pipeline

model_checkpoint = "Modfiededition/t5-base-fine-tuned-on-jfleg"

def load_model():
    return pipeline("text2text-generation", model=model_checkpoint)


model = load_model()
def correct_grammar(input_text):
    output_text = model(input_text)[0]["generated_text"]
    return output_text

