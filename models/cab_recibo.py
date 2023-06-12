from utils.db import db
from dataclasses import dataclass
from datetime import datetime


@dataclass
class Cab_Recibo(db.Model):
    id_casa_habitacion: int
    id_cab_recibo: int
    periodo: str
    ruc: str
    n_recibo: str
    fecha_emision: datetime
    fecha_vencimiento: datetime
    ajuste: float
    total: float
    mensaje: str
    estado: str

    id_casa_habitacion = db.Column(db.Integer, primary_key=True)
    id_cab_recibo = db.Column(db.Integer)
    periodo = db.Column(db.Integer)
    ruc = db.Column(db.String(100))
    n_recibo = db.Column(db.String(100))
    fecha_emision = db.Column(db.DateTime)
    fecha_vencimiento = db.Column(db.DateTime)
    ajuste = db.Column(db.Float)
    total = db.Column(db.Float)
    mensaje = db.Column(db.String(100))
    estado = db.Column(db.String(100))

    def __init__(self, id_cab_recibo, periodo, ruc, n_recibo, fecha_emision, fecha_vencimiento, ajusto, total, mensaje, estado):
        self.id_cab_recibo = id_cab_recibo
        self.periodo = periodo
        self.ruc = ruc
        self.n_recibo = n_recibo
        self.fecha_emision = fecha_emision
        self.fecha_vencimiento = fecha_vencimiento
        self.ajusto = ajusto
        self.total = total
        self.mensaje = mensaje
        self.estado = estado
