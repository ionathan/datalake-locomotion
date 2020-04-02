FROM iathan/b4flocomotionbase:1.0.0

ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt

USER $NB_USER
COPY --chown=jovyan:users notebooks/ .
COPY --chown=jovyan:users files/ files/
COPY --chown=jovyan:users scripts/get_data.sh .

RUN get_data.sh
