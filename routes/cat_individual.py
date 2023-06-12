from flask import Blueprint, request, jsonify
from models.cat_individual import CatIndividual
from utils.db import db

cat_individual = Blueprint('cat_individual', __name__)

@cat_individual.route('/', methods=['GET'])
def getCategoriasIndividuales():
    if request.method == 'GET':
        data = {}
        categorias = CatIndividual.query.all()
        data["categorias"] = [categoria.serialize() for categoria in categorias]
        return jsonify(data)

@cat_individual.route('/add', methods=['POST'])
def addCategoriaIndividual():
    data = {}
    if request.method == 'POST':
        body = request.get_json()
        nombre = body['nombre']
        descripcion = body['descripcion']
        precio = body['precio']
        
        nueva_categoria = CatIndividual(nombre=nombre, descripcion=descripcion, precio=precio)
        
        db.session.add(nueva_categoria)
        db.session.commit()
        return jsonify(data)

@cat_individual.route('/update', methods=['POST'])
def updateCategoriaIndividual():
    data = {}
    body = request.get_json()
    id_cat_individual = body['id_cat_individual']
    categoria = CatIndividual.query.get(id_cat_individual)
    
    if request.method == 'POST':
        categoria.nombre = body['nombre']
        categoria.descripcion = body['descripcion']
        categoria.precio = body['precio']
        
        db.session.commit()
    
    return jsonify(categoria.serialize())

@cat_individual.route('/delete', methods=['POST'])
def deleteCategoriaIndividual():
    data = {}
    body = request.get_json()
    id_cat_individual = body['id_cat_individual']
    categoria = CatIndividual.query.get(id_cat_individual)
    
    if request.method == 'POST':
        db.session.delete(categoria)
        db.session.commit()
    
    return jsonify(data)
