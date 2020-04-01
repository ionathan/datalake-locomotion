FROM iathan/b4flocomotionbase:1.0.0

ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt

USER $NB_USER
ADD notebooks/ .
ADD files/ files/

RUN mkdir -p work/forceplate/original/
RUN mkdir -p work/acc/original/

