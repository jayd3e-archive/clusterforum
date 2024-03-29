from sqlalchemy import (
    Column,
    Integer,
    String,
    DateTime,
    ForeignKey,
)
from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()


def initialize_base(engine):
    Base.metadata.bind = engine
    Base.metadata.create_all(engine)


# Many (posts) to one (user)
class Post(Base):
    #table containing all posts
    __tablename__ = 'posts'
    #fields
    id = Column(Integer, primary_key=True)
    name = Column(String, nullable=False)
    description = Column(String, nullable=False)
    date = Column(DateTime)
    user_id = Column(Integer, ForeignKey('users.id'))
    ## need to add creater id and link to user ##


# One (user) to many (post)
# One (user) to many (comment)
class User(Base):
    #table containing all users
    __tablename__ = 'users'
    #fields
    id = Column(Integer, primary_key=True)
    username = Column(String, nullable=False)
    password = Column(String, nullable=False)  # encryption or something should be added. check later.
    email = Column(String)  # in-case we do email authentication
    age = Column(String)


# Many (comments) to one (post)
# Many (comments) to one (user)
class Comment(Base):
    __tablename__ = 'comments'
    id = Column(Integer, primary_key=True)
    description = Column(String, nullable=False)
    date = Column(DateTime)
    post_id = Column(Integer, ForeignKey('posts.id'))
    #user_id = Column(Integer, ForeignKey('users.id'))
