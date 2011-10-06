import os

def setup():
    home = os.path.expanduser('~')
    real = os.path.dirname(os.path.abspath(__file__))
    _symlink(real, os.path.join(home, '.vim'))
    _symlink(os.path.join(real, '.vimrc'), os.path.join(home, '.vimrc'))

def _symlink(src, lnk):
    if os.path.exists(lnk):
        print "rename  {0} ~> {1}".format(lnk, '{0}-old'.format(lnk))
        os.rename(lnk, old_lnk)
    print "symlink {0} ~> {1}".format(lnk, src)
    os.symlink(src, lnk)
