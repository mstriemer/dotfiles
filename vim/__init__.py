import os
from distutils.file_util import copy_file, move_file
import distutils

def setup():
    home = os.path.expanduser('~')
    real = os.path.dirname(os.path.abspath(__file__))
    symlink(real, os.path.join(home, '.vim'))
    symlink(os.path.join(real, '.vimrc'), os.path.join(home, '.vimrc'))
    copy_file(os.path.join(real, '.vimrc'), os.path.join(home, '.vimrc'),
        link='sym')
    move_if_exists(os.path.join(home, '.gvimrc'),
                   os.path.join(home, '.gvimrc-old')

def move_if_exists(src, dst):
    if os.path.exist(src):
        move_file(src, dst)

def symlink(src, lnk):
    rename(lnk)
    print "symlink {0} ~> {1}".format(lnk, src)
    os.symlink(src, lnk)

def rename(src):
    if os.path.exists(src):
        old_src = '{0}-old'.format(src)
        print "rename  {0} ~> {1}".format(src, old_src)
        os.rename(src, old_src)
