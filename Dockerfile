FROM iathan/b4flocomotionbase:1.0.0

ADD notebooks/ .

ADD files/ files/

ADD requirements.txt

pip install -r requirements.txt

RUN chown -R jovyan:users .
