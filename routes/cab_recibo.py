from flask import Blueprint, request, jsonify
from models.cab_recibo import Cab_Recibo
from models.casa_habitacion import Casa_Habitacion  # Importar el modelo de la llave foránea
from utils.db import db

cab_recibo = Blueprint('cab_recibo', __name__)

@cab_recibo.route('/', methods=['GET'])
def getCabecerasRecibo():
    if request.method == 'GET':
        data = {}
        cabeceras = Cab_Recibo.query.all()
        data["cabeceras"] = [cabecera.serialize() for cabecera in cabeceras]
        return jsonify(data)

@cab_recibo.route('/add', methods=['POST'])
def addCabeceraRecibo():
    data = {}
    if request.method == 'POST':
        body = request.get_json()
        id_casa_habitacion = body['id_casa_habitacion']
        periodo = body['periodo']
        ruc = body['ruc']
        n_recibo = body['n_recibo']
        fecha_emision = body['fecha_emision']
        fecha_vencimiento = body['fecha_vencimiento']
        ajuste = body['ajuste']
        total = body['total']
        mensaje = body['mensaje']
        estado = body['estado']
        
        # Validar la existencia del objeto Casa_Habitacion
        casa_habitacion = Casa_Habitacion.query.get(id_casa_habitacion)
        if not casa_habitacion:
            return jsonify({'error': 'La Casa_Habitacion no existe.'}), 404
        
        nueva_cabecera = Cab_Recibo(id_casa_habitacion=id_casa_habitacion, periodo=periodo, ruc=ruc,
                                    n_recibo=n_recibo, fecha_emision=fecha_emision,
                                    fecha_vencimiento=fecha_vencimiento, ajuste=ajuste,
                                    total=total, mensaje=mensaje, estado=estado)
        
        db.session.add(nueva_cabecera)
        db.session.commit()
        return jsonify(data)

@cab_recibo.route('/update', methods=['POST'])
def updateCabeceraRecibo():
    data = {}
    body = request.get_json()
    id_cab_recibo = body['id_cab_recibo']
    cabecera = Cab_Recibo.query.get(id_cab_recibo)
    
    if request.method == 'POST':
        id_casa_habitacion = body['id_casa_habitacion']
        periodo = body['periodo']
        ruc = body['ruc']
        n_recibo = body['n_recibo']
        fecha_emision = body['fecha_emision']
        fecha_vencimiento = body['fecha_vencimiento']
        ajuste = body['ajuste']
        total = body['total']
        mensaje = body['mensaje']
        estado = body['estado']
        
        # Validar la existencia del objeto Casa_Habitacion
        casa_habitacion = Casa_Habitacion.query.get(id_casa_habitacion)
        if not casa_habitacion:
            return jsonify({'error': 'La Casa_Habitacion no existe.'}), 404
        
        cabecera.id_casa_habitacion = id_casa_habitacion
        cabecera.periodo = periodo
        cabecera.ruc = ruc
        cabecera.n_recibo = n_recibo
        cabecera.fecha_emision = fecha_emision
        cabecera.fecha_vencimiento = fecha_vencimiento
        cabecera.ajuste = ajuste
        cabecera.total = total
        cabecera.mensaje = mensaje
        cabecera.estado = estado
        
        db.session.commit()
    
    return jsonify(cabecera.serialize())

@cab_recibo.route('/delete', methods=['POST'])
def deleteCabeceraRecibo():
    data = {}
    body = request.get_json()
    id_cab_recibo = body['id_cab_recibo']
    cabecera = Cab_Recibo.query.get(id_cab_recibo)
    
    if request.method == 'POST':
        db.session.delete(cabecera)
        db.session.commit()
    
    return jsonify(data)
