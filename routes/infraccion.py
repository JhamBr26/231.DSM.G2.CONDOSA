from flask import Blueprint, request, jsonify
from models.infraccion import Infraccion
from utils.db import db

infraccion=Blueprint('infraccion',__name__)

@infraccion.route('/infraccion',methods=['GET'])
def getInfracciones():
    if request.method=='GET':
        data={}
        infracciones=Infraccion.query.all()
        data["infracciones"]= [infraccion.serialize() for  infraccion in infracciones ]
        return jsonify(data)

@infraccion.route('/infraccion/add',methods=['POST'])
def addInfracciones():
    data={}
    if request.method=='POST':
        body=request.get_json()
        codigo=body['codigo']
        descripcion=body['descripcion']
        importe=body['importe']
        fecha_registro=body['fecha_registro']
        fecha_autorizacion=body['fecha_autorizacion']
        
        new_infraccion= Infraccion(codigo,descripcion,importe,fecha_registro,fecha_autorizacion)
        db.session.add(new_infraccion)
        db.session.commit()
        return jsonify(data)

@infraccion.route('/infraccion/update',methods=['POST'])
def updateInfracciones():
    data={}
    body=request.get_json()
    id_infraccion=body['id_infraccion']
    infraccion=Infraccion.query.get(id_infraccion)
    if request.method=='POST':
        infraccion.codigo=body['codigo']
        infraccion.descripcion=body['descripcion']
        infraccion.importe=body['importe']
        infraccion.fecha_registro=body['fecha_registro']
        infraccion.fecha_autorizacion=body['fecha_autorizacion']
        db.session.commit()
    return jsonify(infraccion)        

@infraccion.route('/infraccion/delete',methods=['POST'])
def deleteInfracciones():
    data={}
    body=request.get_json()
    id_infraccion=body['id_infraccion']
    infraccion=Infraccion.query.get(id_infraccion)
    if request.method=='POST':
        db.session.delete(infraccion)
        db.session.commit()
    return jsonify(data)