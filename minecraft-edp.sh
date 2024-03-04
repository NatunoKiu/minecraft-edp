#!/bin/bash
#-p [ホストマシンのポート]:25565 でお好みのホストマシンのポート番号と
#-v [ホストマシンのマイクラ鯖のディレクトリ]:/home/forge でお好みのホストマシンのマイクラ鯖のパスを記載してください。
sudo podman build -t minecraft-edp .
sudo podman run -d -it -p ホストマシンのポート:25565 --name minecraft-edp -v ホストマシンのマイクラ鯖のディレクトリ:/home/forge minecraft-edp
