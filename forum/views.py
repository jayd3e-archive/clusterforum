from pyramid.view import view_config
from pyramid.httpexceptions import HTTPFound

posts = []


@view_config(route_name='index', renderer='forumapp:templates/posts_index.mako')
def index(request):
    return {
        'posts': posts
    }


@view_config(route_name='post_create', renderer='testapp:templates/posts_create.mako')
def create(request):
    import pdb;pdb.set_trace()
    if request.POST.get('submit', False):
        _max = 0
        for post in posts:
            if post['id'] > _max:
                _max = post['id']

        posts.append({
            'id': _max + 1,
            'name': request.POST['name'],
            'description': request.POST['description'],
            'date': request.POST['date']
        })
        return HTTPFound('/')
    return {}
