from utils.db import db
from dataclasses import dataclass


@dataclass
class Cat_Mantenimiento(db.Model):
    id_cat_mantenimiento: int
    nombre: str
    descripcion: str
    monto_total: float

    id_cat_mantenimiento = db.Column(db.Integer, primary_key=True)
    nombre = db.Column(db.String(100))
    descripcion = db.Column(db.String(100))
    monto_total = db.Column(db.Float)

    def __init__(self, nombre, descripcion, monto):
        self.nombre = nombre
        self.descripcion = descripcion
        self.monto_total = monto
