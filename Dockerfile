FROM testcafe/testcafe:3.5.0 as testcafe-issue-8145

USER root
RUN apk --no-cache $ALPINE_REPOS upgrade
USER user

COPY test.js .
