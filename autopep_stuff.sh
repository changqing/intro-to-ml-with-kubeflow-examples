#!/bin/bash
# autopep8 a bunch of things that we can
autopep8 -i -r ./ \
	 --select E101,E202,E201,E203,E211,E221,E222,E223,E224,E225,E226,E227,\
	 E228,E231,E241,E242,E251,E252,E262,E271,E272,E273,E274,E301,E302,E303,\
	 E304,E305,E306,E501,E502,E711,E712,E713,E714,E721,E722,E731,W291,W293,\
	 W391,W601,W602,W603,W604,W690\
	 -j 0 --exclude "*venv*"
# Then we use YAPF because it does a better job on long-lines
yapf -i -r ./ --exclude "*venv*"
