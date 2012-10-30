from datetime import datetime
from pyramid.view import view_config
from pyramid.httpexceptions import HTTPFound
from testapp.models import Post


@view_config(route_name='index', renderer='testapp:templates/posts_index.mako')
def index(request):
    db = request.db
    posts = db.query(Post).all()
    return {
        'posts': posts
    }


@view_config(route_name='post_create', renderer='testapp:templates/posts_create.mako')
def create(request):
    db = request.db
    if request.POST.get('submit', False):
        post = Post(name=request.POST['name'],
                    description=request.POST['description'],
                    date=datetime.now())
        db.add(post)
        db.commit()
        return HTTPFound('/')
    return {}
