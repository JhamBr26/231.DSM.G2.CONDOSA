from flask import Blueprint, request, jsonify
from models.recibo_estado import ReciboEstado
from utils.db import db

recibo_estado = Blueprint('recibo_estado', __name__)


@recibo_estado.route('/recibo_estado', methods=['GET'])
def getReciboEstado():
    if request.method == 'GET':
        data = {}
        all_recibo = ReciboEstado.query.all()
        data["recibo_estado"] = all_recibo
        return jsonify(data)


@recibo_estado.route('/recibo_estado/add', methods=['POST'])
def addReciboEstado():
    if request.method == 'POST':
        body = request.get_json()
        id_recibo_estado = body['id_recibo_estado']
        descripcion = body['descripcion']
        new_recibo_estado = ReciboEstado(id_recibo_estado, descripcion)
        db.session.add(new_recibo_estado)
        db.session.commit()
        return jsonify(new_recibo_estado)


@recibo_estado.route('/recibo_estado/update', methods=['POST'])
def updateReciboEstado():
    body = request.get_json()
    id = body['id_recibo_estado']
    recibo_estado = ReciboEstado.query.get(id)
    if request.method == 'POST':
        recibo_estado.id_recibo_estado = body['id_recibo_estado']
        recibo_estado.descripcion = body['descripcion']
        db.session.commit()
    return jsonify(recibo_estado)


@recibo_estado.route('/recibo_estado/delete', methods=['POST'])
def deleteReciboEstado():
    body = request.get_json()
    id = body['id_recibo_estado']
    recibo_estado = ReciboEstado.query.get(id)
    if request.method == 'POST':
        db.session.delete(recibo_estado)
        db.session.commit()
    return jsonify(True)
