from flask import Blueprint, request, jsonify
from models.gasto import Gasto
from models.mant_recibo_det import MantReciboDet
from models.mant_recibo import MantRecibo
from utils.db import db

frame = Blueprint('frame', __name__)


@frame.route('/mantenimiento/detalle/<int:id_casa>', methods=['GET'])
def getDetalleRecibo(id_mant_recibo):
    if request.method == 'GET':
        response = []
        data = db.session.query(MantReciboDet.id_gasto, Gasto.descripcion, MantReciboDet.importe_casa).join(
            Gasto, MantReciboDet.id_gasto == Gasto.id_gasto).filter(
            MantReciboDet.id_mant_recibo == id_mant_recibo).all()
        if data:
            for i in data:
                response.append(
                    {"id_gasto": i.id_gasto, "descripcion": i.descripcion, "importe_casa": i.importe_casa})
        else:
            response = {"message": "No se encontraron datos"}
        return jsonify(response)


@frame.route('/mantenimiento/casa/<int:id_casa>', methods=['GET'])
def getRecibo(id_casa):
    if request.method == 'GET':
        data = MantRecibo.query.filter(MantRecibo.id_casa == id_casa).all()
        return jsonify(data)
