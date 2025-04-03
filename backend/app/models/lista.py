from base import Base, Mapped, mapped_column, ForeignKey
from datetime import date

class Lista(Base):
    __tablename__= "lista"

    id: Mapped[int] = mapped_column(primary_key=True,autoincrement=True)
    idusuario: Mapped[int] = mapped_column(ForeignKey("usuario.id"))
    datalista: Mapped[date] = mapped_column(nullable=False)