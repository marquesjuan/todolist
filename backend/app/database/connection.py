from sqlalchemy import create_engine
import pymysql

#analisar segurança....
engine = create_engine("mysql+pymysql://root:5912@mysqlteste:3306/todolist")

if(engine):
    print(engine)
else:
    print("Erro na conexão com o DB")