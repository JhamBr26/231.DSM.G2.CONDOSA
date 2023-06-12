from flask import Blueprint, request, jsonify
from models.clase_gasto import Clase_Gasto
from utils.db import db

clase_gasto = Blueprint('clase_gasto', __name__)

@clase_gasto.route('/', methods=['GET'])
def getClasesGasto():
    if request.method == 'GET':
        data = {}
        clases_gasto = Clase_Gasto.query.all()
        data["clases_gasto"] = clases_gasto
        return jsonify(data)

@clase_gasto.route('/add', methods=['POST'])
def addClasesGasto():
    data = {}
    if request.method == 'POST':
        body = request.get_json()
        descripcion = body['descripcion']

        new_clase_gasto = Clase_Gasto(descripcion)
        db.session.add(new_clase_gasto)
        db.session.commit()
        return jsonify(data)

@clase_gasto.route('/update', methods=['POST'])
def updateClasesGasto():
    data = {}
    body = request.get_json()
    id_clase_gasto = body['id_clase_gasto']
    clase_gasto = Clase_Gasto.query.get(id_clase_gasto)
    if request.method == 'POST':
        clase_gasto.descripcion = body['descripcion']
        db.session.commit()
    return jsonify(clase_gasto)

@clase_gasto.route('/delete', methods=['POST'])
def deleteClasesGasto():
    data = {}
    body = request.get_json()
    id_clase_gasto = body['id_clase_gasto']
    clase_gasto = Clase_Gasto.query.get(id_clase_gasto)
    if request.method == 'POST':
        db.session.delete(clase_gasto)
        db.session.commit()
    return jsonify(data)
