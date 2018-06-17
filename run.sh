#!/bin/bash
sudo nvidia-docker run \
     -it \
     --rm \
     -p 8888:8888 \
     -v /home/na-rstudio/:/na-rstudio \
     py-env \
     jupyter notebook --no-browser --ip=* --allow-root --NotebookApp.token= --notebook-dir='/na-rstudio'
exit 0
