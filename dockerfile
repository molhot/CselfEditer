FROM ubuntu:22.04

# 開発ツールをインストール
RUN apt-get update && \
    apt-get install -y gcc make gdb && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

# ソースコードをコピー（composeでボリュームをマウントするので任意）
COPY . .

CMD ["/bin/bash"]
