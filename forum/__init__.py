from pyramid.config import Configurator


def main(global_config, **settings):
    '''Main config function'''
    config = Configurator(settings=settings)

    # Routes
    config.add_route('index', '/')
    config.add_route('post_create', '/posts/create')

    config.scan('forumapp')
    return config.make_wsgi_app()
