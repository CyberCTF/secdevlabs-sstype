#!/bin/sh
# The name parameter is written into the page's template and rendered back in the greeting.
set -e
curl -fsS "http://server:10001/?name=probe$$" | grep -q "probe$$"
