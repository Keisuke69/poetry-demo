FROM python:3.9.1
RUN apt-get update && apt-get install vim -y && apt-get clean
RUN set -x && \
    curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python
ENV PATH /root/.poetry/bin:$PATH
RUN poetry config virtualenvs.create false
