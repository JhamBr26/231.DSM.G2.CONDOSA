from flask import Blueprint, request, jsonify
from models.det_recibo import Det_Recibo
from models.cab_recibo import Cab_Recibo  # Importar el modelo de la llave foránea
from utils.db import db

det_recibo = Blueprint('det_recibo', __name__)

@det_recibo.route('/', methods=['GET'])
def getDetallesRecibo():
    if request.method == 'GET':
        data = {}
        detalles = Det_Recibo.query.all()
        data["detalles"] = [detalle.serialize() for detalle in detalles]
        return jsonify(data)

@det_recibo.route('/add', methods=['POST'])
def addDetalleRecibo():
    data = {}
    if request.method == 'POST':
        body = request.get_json()
        id_cab_recibo = body['id_cab_recibo']
        subtotal = body['subtotal']
        
        # Validar la existencia del objeto Cab_Recibo
        cab_recibo = Cab_Recibo.query.get(id_cab_recibo)
        if not cab_recibo:
            return jsonify({'error': 'El Cab_Recibo no existe.'}), 404
        
        nuevo_detalle = Det_Recibo(id_cab_recibo=id_cab_recibo, subtotal=subtotal)
        
        db.session.add(nuevo_detalle)
        db.session.commit()
        return jsonify(data)

@det_recibo.route('/update', methods=['POST'])
def updateDetalleRecibo():
    data = {}
    body = request.get_json()
    id_det_recibo = body['id_det_recibo']
    detalle = Det_Recibo.query.get(id_det_recibo)
    
    if request.method == 'POST':
        id_cab_recibo = body['id_cab_recibo']
        subtotal = body['subtotal']
        
        # Validar la existencia del objeto Cab_Recibo
        cab_recibo = Cab_Recibo.query.get(id_cab_recibo)
        if not cab_recibo:
            return jsonify({'error': 'El Cab_Recibo no existe.'}), 404
        
        detalle.id_cab_recibo = id_cab_recibo
        detalle.subtotal = subtotal
        
        db.session.commit()
    
    return jsonify(detalle.serialize())

@det_recibo.route('/delete', methods=['POST'])
def deleteDetalleRecibo():
    data = {}
    body = request.get_json()
    id_det_recibo = body['id_det_recibo']
    detalle = Det_Recibo.query.get(id_det_recibo)
    
    if request.method == 'POST':
        db.session.delete(detalle)
        db.session.commit()
    
    return jsonify(data)