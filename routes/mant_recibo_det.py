from flask import Blueprint, request, jsonify
from models.mant_recibo_det import MantReciboDet
from utils.db import db

mant_recibo_det = Blueprint('mant_recibo_det', __name__)

@mant_recibo_det.route('/mant_recibo_det', methods=['GET'])
def getMantReciboDet():
    if request.method == 'GET':
        data = {}
        mant_recibo_det = MantReciboDet.query.all()
        data['mant_recibo_det'] = mant_recibo_det
        return jsonify(data)

@mant_recibo_det.route('/mant_recibo_det/add', methods=['POST'])
def addMantReciboDet():
    data = {}
    if request.method == 'POST':
        body = request.get_json()
        id_mant_recibo = body['id_mant_recibo']
        id_gasto = body['id_gasto']
        importe_predio = body['importe_predio']
        importe_casa = body['importe_casa']

        new_mant_recibo_det = MantReciboDet(id_mant_recibo_det, id_mant_recibo, id_gasto, importe_predio, importe_casa)
        db.session.add(new_mant_recibo_det)
        db.session.commit()
        return jsonify(data)

@mant_recibo_det.route('/mant_recibo_det/update', methods=['POST'])
def updateMantReciboDet():
    data = {}
    if request.method == 'POST':
        body = request.get_json()
        id_mant_recibo_det = body['id_mant_recibo_det']
        mant_recibo_det = MantReciboDet.query.get(id_mant_recibo_det)

        if mant_recibo_det:
            mant_recibo_det.id_mant_recibo = body['id_mant_recibo']
            mant_recibo_det.id_gasto = body['id_gasto']
            mant_recibo_det.importe_predio = body['importe_predio']
            mant_recibo_det.importe_casa = body['importe_casa']
            db.session.commit()
            return jsonify(mant_recibo_det)
        else:
            data['message'] = 'Mant_Recibo_Det not found'
            return jsonify(data), 404

@mant_recibo_det.route('/mant_recibo_det/delete', methods=['POST'])
def deleteMantReciboDet():
    data = {}
    if request.method == 'POST':
        body = request.get_json()
        id_mant_recibo_det = body['id_mant_recibo_det']
        mant_recibo_det = MantReciboDet.query.get(id_mant_recibo_det)

        if mant_recibo_det:
            db.session.delete(mant_recibo_det)
            db.session.commit()
            return jsonify(True)
        else:
            data['message'] = 'Mant_Recibo_Det not found'
            return jsonify(data), 404
