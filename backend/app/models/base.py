from sqlalchemy import ForeignKey, String, Integer, Column
from sqlalchemy.orm import DeclarativeBase, Mapped, mapped_column

class Base(DeclarativeBase):
    pass