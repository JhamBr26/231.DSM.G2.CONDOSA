from flask import Flask
from utils.db import db
from routes import cab_recibo, casa_infraccion, cat_individual, cat_mantenimiento, clase_gasto, consumo_individual, contact, cuota_mantenimiento, det_recibo, gasto, infraccion,  mant_recibo_det, mant_recibo, mora, moroso, recibo_estado, servicio_individual, tipo_gasto
from config import DATABASE_CONNECTION

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = DATABASE_CONNECTION
db.init_app(app)

app.register_blueprint(cab_recibo.cab_recibo)
app.register_blueprint(casa_infraccion.casa_infraccion)
app.register_blueprint(cat_individual.cat_individual)
app.register_blueprint(cat_mantenimiento.cat_mantenimiento)
app.register_blueprint(clase_gasto.clase_gasto)
app.register_blueprint(consumo_individual.consumo_individual)
app.register_blueprint(contact.contact)
app.register_blueprint(cuota_mantenimiento.cuota_mantenimiento)
app.register_blueprint(det_recibo.det_recibo)
app.register_blueprint(gasto.gasto)
app.register_blueprint(infraccion.infraccion)
app.register_blueprint(mant_recibo_det.mant_recibo_det)
app.register_blueprint(mant_recibo.mant_recibo)
app.register_blueprint(mora.mora)
app.register_blueprint(moroso.moroso)
app.register_blueprint(recibo_estado.recibo_estado)
app.register_blueprint(servicio_individual.servicio_individual)
app.register_blueprint(tipo_gasto.tipo_gasto)

if __name__ == "__main__":
    app.run(debug=True)
