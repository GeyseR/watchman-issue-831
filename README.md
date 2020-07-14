This is a repo for reproducing the [watchman#831](https://github.com/facebook/watchman/issues/831) bug.

How to run:

    docker build -t watchman-issue-831 . && docker run -v $(pwd)/code:/code watchman-issue-831 watchman watch /code
