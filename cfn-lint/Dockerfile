FROM python:alpine

ARG lint_version=v1.10.3

RUN pip install --no-cache-dir cfn-lint==${lint_version}

COPY ./cfn-lint/output.json /tmp/Output.json

ENTRYPOINT ["cfn-lint"]

CMD ["--help"]
