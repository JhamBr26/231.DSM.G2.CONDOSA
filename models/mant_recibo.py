from utils.db import db
from dataclasses import dataclass


@dataclass
class MantRecibo(db.Model):
    id_mant_recibo: int
    id_casa: int
    n_recibo: str
    periodo: str
    fecha_emision: str
    fecha_vencimiento: str
    importe: float
    ajuste: float
    observacion: str
    id_recibo_estado: int

    id_mant_recibo = db.Column(db.Integer, primary_key=True)
    id_casa = db.Column(db.Integer)
    n_recibo = db.Column(db.String(160))
    periodo = db.Column(db.String(160))
    fecha_emision = db.Column(db.String(50))
    fecha_vencimiento = db.Column(db.String(50))
    importe = db.Column(db.Float)
    ajuste = db.Column(db.Float)
    observacion = db.Column(db.String(160))
    id_recibo_estado = db.Column(db.Integer)

    def __init__(self, id_mant_recibo, id_casa, n_recibo, periodo, fecha_emision, fecha_vencimiento, importe, ajuste, observacion, id_recibo_estado):
        self.id_mant_recibo = id_mant_recibo
        self.id_casa = id_casa
        self.n_recibo = n_recibo
        self.fecha_emision = fecha_emision
        self.fecha_vencimiento = fecha_vencimiento
        self.importe = importe
        self.ajuste = ajuste
        self.observacion = observacion
        self.id_recibo_estado = id_recibo_estado
        self.periodo = periodo
