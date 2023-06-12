from flask import Blueprint, request, jsonify
from models.cat_mantenimiento import CatMantenimiento
from utils.db import db

cat_mantenimiento = Blueprint('cat_mantenimiento', __name__)

@cat_mantenimiento.route('/cat_mantenimiento', methods=['GET'])
def getCategoriasMantenimiento():
    if request.method == 'GET':
        data = {}
        categorias = CatMantenimiento.query.all()
        data["categorias"] = [categoria.serialize() for categoria in categorias]
        return jsonify(data)

@cat_mantenimiento.route('/cat_mantenimiento/add', methods=['POST'])
def addCategoriaMantenimiento():
    data = {}
    if request.method == 'POST':
        body = request.get_json()
        nombre = body['nombre']
        descripcion = body['descripcion']
        monto_total = body['monto_total']
        
        nueva_categoria = CatMantenimiento(nombre=nombre, descripcion=descripcion, monto_total=monto_total)
        
        db.session.add(nueva_categoria)
        db.session.commit()
        return jsonify(data)

@cat_mantenimiento.route('/cat_mantenimiento/update', methods=['POST'])
def updateCategoriaMantenimiento():
    data = {}
    body = request.get_json()
    id_cat_mantenimiento = body['id_cat_mantenimiento']
    categoria = CatMantenimiento.query.get(id_cat_mantenimiento)
    
    if request.method == 'POST':
        categoria.nombre = body['nombre']
        categoria.descripcion = body['descripcion']
        categoria.monto_total = body['monto_total']
        
        db.session.commit()
    
    return jsonify(categoria.serialize())

@cat_mantenimiento.route('/cat_mantenimiento/delete', methods=['POST'])
def deleteCategoriaMantenimiento():
    data = {}
    body = request.get_json()
    id_cat_mantenimiento = body['id_cat_mantenimiento']
    categoria = CatMantenimiento.query.get(id_cat_mantenimiento)
    
    if request.method == 'POST':
        db.session.delete(categoria)
        db.session.commit()
    
    return jsonify(data)
