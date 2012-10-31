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
    name = Column(String)
    description = Column(String)
    date = Column(DateTime)
    ## need to add creater id and link to user ##

class User(Base):
    #table containing all users
    __tablename__ = 'users'
    #fields
    id = Column(Integer, primary_key=True)
    username = Column(String)
    password = Column(String) #encryption or something should be added. check later.
    email = Column(String) # in-case we do email authentication
    age = Column(String) 

