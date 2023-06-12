from utils.db import db
from dataclasses import dataclass

@dataclass
class Casa(db.Model):
    id_casa_habitacion:int
    id_predio:int
    id_estado:int
    id_predio_mdu:int
    numero:int
    piso:str
    area:float
    participacion:float
    
    id_casa_habitacion=db.Column(db.Integer, primary_key=True)
    id_predio=db.Column(db.Integer)
    id_estado=db.Column(db.Integer)
    id_predio_mdu=db.Column(db.Integer)
    numero=db.Column(db.Integer)   
    piso=db.Column(db.Integer)
    area=db.Column(db.Numeric)
    participacion=db.Column(db.Numeric(6,2))

    
    def __init__(self,id_predio,id_estado,id_predio_mdu,numero,piso,area,participacion):
        self.id_predio=id_predio
        self.id_estado=id_estado
        self.id_predio_mdu=id_predio_mdu
        self.numero=numero
        self.piso=piso
        self.area=area
        self.participacion=participacion