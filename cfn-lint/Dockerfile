FROM python:alpine

ARG lint_version=v0.61.0

RUN pip install --no-cache-dir cfn-lint==${lint_version}

ENTRYPOINT ["cfn-lint"]

CMD ["--help"]
