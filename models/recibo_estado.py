from utils.db import db
from dataclasses import dataclass


@dataclass
class ReciboEstado(db.Model):
    id_recibo_estado: int
    descripcion: str

    id_recibo_estado = db.Column(db.Integer, primary_key=True)
    descripcion = db.Column(db.String(20))

    def __init__(self, id_recibo_estado, descripcion):
        self.id_recibo_estado = id_recibo_estado
        self.descripcion = descripcion
