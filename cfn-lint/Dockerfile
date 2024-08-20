FROM python:alpine

ARG lint_version=v1.10.3

RUN pip install --no-cache-dir cfn-lint==${lint_version}

RUN echo '{"Resources":{"ApiGWLoggingRole":{"Type":"AWS::IAM::Role","Properties":{"RoleName":"apigw-logs-role","Description":"Api Gateway logging iam role","AssumeRolePolicyDocument":{"Statement":[{"Effect":"Allow","Principal":{"Service":"apigateway.amazonaws.com"},"Action":"sts:AssumeRole"}]},"ManagedPolicyArns":["arn:aws:iam::aws:policy/service-role/AmazonAPIGatewayPushToCloudWatchLogs"]}},"ApiGWAccount":{"Type":"AWS::ApiGateway::Account","Properties":{"CloudWatchRoleArn":{"Fn::GetAtt":["ApiGWLoggingRole","Arn"]}}}}}' >> /tmp/Output.json

ENTRYPOINT ["cfn-lint"]

CMD ["--help"]
