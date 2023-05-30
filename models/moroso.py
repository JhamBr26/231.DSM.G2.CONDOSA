from utils.db import db
from dataclasses import dataclass


@dataclass
class Moroso(db.Model):
    id_mora: int
    id_cab_recibo: int
    dias_vencidos: int
    total_mora: float

    id_mora = db.Column(db.Integer, primary_key=True)
    id_cab_recibo = db.Column(db.Integer)
    dias_vencidos = db.Column(db.Integer)
    total_mora = db.Column(db.Float)

    def __init__(self, idRecibo, diasVencidos, totalMora):
        self.id_cab_recibo = idRecibo
        self.dias_vencidos = diasVencidos
        self.dias_vencidos = diasVencidos
        self.total_mora = totalMora
