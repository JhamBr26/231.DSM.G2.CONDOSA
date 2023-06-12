from flask import Blueprint, request, jsonify
from models.gasto import Gasto
from utils.db import db

gasto = Blueprint('gasto', __name__)

@gasto.route('/', methods=['GET'])
def getGastos():
    if request.method == 'GET':
        data = {}
        gastos = Gasto.query.all()
        data['gastos'] = [g.serialize() for g in gastos]
        return jsonify(data)

@gasto.route('/add', methods=['POST'])
def addGasto():
    data = {}
    if request.method == 'POST':
        body = request.get_json()
        id_tipo_gasto = body['id_tipo_gasto']
        descripcion = body['descripcion']

        new_gasto = Gasto(id_tipo_gasto, descripcion)
        db.session.add(new_gasto)
        db.session.commit()
        return jsonify(data)

@gasto.route('/update', methods=['POST'])
def updateGasto():
    data = {}
    if request.method == 'POST':
        body = request.get_json()
        id_gasto = body['id_gasto']
        gasto = Gasto.query.get(id_gasto)

        if gasto:
            gasto.id_tipo_gasto = body['id_tipo_gasto']
            gasto.descripcion = body['descripcion']
            db.session.commit()
            return jsonify(gasto.serialize())
        else:
            data['message'] = 'Gasto not found'
            return jsonify(data), 404

@gasto.route('/delete', methods=['POST'])
def deleteGasto():
    data = {}
    if request.method == 'POST':
        body = request.get_json()
        id_gasto = body['id_gasto']
        gasto = Gasto.query.get(id_gasto)

        if gasto:
            db.session.delete(gasto)
            db.session.commit()
            return jsonify(True)
        else:
            data['message'] = 'Gasto not found'
            return jsonify(data), 404