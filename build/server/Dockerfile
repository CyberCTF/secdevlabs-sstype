# Upstream's deployments/sstype.Dockerfile with these changes: the base image is pinned to
# python:3.12 (upstream: python:3, i.e. latest 3.x; 3.12 was current at the secDevLabs commit);
# the app folder is copied from app/ (upstream's build context is the app folder itself); and
# Tornado is installed as tornado==6.4.1 (the release current at the secDevLabs commit) instead
# of from upstream's requirements.txt, whose only line, `tornado.`, current pip rejects
# ("Invalid requirement: 'tornado.'").
FROM docker.io/library/python:3.12
WORKDIR /usr/share/sstype
ADD app/ /usr/share/sstype

RUN pip install --no-cache-dir tornado==6.4.1

CMD python src/server.py
