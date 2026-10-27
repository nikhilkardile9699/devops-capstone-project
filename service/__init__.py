
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_talisman import Talisman
from flask_cors import CORS

db = SQLAlchemy()


def create_app():
    app = Flask(__name__)

    app.config["SQLALCHEMY_DATABASE_URI"] = "sqlite:///accounts.db"
    app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False

    db.init_app(app)

    # Configure CORS
    CORS(app
    # Configure security headers
    Talisman(app, force_https=False)

    from service.routes import accounts_bp
    app.register_blueprint(accounts_bp)

    with app.app_context():
        db.create_all()

    return app
