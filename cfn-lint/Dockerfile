FROM python:alpine

ARG lint_version=v1.38.0

RUN pip install --no-cache-dir cfn-lint==${lint_version}

COPY ./cfn-lint/output.json /tmp/Output.json

ENTRYPOINT ["cfn-lint"]

CMD ["--help"]
