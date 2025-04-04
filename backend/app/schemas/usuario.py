from pydantic import BaseModel, EmailStr
from typing import Optional


class UsuarioCreate(BaseModel):
    nome: str
    email: EmailStr
    senha: str


class UsuarioResponse(BaseModel):
    id: int
    nome: str
    email: str


class LoginSchema(BaseModel):
    email: EmailStr
    senha: str


class AtualizarUsuarioSchema(BaseModel):
    nome: Optional[str] = None
    email: Optional[EmailStr] = None


class TrocarSenhaSchema(BaseModel):
    senha_atual: str
    nova_senha: str
