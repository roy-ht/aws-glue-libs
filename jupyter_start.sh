#!/bin/bash
nohup /home/livy/bin/livy-server &
exec /usr/local/bin/jupyter notebook \
    --allow-root --NotebookApp.token='' --NotebookApp.password='' --no-browser --ip=0.0.0.0 "$@"