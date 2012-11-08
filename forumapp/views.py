from datetime import datetime
from pyramid.view import view_config
from pyramid.httpexceptions import HTTPFound
from forumapp.models import (
    Post,
    #AuthUser,
    User
)


@view_config(route_name='index', renderer='forumapp:templates/posts_index.mako')
def index(request):
    db = request.db
    posts = db.query(Post).all()
    return {
        'posts': posts
    }


@view_config(route_name='post_create', renderer='forumapp:templates/posts_create.mako')
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

@view_config(route_name='sign_up', renderer='forumapp:templates/sign_up.mako')
def signup(request):
    #to be implemented
    db = request.db
    if request.POST.get('submit', False):
        user = User(username=request.USER['username'],
                    password=request.USER['password'],
                    email=request.USER['email'],
                    age=request.USER['age'])
        db.add(user)
        db.commit()
        return HTTPFound('/sucess')
    return {}

@view_config(route_name='signup_sucess', renderer='forumapp:templates/signup_sucess.mako')
def sucess(request):
    return{}

@view_config(route_name='view_post', renderer='forumapp:templates/post_display.mako')
def view(request):
    db = request.db
    if 'id' in request.matchdict:
        id = request.matchdict['id']
        post = db.query(Post).filter_by(id=id).first()
    return {
        'posts': post
    }




