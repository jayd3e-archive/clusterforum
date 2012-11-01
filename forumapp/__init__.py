from pyramid.config import Configurator
from sqlalchemy import engine_from_config
from sqlalchemy.orm import sessionmaker
from forumapp.models import initialize_base


def get_db(request):
    maker = request.registry.settings['db.sessionmaker']
    return maker()


def main(global_config, **settings):
    '''Main config function'''

    engine = engine_from_config(settings, 'sqlalchemy.')
    initialize_base(engine)
    maker = sessionmaker(bind=engine)
    settings['db.sessionmaker'] = maker

    config = Configurator(settings=settings)
    config.set_request_property(get_db, 'db', reify=True)

    # Routes
    config.add_route('index', '/')
    config.add_route('post_create', '/posts/create')
    config.add_route('sign_up', '/signup')
    config.add_route('signup_sucess', '/sucess')

    config.scan('forumapp')
    return config.make_wsgi_app()