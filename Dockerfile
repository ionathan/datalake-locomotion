FROM iathan/b4flocomotionbase:1.0.0

ADD . .

RUN chown -R jovyan:users .
