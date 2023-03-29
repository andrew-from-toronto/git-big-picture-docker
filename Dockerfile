FROM python:3.9.16

SHELL ["/bin/bash", "-c"]

WORKDIR /git-big-picture

COPY ./ ./

RUN python3 -m venv venv && \
    source venv/bin/activate && \
    pip install -e .

SHELL ["/bin/bash", "-c"]

WORKDIR /repo

ENTRYPOINT ["/git-big-picture/venv/bin/git-big-picture"]
CMD ["-gMT"]