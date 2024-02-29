# The issue can be bypassed by using:
```
docker run --rm testcafe:issue-8145 chromium --headless=new test.js
```

# testcafe-issue-8145


Build the docker with testcafé 3.5.0 without using the cache. This docker will force an update to chrome and other components of the container and copy a sample test file.
```
docker build --no-cache -t testcafe:issue-8145 .
```

Run the docker:
```
docker run --rm testcafe:issue-8145 chromium:headless test.js
```

Expect to recieve this error message:
```
ERROR Unable to open the "chromium:headless" browser due to the following error:

Error: No inspectable targets
    at defaultTarget (/usr/local/lib/node_modules/testcafe/node_modules/chrome-remote-interface/lib/chrome.js:48:23)
    at Chrome._fetchDebuggerURL (/usr/local/lib/node_modules/testcafe/node_modules/chrome-remote-interface/lib/chrome.js:194:28)
    at processTicksAndRejections (node:internal/process/task_queues:95:5)
    at Chrome._start (/usr/local/lib/node_modules/testcafe/node_modules/chrome-remote-interface/lib/chrome.js:141:25)

Type "testcafe -h" for help.
```
