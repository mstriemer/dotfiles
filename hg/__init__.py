from os.path import expanduser, dirname, join, abspath
from os import symlink
from distutils.file_util import copy_file

def setup():
    home = expanduser('~')
    source = dirname(abspath(__file__))
    symlink(join(source, 'hg-prompt'), join(home, '.hg-prompt'))
    copy_file(join(source, 'hgrc'), join(home, '.hgrc'), link='sym')
