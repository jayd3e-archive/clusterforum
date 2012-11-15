from datetime import datetime
from pyramid.view import (
    view_config,
    forbidden_view_config
    )
from pyramid.httpexceptions import (
    HTTPFound,
    HTTPForbidden
)
from pyramid.security import NO_PERMISSION_REQUIRED
from forumapp.models import (
    Post,
    User,
    Comment
)


# make log in required for certain pages/features. If not logged push to login page!
# may need soap, or some other functionality.
@view_config(route_name='sign_in', renderer='forumapp:templates/sign_in.mako', permission=NO_PERMISSION_REQUIRED)
@forbidden_view_config(renderer='forumapp:templates/sign_in.mako')
def signin(request):
    #session = request.session
    db = request.db
    if request.POST.get('submit', False):
            # session['user'] = db.query(Users).filter_by(username=request.POST.username).first()
            # session['password'] = db.query(Users).filter_by(password=request.POST.password).first()
            # if user in session:
            #     return Response('Logged In')
            # return HTTPFound('/')
        return HTTPFound('/')
    return{}


# @view_config(context='velruse.AuthenticationDenied', permission=NO_PERMISSION_REQUIRED)
# def login_denied(request):
#     return HTTPForbidden()
# Need velruse



#Displays posts on home page
@view_config(route_name='index', renderer='forumapp:templates/posts_index.mako', permission=NO_PERMISSION_REQUIRED)
def index(request):
    db = request.db
    posts = db.query(Post).all()
    db.flush()
    return {
        'posts': posts
    }


#Stores posts on create post page to POST database.
    # Still need to add the link between post->user
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


    #Supposed to store users into user database from signup page- STILL BROKEN
@view_config(route_name='sign_up', renderer='forumapp:templates/sign_up.mako', permission=NO_PERMISSION_REQUIRED)
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


    #Transition Page from sign-in.
@view_config(route_name='signup_sucess', renderer='forumapp:templates/signup_sucess.mako', permission=NO_PERMISSION_REQUIRED)
def sucess(request):
    #Eventually return some sort of global logged-in variable
    # Also set params, so the field can't be left blank/length restrictions.
    return{}


#Displays a single post based on POST_ID
@view_config(route_name='view_post', renderer='forumapp:templates/post_display.mako', permission=NO_PERMISSION_REQUIRED)
def view(request):
    db = request.db
    if 'id' in request.matchdict:
        id = request.matchdict['id']
        if request.POST.get('submit', False):
            comment = Comment(description=request.POST['description'],
                date=datetime.now(),
                post_id=id)
            db.add(comment)
        comments = db.query(Comment).filter_by(post_id=id).all()
        post = db.query(Post).filter_by(id=id).first()
    db.commit()
    db.flush()
    return {
        'post': post,
        'comments': comments
    }
