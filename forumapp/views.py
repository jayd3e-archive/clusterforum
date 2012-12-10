from datetime import datetime
from pyramid.view import (
    view_config,
    forbidden_view_config
    )
from pyramid.httpexceptions import (
    HTTPFound
)
from pyramid.security import NO_PERMISSION_REQUIRED
from forumapp.models import (
    Post,
    User,
    Comment
)
from sqlalchemy.sql.expression import desc
#from pyramid.security import Authenticated

# make log in required for certain pages/features. If not logged push to login page!


@view_config(route_name='sign_in', renderer='forumapp:templates/sign_in.mako', permission=NO_PERMISSION_REQUIRED)
@forbidden_view_config(renderer='forumapp:templates/sign_in.mako')
def signin(request):
    db = request.db
    if request.POST.get('submit', False):
        user_name = request.POST['username']
        if db.query(User).filter_by(username=request.POST['username'], password=request.POST['password']).first():
            session = request.session
            session[user_name] = 'logged-in'
            if user_name in session:
                return HTTPFound('/')
        else:
            fail_message = 'Log-in failed'
            return dict(message=fail_message)
    return {}


    #Displays posts on home page
@view_config(route_name='index', renderer='forumapp:templates/posts_index.mako', permission=NO_PERMISSION_REQUIRED)
def index(request):
    db = request.db
    posts = db.query(Post).order_by(desc('posts.date')).all()
    count = db.query(Post).count()
    db.flush()
    if request.POST.get('search', False):
        search_item = request.POST['search']
        if db.query(Post).filter(Post.name.ilike(search_item)).first():
            result = db.query(Post).filter(Post.name.ilike(search_item)).first()
            return {
                'result': result,
                'posts': posts,
                'count': count
            }
        else:
            message = "No search result!"
            return dict(message=message, posts=posts)
    return {
        'posts': posts,
        'count': count
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
        return HTTPFound('/sucess')
    return{}


    #Transition Page from sign-in.
@view_config(route_name='signup_sucess', renderer='forumapp:templates/signup_sucess.mako', permission=NO_PERMISSION_REQUIRED)
def sucess(request):
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
            db.commit()
        comments = db.query(Comment).filter_by(post_id=id).all()
        post = db.query(Post).filter_by(id=id).first()
        db.commit()
    return {
        'post': post,
        'comments': comments
    }
