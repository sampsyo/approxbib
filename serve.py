#!/usr/bin/env python
from livereload import Server, shell
server = Server()
server.watch('approxbib.md', shell('make html'))
server.serve(host='0.0.0.0', root='html')

# NB: Serving on 0.0.0.0 probably requires the latest `python-reload` source,
# which isn't on PyPI yet. Specifically, this commit:
# 2ca26a04b8c235d81171684208a7f4cbe5c5e78d
#
# So:
# $ pip install --user git+https://github.com/lepture/python-livereload.git
