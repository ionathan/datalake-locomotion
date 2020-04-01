FROM iathan/b4flocomotionbase:1.0.0

ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt

USER $NB_USER
COPY --chown=jovyan:users notebooks/ .
COPY --chown=jovyan:users files/ files/

RUN mkdir -p work/forceplate/original/
RUN mkdir -p work/accelerometer/original/

