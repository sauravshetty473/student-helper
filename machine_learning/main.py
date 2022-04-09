from fastapi import FastAPI, File, UploadFile
from text_to_code import get_model,generate_solution
from cover_letter import generate_cover_letter
from grammar import correct_grammar
from PIL import Image

app = FastAPI()


@app.get("/code/{q}")
async def root(q:str):
    model,tokenizer = get_model()
    output = generate_solution(model = model, tokenizer = tokenizer , question=q)

    return {"code": output}

@app.get("/letter")
async def c_letter(name:str, job:str, company:str, background:str, experiences:str):
    out = generate_cover_letter(name, job, company, background, experiences)

    return {"cover_letter":out}


@app.get('/grammar/{q}')
async  def grammar(q:str):
    out = correct_grammar(q)
    return {'grammar':out}

@app.post("/uploadfile/")
async def create_upload_file(file: UploadFile):
    return {"filename": file.filename}


