from flask import Blueprint, request, jsonify
from models.gasto import Gasto
from models.mant_recibo_det import MantReciboDet
from utils.db import db

frame = Blueprint('frame', __name__)


@frame.route('/seccion/<int:id_mant_recibo>', methods=['GET'])
def getSeccion1(id_mant_recibo):
    if request.method == 'GET':
        data = {}

        gasto1 = Gasto.query.get(1)
        gasto2 = Gasto.query.get(2)

        MantReciboDet1 = MantReciboDet.query.filter(
            MantReciboDet.id_mant_recibo == id_mant_recibo, MantReciboDet.id_gasto == 1).first()
        MantReciboDet2 = MantReciboDet.query.filter(
            MantReciboDet.id_mant_recibo == id_mant_recibo, MantReciboDet.id_gasto == 2).first()

        if MantReciboDet1:
            data['Gasto1'] = {
                'descripcion': gasto1.descripcion,
                'monto': MantReciboDet1.importe_casa
            }

            data['Gasto2'] = {
                'descripcion': gasto2.descripcion,
                'monto': MantReciboDet2.importe_casa
            }

            data['Subtotal'] = {
                'monto': MantReciboDet1.importe_casa + MantReciboDet2.importe_casa
            }
        else:
            data = {'message': 'No se encontró el registro'}

        return jsonify(data)


@frame.route('/seccion2/<int:id_mant_recibo>', methods=['GET'])
def getSeccion2(id_mant_recibo):
    if request.method == 'GET':
        data = {}

        gasto3 = Gasto.query.get(3)
        gasto4 = Gasto.query.get(4)

        MantReciboDet1 = MantReciboDet.query.filter(
            MantReciboDet.id_mant_recibo == id_mant_recibo, MantReciboDet.id_gasto == 3).first()
        MantReciboDet2 = MantReciboDet.query.filter(
            MantReciboDet.id_mant_recibo == id_mant_recibo, MantReciboDet.id_gasto == 4).first()

        if MantReciboDet1:
            data['Gasto3'] = {
                'descripcion': gasto3.descripcion,
                'monto': MantReciboDet1.importe_casa
            }

            data['Gasto4'] = {
                'descripcion': gasto4.descripcion,
                'monto': MantReciboDet2.importe_casa
            }

            data['Subtotal'] = {
                'monto': MantReciboDet1.importe_casa + MantReciboDet2.importe_casa
            }
        else:
            data = {'message': 'No se encontró el registro'}

        return jsonify(data)


@frame.route('/seccion3/<int:id_mant_recibo>', methods=['GET'])
def getSeccion3(id_mant_recibo):
    if request.method == 'GET':
        data = {}

        gasto5 = Gasto.query.get(5)
        gasto6 = Gasto.query.get(6)
        gasto7 = Gasto.query.get(7)
        gasto8 = Gasto.query.get(8)
        gasto9 = Gasto.query.get(9)

        MantReciboDet1 = MantReciboDet.query.filter(
            MantReciboDet.id_mant_recibo == id_mant_recibo, MantReciboDet.id_gasto == 5).first()
        MantReciboDet2 = MantReciboDet.query.filter(
            MantReciboDet.id_mant_recibo == id_mant_recibo, MantReciboDet.id_gasto == 6).first()
        MantReciboDet3 = MantReciboDet.query.filter(
            MantReciboDet.id_mant_recibo == id_mant_recibo, MantReciboDet.id_gasto == 7).first()
        MantReciboDet4 = MantReciboDet.query.filter(
            MantReciboDet.id_mant_recibo == id_mant_recibo, MantReciboDet.id_gasto == 8).first()
        MantReciboDet5 = MantReciboDet.query.filter(
            MantReciboDet.id_mant_recibo == id_mant_recibo, MantReciboDet.id_gasto == 9).first()

        if MantReciboDet1:
            data['Gasto5'] = {
                'descripcion': gasto5.descripcion,
                'monto': MantReciboDet1.importe_casa
            }

            data['Gasto6'] = {
                'descripcion': gasto6.descripcion,
                'monto': MantReciboDet2.importe_casa
            }

            data['Gasto7'] = {
                'descripcion': gasto7.descripcion,
                'monto': MantReciboDet3.importe_casa
            }

            data['Gasto8'] = {
                'descripcion': gasto8.descripcion,
                'monto': MantReciboDet4.importe_casa
            }

            data['Gasto9'] = {
                'descripcion': gasto9.descripcion,
                'monto': MantReciboDet5.importe_casa
            }

            data['Subtotal'] = {
                'monto': MantReciboDet1.importe_casa + MantReciboDet2.importe_casa + MantReciboDet3.importe_casa + MantReciboDet4.importe_casa + MantReciboDet5.importe_casa
            }
        else:
            data = {'message': 'No se encontró el registro'}

        return jsonify(data)


@frame.route('/seccion4/<int:id_mant_recibo>', methods=['GET'])
def getSeccion4(id_mant_recibo):
    if request.method == 'GET':
        data = {}

        gasto1 = Gasto.query.get(10)
        gasto2 = Gasto.query.get(11)

        MantReciboDet1 = MantReciboDet.query.filter(
            MantReciboDet.id_mant_recibo == id_mant_recibo, MantReciboDet.id_gasto == 10).first()
        MantReciboDet2 = MantReciboDet.query.filter(
            MantReciboDet.id_mant_recibo == id_mant_recibo, MantReciboDet.id_gasto == 11).first()

        if MantReciboDet1:
            data['Gasto1'] = {
                'descripcion': gasto1.descripcion,
                'monto': MantReciboDet1.importe_casa
            }

            data['Gasto2'] = {
                'descripcion': gasto2.descripcion,
                'monto': MantReciboDet2.importe_casa
            }

            data['Subtotal'] = {
                'monto': MantReciboDet1.importe_casa + MantReciboDet2.importe_casa
            }
        else:
            data = {'message': 'No se encontró el registro'}

        return jsonify(data)


@frame.route('/seccion5/<int:id_mant_recibo>', methods=['GET'])
def getSeccion5(id_mant_recibo):
    total = 0
    if request.method == 'GET':
        data = {}
        for i in range(12, 22):
            gasto = Gasto.query.get(i)

            MantReciboDet1 = MantReciboDet.query.filter(
                MantReciboDet.id_mant_recibo == id_mant_recibo, MantReciboDet.id_gasto == i).first()

            if MantReciboDet1:
                data[f'Gasto{i}'] = {
                    'descripcion': gasto.descripcion,
                    'monto': MantReciboDet1.importe_casa
                }
                total = total + MantReciboDet1.importe_casa

        data['Subtotal'] = {
            'monto': total
        }

        return jsonify(data)
