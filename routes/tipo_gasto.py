from flask import Blueprint, request, jsonify
from models.tipo_gasto import TipoGasto
from utils.db import db

tipo_gasto = Blueprint('tipo_gasto', __name__)

@tipo_gasto.route('/tipo_gasto', methods=['GET'])
def getTiposGasto():
    if request.method == 'GET':
        data = {}
        tipos_gasto = TipoGasto.query.all()
        data["tipos_gasto"] = tipos_gasto
        return jsonify(data)

@tipo_gasto.route('/tipo_gasto/add', methods=['POST'])
def addTiposGasto():
    data = {}
    if request.method == 'POST':
        body = request.get_json()
        id_clase_gasto = body['id_clase_gasto']
        descripcion = body['descripcion']
        precio = body['precio']

        new_tipo_gasto = TipoGasto(id_clase_gasto, descripcion, precio)
        db.session.add(new_tipo_gasto)
        db.session.commit()
        return jsonify(data)

@tipo_gasto.route('/tipo_gasto/update', methods=['POST'])
def updateTiposGasto():
    data = {}
    body = request.get_json()
    id_tipo_gasto = body['id_tipo_gasto']
    tipo_gasto = TipoGasto.query.get(id_tipo_gasto)
    if request.method == 'POST':
        tipo_gasto.id_clase_gasto = body['id_clase_gasto']
        tipo_gasto.descripcion = body['descripcion']
        tipo_gasto.precio = body['precio']
        db.session.commit()
    return jsonify(tipo_gasto)

@tipo_gasto.route('/tipo_gasto/delete', methods=['POST'])
def deleteTiposGasto():
    data = {}
    body = request.get_json()
    id_tipo_gasto = body['id_tipo_gasto']
    tipo_gasto = TipoGasto.query.get(id_tipo_gasto)
    if request.method == 'POST':
        db.session.delete(tipo_gasto)
        db.session.commit()
    return jsonify(data)
