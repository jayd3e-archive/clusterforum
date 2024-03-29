from pyramid.config import Configurator
from sqlalchemy import engine_from_config
from sqlalchemy.orm import sessionmaker
from forumapp.models import initialize_base
from pyramid.session import UnencryptedCookieSessionFactoryConfig
from pyramid.authorization import ACLAuthorizationPolicy
from pyramid.authentication import AuthTktAuthenticationPolicy


def get_db(request):
    maker = request.registry.settings['db.sessionmaker']
    return maker()


def main(global_config, **settings):
    '''Main config function'''

    engine = engine_from_config(settings, 'sqlalchemy.')
    initialize_base(engine)
    maker = sessionmaker(bind=engine)
    settings['db.sessionmaker'] = maker

    authn_policy = AuthTktAuthenticationPolicy('seekrit', 'sha512')
    authz_policy = ACLAuthorizationPolicy()

    my_session_factory = UnencryptedCookieSessionFactoryConfig('itsaseekreet')
    config = Configurator(settings=settings,
                          session_factory=my_session_factory)

    config.set_request_property(get_db, 'db', reify=True)
    config.set_authentication_policy(authn_policy)
    config.set_authorization_policy(authz_policy)

    #Static routes
    config.add_static_view('style', 'forumapp:dependencies/')

    # Routes
    # HOME
    config.add_route('index', '/')
    # POSTS
    config.add_route('post_create', '/posts/create')
    config.add_route('view_post', '/post/{id}')
    # Sign up / Sign In
    config.add_route('sign_up', '/signup')
    config.add_route('signup_sucess', '/sucess')
    config.add_route('sign_in', '/signin')

    config.scan('forumapp')
    return config.make_wsgi_app()
