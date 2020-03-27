# docker run --rm -v "/Users/g4g/workspace/clones_forked_libs/ffmpeg.js:/home/u/ffmpeg.js" -v "$(pwd)/output:/home/u/output" -i -t ffmpegjs-build

source ./emsdk_env.sh
cd ../ffmpeg.js
make ffmpeg-mp4.js
