from utils.db import db
from dataclasses import dataclass


@dataclass
class ConsumoIndividual(db.Model):
    id_consumo_individual: int
    id_det_recibo: int
    id_cat_individual: int
    cantidad: int
    importe: float

    id_consumo_individual = db.Column(db.Integer, primary_key=True)
    id_det_recibo = db.Column(db.Integer)
    id_cat_individual = db.Column(db.Integer)
    cantidad = db.Column(db.Integer)
    importe = db.Column(db.Float)

    def __init__(self, idRecibo, idCategoria, cantidad, importe):
        self.id_det_recibo = idRecibo
        self.id_cat_individual = idCategoria
        self.cantidad = cantidad
        self.importe = importe
