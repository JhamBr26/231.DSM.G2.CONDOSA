from utils.db import db
from dataclasses import dataclass

@dataclass
class Casa_Infraccion(db.Model):
    id_casa_infraccion: int
    id_infraccion: int
    id_gasto: int
    periodo: str
    fecha_infraccion: str
    importe: float
    
    id_casa_infraccion = db.Column(db.Integer, primary_key=True)
    id_infraccion = db.Column(db.Integer)
    id_gasto = db.Column(db.Integer)
    periodo = db.Column(db.String(8), nullable=False)
    fecha_infraccion = db.Column(db.Date, nullable=False)
    importe = db.Column(db.Numeric(6, 2))
    
    def __init__(self, id_infraccion, id_gasto, periodo, fecha_infraccion, importe=None):
        self.id_infraccion = id_infraccion
        self.id_gasto = id_gasto
        self.periodo = periodo
        self.fecha_infraccion = fecha_infraccion
        self.importe = importe
