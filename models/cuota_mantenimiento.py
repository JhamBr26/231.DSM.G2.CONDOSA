from utils.db import db
from dataclasses import dataclass


@dataclass
class Cuota_Mantenimiento(db.Model):
    id_cuota_mantenimiento: int
    id_det_recibo: int
    id_cat_mantenimiento: int
    importe: float

    id_cuota_mantenimiento = db.Column(db.Integer, primary_key=True)
    id_det_recibo = db.Column(db.Integer)
    id_cat_mantenimiento = db.Column(db.Integer)
    importe = db.Column(db.Float)

    def __init__(self, idRecibo, idCategoria, importe):
        self.id_det_recibo = idRecibo
        self.id_cat_mantenimiento = idCategoria
        self.importe = importe
