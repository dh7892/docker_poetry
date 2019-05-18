FROM continuumio/anaconda3

RUN curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python

ENV PATH ~/.poetry/bin:$PATH

ADD ./pyproject.toml .

RUN ~/.poetry/bin/poetry install

WORKDIR /project
