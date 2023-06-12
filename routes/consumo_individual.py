from flask import Blueprint, request, jsonify
from models.consumo_individual import ConsumoIndividual
from models.det_recibo import DetRecibo  # Importar el modelo de la llave foránea id_det_recibo
from models.cat_individual import CatIndividual  # Importar el modelo de la llave foránea id_cat_individual
from utils.db import db

consumo_individual = Blueprint('consumo_individual', __name__)

@consumo_individual.route('/consumo_individual', methods=['GET'])
def getConsumosIndividuales():
    if request.method == 'GET':
        data = {}
        consumos = ConsumoIndividual.query.all()
        data["consumos"] = [consumo.serialize() for consumo in consumos]
        return jsonify(data)

@consumo_individual.route('/consumo_individual/add', methods=['POST'])
def addConsumoIndividual():
    data = {}
    if request.method == 'POST':
        body = request.get_json()
        id_det_recibo = body['id_det_recibo']
        id_cat_individual = body['id_cat_individual']
        cantidad = body['cantidad']
        importe = body['importe']
        
        # Validar la existencia de los objetos Det_Recibo y Cat_Individual
        det_recibo = DetRecibo.query.get(id_det_recibo)
        cat_individual = CatIndividual.query.get(id_cat_individual)
        if not det_recibo or not cat_individual:
            return jsonify({'error': 'El Det_Recibo o Cat_Individual no existe.'}), 404
        
        nuevo_consumo = ConsumoIndividual(id_det_recibo=id_det_recibo, id_cat_individual=id_cat_individual,
                                           cantidad=cantidad, importe=importe)
        
        db.session.add(nuevo_consumo)
        db.session.commit()
        return jsonify(data)

@consumo_individual.route('/consumo_individual/update', methods=['POST'])
def updateConsumoIndividual():
    data = {}
    body = request.get_json()
    id_consumo_individual = body['id_consumo_individual']
    consumo = ConsumoIndividual.query.get(id_consumo_individual)
    
    if request.method == 'POST':
        id_det_recibo = body['id_det_recibo']
        id_cat_individual = body['id_cat_individual']
        cantidad = body['cantidad']
        importe = body['importe']
        
        # Validar la existencia de los objetos Det_Recibo y Cat_Individual
        det_recibo = DetRecibo.query.get(id_det_recibo)
        cat_individual = CatIndividual.query.get(id_cat_individual)
        if not det_recibo or not cat_individual:
            return jsonify({'error': 'El Det_Recibo o Cat_Individual no existe.'}), 404
        
        consumo.id_det_recibo = id_det_recibo
        consumo.id_cat_individual = id_cat_individual
        consumo.cantidad = cantidad
        consumo.importe = importe
        
        db.session.commit()
    
    return jsonify(consumo.serialize())

@consumo_individual.route('/consumo_individual/delete', methods=['POST'])
def deleteConsumoIndividual():
    data = {}
    body = request.get_json()
    id_consumo_individual = body['id_consumo_individual']
    consumo = ConsumoIndividual.query.get(id_consumo_individual)
    
    if request.method == 'POST':
        db.session.delete(consumo)
        db.session.commit()
    
    return jsonify(data)
