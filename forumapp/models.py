from sqlalchemy import (
    Column,
    Integer,
    String,
    DateTime
)
from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()


def initialize_base(engine):
    Base.metadata.bind = engine
    Base.metadata.create_all(engine)


class Post(Base):
    #table containing all posts
    __tablename__ = 'posts'
    #fields
    id = Column(Integer, primary_key=True)
    name = Column(String, nullable = False)
    description = Column(String, nullable = False)
    date = Column(DateTime)
    ## need to add creater id and link to user ##
    
class User(Base):
    #table containing all users
    __tablename__ = 'users'
    #fields
    id = Column(Integer, primary_key=True)
    username = Column(String, nullable = False)
    password = Column(String, nullable = False) #encryption or something should be added. check later.
    email = Column(String) # in-case we do email authentication
    age = Column(String) 

# class AuthUser(Base):
#     __tablename__ = 'auth_users'

#     username = Column(String(15))
#     password = Column(String(80))
#     user_id = Column(Integer, ForeignKey('users.id'))


#     def __init__(self, username, password, **kwargs):
#         self.username = username
#         if password is not None:
#             self._set_password(password)
#         self.__dict__.update(kwargs)

#     def __repr__(self):
#         return "<AuthUser('%s')>" % (self.id)

#     def _set_password(self, password):
#         hashed_password = password

#         if isinstance(password, unicode):
#             password_8bit = password.encode('UTF-8')
#         else:
#             password_8bit = password

#         salt = sha1()
#         salt.update(os.urandom(60))
#         hash = sha1()
#         hash.update(password_8bit + salt.hexdigest())
#         hashed_password = salt.hexdigest() + hash.hexdigest()

#         if not isinstance(hashed_password, unicode):
#             hashed_password = hashed_password.decode('UTF-8')

#         self.password = hashed_password

#     def validate_password(self, password):
#         hashed_pass = sha1()
#         hashed_pass.update(password + self.password[:40])
#         return self.password[40:] == hashed_pass.hexdigest()

