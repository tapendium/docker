FROM python:alpine

ARG lint_version=v1.10.1

RUN pip install --no-cache-dir cfn-lint==${lint_version}

ENTRYPOINT ["cfn-lint"]

CMD ["--help"]
