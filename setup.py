#testapp/setup.py
from setuptools import setup

entry_points = """
    [paste.app_factory]
    main = testapp:main
"""

requires = [
    'pyramid'
]

setup(name='forumapp',
      version='0.0.1',
      description='Learning app.',
      install_requires=requires,
      packages=['forumapp'],
      entry_points=entry_points
)
