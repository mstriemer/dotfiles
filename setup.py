import os

modules = (
    'vim',
)

def setup():
    for module in modules:
        print 'setting up {0}'.format(module)
        m = __import__(module)
        try:
            m.setup()
        except AttributeError, e:
            print '{0} has no `setup()\' function'.format(module)


if __name__ == '__main__':
    setup()
