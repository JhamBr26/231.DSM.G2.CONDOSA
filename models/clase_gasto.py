from utils.db import db
from dataclasses import dataclass

@dataclass
class ClaseGasto(db.Model):
    id_clase_gasto: int
    descripcion: str
    
    id_clase_gasto = db.Column(db.SmallInteger, primary_key=True)
    descripcion = db.Column(db.String(30))
    
    def __init__(self, id_clase_gasto, descripcion=None):
        self.id_clase_gasto = id_clase_gasto
        self.descripcion = descripcion
