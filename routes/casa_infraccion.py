from flask import Blueprint, request, jsonify
from models.casa_infraccion import CasaInfraccion
from utils.db import db

casa_infraccion = Blueprint('casa_infraccion', __name__)

@casa_infraccion.route('/casa_infraccion', methods=['GET'])
def getCasasInfracciones():
    if request.method == 'GET':
        data = {}
        casas_infracciones = CasaInfraccion.query.all()
        data["casas_infracciones"] = [casa_infraccion.serialize()  for casa_infraccion in casas_infracciones]
        return jsonify(data)

@casa_infraccion.route('/casa_infraccion/add', methods=['POST'])
def addCasasInfracciones():
    data = {}
    if request.method == 'POST':
        body = request.get_json()
        id_infraccion = body['id_infraccion']
        id_gasto = body['id_gasto']
        periodo = body['periodo']
        fecha_infraccion = body['fecha_infraccion']
        importe = body['importe']

        new_casa_infraccion = CasaInfraccion(id_infraccion, id_gasto, periodo, fecha_infraccion, importe)
        db.session.add(new_casa_infraccion)
        db.session.commit()
        return jsonify(data)

@casa_infraccion.route('/casa_infraccion/update', methods=['POST'])
def updateCasasInfracciones():
    data = {}
    body = request.get_json()
    id_casa_infraccion = body['id_casa_infraccion']
    casa_infraccion = CasaInfraccion.query.get(id_casa_infraccion)
    if request.method == 'POST':
        casa_infraccion.id_infraccion = body['id_infraccion']
        casa_infraccion.id_gasto = body['id_gasto']
        casa_infraccion.periodo = body['periodo']
        casa_infraccion.fecha_infraccion = body['fecha_infraccion']
        casa_infraccion.importe = body['importe']
        db.session.commit()
    return jsonify(casa_infraccion)

@casa_infraccion.route('/casa_infraccion/delete', methods=['POST'])
def deleteCasasInfracciones():
    data = {}
    body = request.get_json()
    id_casa_infraccion = body['id_casa_infraccion']
    casa_infraccion = CasaInfraccion.query.get(id_casa_infraccion)
    if request.method=='POST':
        db.session.delete(casa_infraccion)
        db.session.commit()
    return jsonify(data)
