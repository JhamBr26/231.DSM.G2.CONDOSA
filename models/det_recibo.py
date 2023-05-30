from utils.db import db
from dataclasses import dataclass


@dataclass
class Det_Recibo(db.Model):
    id_det_recibo: int
    id_cab_recibo: int
    subtotal: float

    id_det_recibo = db.Column(db.Integer, primary_key=True)
    id_cab_recibo = db.Column(db.Integer)
    subtotal = db.Column(db.Float)

    def __init__(self, idRecibo, subtotal):
        self.id_cab_recibo = idRecibo
        self.subtotal = subtotal
