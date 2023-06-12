from utils.db import db
from dataclasses import dataclass


@dataclass
class Mora(db.Model):
    id_mora: int
    id_mant_recibo: int
    dias_vencidos: int
    importe: float

    id_mora = db.Column(db.Integer, primary_key=True)
    id_mant_recibo = db.Column(db.Integer)
    dias_vencidos = db.Column(db.Integer)
    importe = db.Column(db.Float)

    def __init__(self, id_mora, id_mant_recibo, dias_vencidos, importe):
        self.id_mora = id_mora
        self.id_mant_recibo = id_mant_recibo
        self.dias_vencidos = dias_vencidos
        self.importe = importe
