from flask import Blueprint, request, jsonify
from models.cuota_mantenimiento import CuotaMantenimiento
from models.det_recibo import DetRecibo  # Importar el modelo de la llave foránea id_det_recibo
from models.cat_mantenimiento import CatMantenimiento  # Importar el modelo de la llave foránea id_cat_mantenimiento
from utils.db import db

cuota_mantenimiento = Blueprint('cuota_mantenimiento', __name__)

@cuota_mantenimiento.route('/cuota_mantenimiento', methods=['GET'])
def getCuotasMantenimiento():
    if request.method == 'GET':
        data = {}
        cuotas = CuotaMantenimiento.query.all()
        data["cuotas"] = [cuota.serialize() for cuota in cuotas]
        return jsonify(data)

@cuota_mantenimiento.route('/cuota_mantenimiento/add', methods=['POST'])
def addCuotaMantenimiento():
    data = {}
    if request.method == 'POST':
        body = request.get_json()
        id_det_recibo = body['id_det_recibo']
        id_cat_mantenimiento = body['id_cat_mantenimiento']
        importe = body['importe']
        
        # Validar la existencia de los objetos Det_Recibo y Cat_Mantenimiento
        det_recibo = DetRecibo.query.get(id_det_recibo)
        cat_mantenimiento = CatMantenimiento.query.get(id_cat_mantenimiento)
        if not det_recibo or not cat_mantenimiento:
            return jsonify({'error': 'El Det_Recibo o Cat_Mantenimiento no existe.'}), 404
        
        nueva_cuota = CuotaMantenimiento(id_det_recibo=id_det_recibo, id_cat_mantenimiento=id_cat_mantenimiento,
                                          importe=importe)
        
        db.session.add(nueva_cuota)
        db.session.commit()
        return jsonify(data)

@cuota_mantenimiento.route('/cuota_mantenimiento/update', methods=['POST'])
def updateCuotaMantenimiento():
    data = {}
    body = request.get_json()
    id_cuota_mantenimiento = body['id_cuota_mantenimiento']
    cuota = CuotaMantenimiento.query.get(id_cuota_mantenimiento)
    
    if request.method == 'POST':
        id_det_recibo = body['id_det_recibo']
        id_cat_mantenimiento = body['id_cat_mantenimiento']
        importe = body['importe']
        
        # Validar la existencia de los objetos Det_Recibo y Cat_Mantenimiento
        det_recibo = DetRecibo.query.get(id_det_recibo)
        cat_mantenimiento = CatMantenimiento.query.get(id_cat_mantenimiento)
        if not det_recibo or not cat_mantenimiento:
            return jsonify({'error': 'El Det_Recibo o Cat_Mantenimiento no existe.'}), 404
        
        cuota.id_det_recibo = id_det_recibo
        cuota.id_cat_mantenimiento = id_cat_mantenimiento
        cuota.importe = importe
        
        db.session.commit()
    
    return jsonify(cuota.serialize())

@cuota_mantenimiento.route('/cuota_mantenimiento/delete', methods=['POST'])
def deleteCuotaMantenimiento():
    data = {}
    body = request.get_json()
    id_cuota_mantenimiento = body['id_cuota_mantenimiento']
    cuota = CuotaMantenimiento.query.get(id_cuota_mantenimiento)
    
    if request.method == 'POST':
        db.session.delete(cuota)
        db.session.commit()
    
    return jsonify(data)
