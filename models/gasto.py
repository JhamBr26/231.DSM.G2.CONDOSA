from utils.db import db
from dataclasses import dataclass


@dataclass
class Gasto(db.Model):
    id_gasto: int
    id_tipo_gasto: int
    descripcion: str

    id_gasto = db.Column(db.Integer, primary_key=True)
    id_tipo_gasto = db.Column(db.Integer, db.ForeignKey('tipo_gasto.id_tipo_gasto'))
    descripcion = db.Column(db.String(100))

    def __init__(self, id_tipo_gasto, descripcion):
        self.id_tipo_gasto = id_tipo_gasto
        self.descripcion = descripcion
