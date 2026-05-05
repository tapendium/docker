FROM python:3.14-alpine

ARG lint_version=v1.42.1

RUN pip install --no-cache-dir cfn-lint==${lint_version}

COPY ./cfn-lint/output.json /tmp/Output.json

ENTRYPOINT ["cfn-lint"]

CMD ["--help"]
