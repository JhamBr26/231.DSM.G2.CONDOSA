from flask import Blueprint, request, jsonify
from models.casa_infraccion import Casa_Infraccion
from utils.db import db

casa_infraccion = Blueprint('casa_infraccion', __name__)

@casa_infraccion.route('/', methods=['GET'])
def getCasasInfracciones():
    if request.method == 'GET':
        data = {}
        casas_infracciones = Casa_Infraccion.query.all()
        data["casas_infracciones"] = casas_infracciones
        return jsonify(data)

@casa_infraccion.route('/add', methods=['POST'])
def addCasasInfracciones():
    data = {}
    if request.method == 'POST':
        body = request.get_json()
        id_infraccion = body['id_infraccion']
        id_gasto = body['id_gasto']
        periodo = body['periodo']
        fecha_infraccion = body['fecha_infraccion']
        importe = body['importe']

        new_casa_infraccion = Casa_Infraccion(id_infraccion, id_gasto, periodo, fecha_infraccion, importe)
        db.session.add(new_casa_infraccion)
        db.session.commit()
        return jsonify(data)

@casa_infraccion.route('/update', methods=['POST'])
def updateCasasInfracciones():
    data = {}
    body = request.get_json()
    id_casa_infraccion = body['id_casa_infraccion']
    casa_infraccion = Casa_Infraccion.query.get(id_casa_infraccion)
    if request.method == 'POST':
        casa_infraccion.id_infraccion = body['id_infraccion']
        casa_infraccion.id_gasto = body['id_gasto']
        casa_infraccion.periodo = body['periodo']
        casa_infraccion.fecha_infraccion = body['fecha_infraccion']
        casa_infraccion.importe = body['importe']
        db.session.commit()
    return jsonify(casa_infraccion)

@casa_infraccion.route('/delete', methods=['POST'])
def deleteCasasInfracciones():
    data = {}
    body = request.get_json()
    id_casa_infraccion = body['id_casa_infraccion']
    casa_infraccion = Casa_Infraccion.query.get(id_casa_infraccion)
    if request.method=='POST':
        db.session.delete(casa_infraccion)
        db.session.commit()
    return jsonify(data)