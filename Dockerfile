FROM public.ecr.aws/a1p3q7r0/alpine:3.12.0 as ffmpeg-builder

RUN cd /usr/local/bin && \
    mkdir ffmpeg && \
    cd ffmpeg/ && \
    wget https://johnvansickle.com/ffmpeg/builds/ffmpeg-git-amd64-static.tar.xz && \
    tar xvf *.tar.xz && \
    rm -f *.tar.xz && \
    mv ffmpeg-git-*-amd64-static/ffmpeg .

# RUN wget https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz
# RUN wget https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz.md5
# RUN md5sum -c ffmpeg-release-amd64-static.tar.xz.md5
# RUN tar xvf ffmpeg-release-amd64-static.tar.xz

FROM public.ecr.aws/lambda/python:3.9

COPY --from=ffmpeg-builder /usr/local/bin/ffmpeg/ffmpeg /usr/local/bin/ffmpeg/ffmpeg
RUN ln -s /usr/local/bin/ffmpeg/ffmpeg /usr/bin/ffmpeg

COPY requirements.txt .
RUN pip3 install -r requirements.txt
COPY app.py .
COPY test_french_audio.mp4 .

cmd [ "app.handler" ]