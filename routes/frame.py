from flask import Blueprint, request, jsonify
from models.gasto import Gasto
from models.mant_recibo_det import MantReciboDet
from models.mant_recibo import MantRecibo
from utils.db import db
from sqlalchemy import text

frame = Blueprint('frame', __name__)


@frame.route('/mantenimiento/persona/<int:id_persona>', methods=['GET'])
def getUsuario(id_persona):
    sql = text(f"""select  pe.id_persona, pe.nombres, pe.apellido_paterno, pe.apellido_materno, c.numero, c.piso, p.descripcion 
                from public.persona pe
                join public.inquilino i on pe.id_persona = i.id_persona
                join public.casa c on i.id_casa = c.id_casa
                join public.predio p on c.id_predio = p.id_predio
                where pe.id_persona = {id_persona} and c.id_casa = 2""")
    if request.method == 'GET':
        response = {}
        data = db.session.execute(sql).fetchall()
        if data:
            for i in data:
                response = {"id_persona": i.id_persona, "nombres": i.nombres, "apellido_paterno": i.apellido_paterno,
                            "apellido_materno": i.apellido_materno, "numero": i.numero, "piso": i.piso, "descripcion": i.descripcion}
        else:
            response = {"message": "No se encontraron datos"}
        return jsonify(response)


@frame.route('/mantenimiento/detalle/<int:id_mant_recibo>', methods=['GET'])
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
def getRecibos(id_casa):
    if request.method == 'GET':
        data = MantRecibo.query.filter(
            MantRecibo.id_casa == id_casa).all()
        return jsonify(data)


@frame.route('/mantenimiento/casa/pagado/<int:id_casa>', methods=['GET'])
def getRecibosPagados(id_casa):
    if request.method == 'GET':
        data = MantRecibo.query.filter(
            MantRecibo.id_casa == id_casa).filter(MantRecibo.id_recibo_estado == 2).all()
        return jsonify(data)


@frame.route('/mantenimiento/casa/pendiente/<int:id_casa>', methods=['GET'])
def getRecibosPendientes(id_casa):
    if request.method == 'GET':
        data = MantRecibo.query.filter(
            MantRecibo.id_casa == id_casa).filter(MantRecibo.id_recibo_estado == 1).all()
        return jsonify(data)


@frame.route('/mantenimiento/periodos/<int:id_casa>', methods=['GET'])
def getPeriodos(id_casa):
    sql = text(
        f"""select id_mant_recibo, periodo, importe from mant_recibo where id_casa = {id_casa}""")
    if request.method == 'GET':
        response = []
        data = db.session.execute(sql).fetchall()
        if data:
            for i in data:
                response.append({"id_mant_recibo": i.id_mant_recibo,
                                "periodo": i.periodo, "importe": i.importe})
        else:
            response = {"message": "No se encontraron datos"}
        return jsonify(response)
