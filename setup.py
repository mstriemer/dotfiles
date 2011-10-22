from __future__ import print_function

import os
import argparse

all_modules = (
    'vim',
    'git',
)

def setup(modules):
    for module in modules:
        print('setting up {0}'.format(module))
        m = __import__(module)
        try:
            m.setup()
        except AttributeError, e:
            print('{0} has no `setup()\' function'.format(module))


if __name__ == '__main__':
    valid_modes = ('install', 'uninstall', 'list', 'help')
    parser = argparse.ArgumentParser(description='Setup your environment.')
    parser.add_argument('mode', type=str,
        help='what to do (install|uninstall|list|help)')
    parser.add_argument('modules', type=str, nargs='*',
        help='what to install or uninstall')
    args = parser.parse_args()
    if args.mode not in valid_modes:
        print("Mode must be one of {0}.".format(', '.join(valid_modes)))
    elif args.mode in ('install', 'uninstall') and len(args.modules) == 0:
        print("You must specify something to {0}.".format(args.mode))
    if args.modules == 'all':
      setup(all_modules)
    elif all(m in all_modules for m in args.modules):
      setup(args.modules)
    else:
      print("Available modules are {0}".format(', '.join(all_modules)))
