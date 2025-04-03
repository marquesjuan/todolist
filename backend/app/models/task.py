import enum
from base import Base, Mapped, mapped_column, ForeignKey
from sqlalchemy import Enum

class statusEnum(enum.Enum):
    concluido = "concluido"
    pendente = "pendente"

class Lista(Base):
    __tablename__ = "task"

    id: Mapped[int] = mapped_column(primary_key=True, autoincrement=True)
    idlista: Mapped[int] = mapped_column(ForeignKey("lista.id"))
    texto: Mapped[str] = mapped_column(nullable=False)
    status:Mapped[statusEnum] = mapped_column(Enum(statusEnum), nullalbre=False, default=statusEnum.pendente)