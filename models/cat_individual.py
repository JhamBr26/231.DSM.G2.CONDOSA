from utils.db import db
from dataclasses import dataclass

@dataclass
class CatIndividual(db.Model):
    id_cat_individual: int
    nombre: str
    descripcion: str
    precio: float

    id_cat_individual = db.Column(db.Integer, primary_key=True)
    nombre = db.Column(db.String(100))
    descripcion = db.Column(db.String(100))
    precio = db.Column(db.Float)

    def __init__(self, nombre, descripcion, precio):
        self.nombre = nombre
        self.descripcion = descripcion
        self.precio = precio
