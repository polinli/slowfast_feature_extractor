docker run -it \
    --gpus all  \
    --shm-size=11g \
    -v $(pwd):/slowfast_feature_extractor \
    -v /home/fai/Paul/paul_dataset/:/slowfast_feature_extractor/paul_dataset/ \
    paul/slowfast-extractor:1.2 \
    bash