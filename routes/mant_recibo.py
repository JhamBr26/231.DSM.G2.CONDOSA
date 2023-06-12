from flask import Blueprint, request, jsonify
from models.mant_recibo import MantRecibo
from utils.db import db

mant_recibo = Blueprint('mant_recibo', __name__)


@mant_recibo.route('/mant_recibo', methods=['GET'])
def getmant_recibo():
    if request.method == 'GET':
        data = {}
        all_cat_ind = MantRecibo.query.all()
        data["mant_recibo"] = all_cat_ind
        return jsonify(data)


@mant_recibo.route('/mant_recibo/add', methods=['POST'])
def addmant_recibo():
    if request.method == 'POST':
        body = request.get_json()
        id_casa = body['id_casa']
        n_recibo = body['n_recibo']
        fecha_emision = body['fecha_emision']
        fecha_vencimiento = body['fecha_vencimiento']
        importe = body['importe']
        ajuste = body['ajuste']
        observacion = body['observacion']
        id_recibo_estado = body['id_recibo_estado']
        periodo = body['periodo']
        new_mant_recibo = MantRecibo(id_casa, n_recibo, periodo, fecha_emision,
                                     fecha_vencimiento, importe, ajuste, observacion, id_recibo_estado)
        db.session.add(new_mant_recibo)
        db.session.commit()
        return jsonify(new_mant_recibo)


@mant_recibo.route('/mant_recibo/update', methods=['POST'])
def updatemant_recibo():
    body = request.get_json()
    id = body['id_mant_recibo']
    mant_recibo = MantRecibo.query.get(id)
    if request.method == 'POST':
        mant_recibo.id_mant_recibo = body['id_mant_recibo']
        mant_recibo.id_casa = body['id_casa']
        mant_recibo.n_recibo = body['n_recibo']
        mant_recibo.fecha_emision = body['fecha_emision']
        mant_recibo.fecha_vencimiento = body['fecha_vencimiento']
        mant_recibo.importe = body['importe']
        mant_recibo.ajuste = body['ajuste']
        mant_recibo.observacion = body['observacion']
        mant_recibo.id_recibo_estado = body['id_recibo_estado']
        mant_recibo.periodo = body['periodo']
        db.session.commit()
    return jsonify(mant_recibo)


@mant_recibo.route('/mant_recibo/delete', methods=['POST'])
def deletemant_recibo():
    body = request.get_json()
    id = body['id_mant_recibo']
    mant_recibo = MantRecibo.query.get(id)
    if request.method == 'POST':
        db.session.delete(mant_recibo)
        db.session.commit()
    return jsonify(True)
