import os

def setup():
    home = os.path.expanduser('~')
    real = os.path.dirname(os.path.abspath(__file__))
    symlink(os.path.join(real, '.gitconfig'), os.path.join(home, '.gitconfig'))
    symlink(os.path.join(real, '.gitignore'), os.path.join(home, '.gitignore'))
    profile = get_input('Bash profile', default='.bash_profile')
    append(os.path.join(home, profile),
            "\n# Automatically added by dotfiles\nsource {0}\n".format(
            os.path.join(real, 'git-completion.bash')))

def symlink(src, lnk):
    if os.path.exists(lnk):
        print "rename  {0} ~> {1}".format(lnk, '{0}-old'.format(lnk))
        os.rename(lnk, old_lnk)
    print "symlink {0} ~> {1}".format(lnk, src)
    os.symlink(src, lnk)

def get_input(desc, default=None):
    if default is not None:
        desc += ' ({0})'.format(default)
    val = raw_input(desc + ': ')
    return val or default

def append(path, txt):
    print "append '{0}' to {1}".format(txt, path)
    with open(path, 'a') as f:
        f.write(txt)
