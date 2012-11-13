from datetime import datetime
from pyramid.view import view_config
from pyramid.httpexceptions import HTTPFound
from forumapp.models import (
    Post,
    #AuthUser,
    User,
    Comment
)


@view_config(route_name='index', renderer='forumapp:templates/posts_index.mako')
def index(request):
    db = request.db
    posts = db.query(Post).all()
    db.flush()
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
        db.flush()
        return HTTPFound('/')
    return {}

@view_config(route_name='sign_up', renderer='forumapp:templates/sign_up.mako')
def signup(request):
    db = request.db
    if request.POST.get('submit', False):
        user = User(username=request.POST['username'],
            password=request.POST['password'],
            email=request.POST['email'],
            age=request.POST['age'])
        db.add(user)
        db.commit()
        db.flush()
        return HTTPFound('/sucess')
    return {}

@view_config(route_name='signup_sucess', renderer='forumapp:templates/signup_sucess.mako')
def sucess(request):
    #Eventually return some sort of global logged-in variable
    # Also set params, so the field can't be left blank/length restrictions.
    return{}

@view_config(route_name='post_comment', renderer='forumapp:templates/post_display.mako')
def comment(request):
    if request.POST.get('submit', False):
        if 'id' in request.matchdict:
            id = request.matchdict['id']
            comment = Comment(description=request.POST['description'],
                date=datetime.now(),
                post_id=id)
            db.add(comment)
    return{}
            
@view_config(route_name='view_post', renderer='forumapp:templates/post_display.mako')
def view(request):
    db = request.db
    if 'id' in request.matchdict:
        id = request.matchdict['id']
        post = db.query(Post).filter_by(id=id).first()
        if request.POST.get('submit', False):
            comment = db.query(Comment).filter_by(id=id)
            return{'comment': comment}
    db.commit()
    db.flush()
    return {
        'post': post
    }






