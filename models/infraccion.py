from utils.db import db
from dataclasses import dataclass


@dataclass
class Infraccion(db.Model):
    id_infraccion:int
    codigo:str
    descripcion:str
    importe:float
    fecha_registro:str
    fecha_autorizacion: str
    
    id_infraccion=db.Column(db.Integer, primary_key=True)
    codigo=db.Column(db.String(4))
    descripcion=db.Column(db.String(150))
    importe=db.Column(db.Numeric(6,2))
    fecha_registro=db.Column(db.Date)
    fecha_autorizacion=db.Column(db.Date)
    
    def __init__(self,codigo,descripcion,importe,fecha_registro,fecha_autorizacion):
        self.codigo=codigo
        self.descripcion=descripcion
        self.importe=importe
        self.fecha_registro=fecha_registro
        self.fecha_autorizacion=fecha_autorizacion