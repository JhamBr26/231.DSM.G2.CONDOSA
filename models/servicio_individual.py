from utils.db import db
from dataclasses import dataclass


@dataclass
class ServicioIndividual(db.Model):
    id_servicio_individual: int
    id_gasto: int
    id_casa: int
    periodo: str
    cantidad: float
    consumo: float
    importe: float

    id_servicio_individual = db.Column(db.Integer, primary_key=True)
    id_gasto = db.Column(db.Integer)
    id_casa = db.Column(db.Integer)
    periodo = db.Column(db.String(8))
    cantidad = db.Column(db.Float)
    consumo = db.Column(db.Float)
    importe = db.Column(db.Float)

    def __init__(self, id_gasto, id_casa, periodo, cantidad, consumo, importe):
        self.id_gasto = id_gasto
        self.id_casa = id_casa
        self.periodo = periodo
        self.cantidad = cantidad
        self.consumo = consumo
        self.importe = importe