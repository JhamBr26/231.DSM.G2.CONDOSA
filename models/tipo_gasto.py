from utils.db import db
from dataclasses import dataclass

@dataclass
class Tipo_Gasto(db.Model):
    id_tipo_gasto: int
    id_clase_gasto: int
    descripcion: str
    precio: float
    
    id_tipo_gasto = db.Column(db.Integer, primary_key=True)
    id_clase_gasto = db.Column(db.Integer)
    descripcion = db.Column(db.String)
    precio = db.Column(db.Numeric(6, 2))
    
    def __init__(self, id_tipo_gasto, id_clase_gasto, descripcion, precio):
        self.id_tipo_gasto = id_tipo_gasto
        self.id_clase_gasto = id_clase_gasto
        self.descripcion = descripcion
        self.precio = precio
