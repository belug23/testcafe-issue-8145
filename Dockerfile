FROM testcafe/testcafe:3.5.0 as testcafe-issue-8145

USER root
RUN apk --no-cache $ALPINE_REPOS upgrade && \
 apk --no-cache $ALPINE_REPOS add 'chromium=122.0.6261.57-r0'
USER user

COPY test.js .
