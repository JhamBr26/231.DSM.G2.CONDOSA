from utils.db import db
from dataclasses import dataclass


@dataclass
class MantReciboDet(db.Model):
    id_mant_recibo_det: int
    id_mant_recibo: int
    id_gasto: int
    importe_casa: float

    id_mant_recibo_det = db.Column(db.Integer, primary_key=True)
    id_mant_recibo = db.Column(
        db.Integer, db.ForeignKey('mant_recibo.id_mant_recibo'))
    id_gasto = db.Column(db.Integer, db.ForeignKey('gasto.id_gasto'))
    importe_casa = db.Column(db.Float)

    def __init__(self, id_mant_recibo, id_gasto, importe_casa):
        self.id_mant_recibo = id_mant_recibo
        self.id_gasto = id_gasto
        self.importe_casa = importe_casa
