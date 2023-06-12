from flask import Blueprint, request, jsonify
from models.servicio_individual import ServicioIndividual
from utils.db import db

servicio_individual = Blueprint('servicio_individual', __name__)

@servicio_individual.route('/servicio_individual', methods=['GET'])
def getServicio_Individual():
    if request.method == 'GET':
        data = {}
        servicio_individual = ServicioIndividual.query.all()
        data['servicio_individual'] = servicio_individual
        return jsonify(data)

@servicio_individual.route('/servicio_individual/add', methods=['POST'])
def addServicio_Individual():
    data = {}
    if request.method == 'POST':
        body = request.get_json()
        id_gasto = body['id_gasto']
        id_casa = body['id_casa']
        periodo = body['periodo']
        cantidad = body['cantidad']
        consumo = body['consumo']
        importe = body['importe']

        new_servicio_individual = ServicioIndividual(id_gasto, id_casa, periodo, cantidad, consumo, importe)
        db.session.add(new_servicio_individual)
        db.session.commit()
        return jsonify(data)

@servicio_individual.route('/servicio_individual/update', methods=['POST'])
def updateServicio_Individual():
    data = {}
    if request.method == 'POST':
        body = request.get_json()
        id_servicio_individual = body['id_servicio_individual']
        servicio_individual = ServicioIndividual.query.get(id_servicio_individual)

        if servicio_individual:
            servicio_individual.id_gasto = body['id_gasto']
            servicio_individual.id_casa = body['id_casa']
            servicio_individual.periodo = body['periodo']
            servicio_individual.cantidad = body['cantidad']
            servicio_individual.consumo = body['consumo']
            servicio_individual.importe = body['importe']
            db.session.commit()
            return jsonify(servicio_individual.serialize())
        else:
            data['message'] = 'Servicio_Individual not found'
            return jsonify(data), 404

@servicio_individual.route('/servicio_individual/delete', methods=['POST'])
def deleteServicio_Individual():
    data = {}
    if request.method == 'POST':
        body = request.get_json()
        id_servicio_individual = body['id_servicio_individual']
        servicio_individual = ServicioIndividual.query.get(id_servicio_individual)

        if servicio_individual:
            db.session.delete(servicio_individual)
            db.session.commit()
            return jsonify(True)
        else:
            data['message'] = 'Servicio_Individual not found'
            return jsonify(data), 404
