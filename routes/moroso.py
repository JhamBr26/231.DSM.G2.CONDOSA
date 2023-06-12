from flask import Blueprint, request, jsonify
from models.moroso import Moroso
from models.cab_recibo import CabRecibo  # Importar el modelo de la llave foránea id_cab_recibo
from utils.db import db

moroso = Blueprint('moroso', __name__)

@moroso.route('/moroso', methods=['GET'])
def getMorosos():
    if request.method == 'GET':
        data = {}
        morosos = Moroso.query.all()
        data["morosos"] = [moroso.serialize() for moroso in morosos]
        return jsonify(data)

@moroso.route('/moroso/add', methods=['POST'])
def addMoroso():
    data = {}
    if request.method == 'POST':
        body = request.get_json()
        id_cab_recibo = body['id_cab_recibo']
        dias_vencidos = body['dias_vencidos']
        total_mora = body['total_mora']
        
        # Validar la existencia del objeto Cab_Recibo
        cab_recibo = CabRecibo.query.get(id_cab_recibo)
        if not cab_recibo:
            return jsonify({'error': 'El Cab_Recibo no existe.'}), 404
        
        nuevo_moroso = Moroso(id_cab_recibo=id_cab_recibo, dias_vencidos=dias_vencidos, total_mora=total_mora)
        
        db.session.add(nuevo_moroso)
        db.session.commit()
        return jsonify(data)

@moroso.route('/moroso/update', methods=['POST'])
def updateMoroso():
    data = {}
    body = request.get_json()
    id_mora = body['id_mora']
    moroso = Moroso.query.get(id_mora)
    
    if request.method == 'POST':
        id_cab_recibo = body['id_cab_recibo']
        dias_vencidos = body['dias_vencidos']
        total_mora = body['total_mora']
        
        # Validar la existencia del objeto Cab_Recibo
        cab_recibo = CabRecibo.query.get(id_cab_recibo)
        if not cab_recibo:
            return jsonify({'error': 'El Cab_Recibo no existe.'}), 404
        
        moroso.id_cab_recibo = id_cab_recibo
        moroso.dias_vencidos = dias_vencidos
        moroso.total_mora = total_mora
        
        db.session.commit()
    
    return jsonify(moroso.serialize())

@moroso.route('/moroso/delete', methods=['POST'])
def deleteMoroso():
    data = {}
    body = request.get_json()
    id_mora = body['id_mora']
    moroso = Moroso.query.get(id_mora)
    
    if request.method == 'POST':
        db.session.delete(moroso)
        db.session.commit()
    
    return jsonify(data)
