#!/bin/python3

import os
import sys
pkgname = sys.argv[1]
flags = os.popen("pkgconf --cflags " + pkgname).read()
options = flags.strip().split(' ')

includes = []
definitions = []
for opt in options:
    if opt.find('-I') != -1:
        opt_content = opt[opt.find('-I')+2:]
        includes.append(opt_content)

    elif opt.find('-D') != -1:
        opt_content = opt[opt.find('-D')+2:]
        definitions.append(opt_content)

    else:
        print("unrecognized option " + opt)

def format_list(l : list):
    return str(l).replace('\'', '"')

print(format_list(includes))
print(format_list(definitions))
