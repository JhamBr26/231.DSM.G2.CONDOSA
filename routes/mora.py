from flask import Blueprint, request, jsonify
from models.mora import Mora
from utils.db import db

mora = Blueprint('mora', __name__)


@mora.route('/mora', methods=['GET'])
def getMora():
    if request.method == 'GET':
        data = {}
        all_cat_ind = Mora.query.all()
        data["mora"] = all_cat_ind
        return jsonify(data)


@mora.route('/mora/add', methods=['POST'])
def addMora():
    if request.method == 'POST':
        body = request.get_json()
        id_mora = body['id_mora']
        id_mant_recibo = body['id_mant_recibo']
        dias_vencidos = body['dias_vencidos']
        importe = body['importe']
        new_mora = Mora(id_mora, id_mant_recibo, dias_vencidos, importe)
        db.session.add(new_mora)
        db.session.commit()
        return jsonify(new_mora)


@mora.route('/mora/update', methods=['POST'])
def updateMora():
    body = request.get_json()
    id = body['id_mora']
    mora = Mora.query.get(id)
    if request.method == 'POST':
        mora.id_mora = body['id_mora']
        mora.id_mant_recibo = body['id_mant_recibo']
        mora.dias_vencidos = body['dias_vencidos']
        mora.importe = body['importe']
        db.session.commit()
    return jsonify(mora)


@mora.route('/mora/delete', methods=['POST'])
def deleteMora():
    body = request.get_json()
    id = body['id_mora']
    mora = Mora.query.get(id)
    if request.method == 'POST':
        db.session.delete(mora)
        db.session.commit()
    return jsonify(True)
