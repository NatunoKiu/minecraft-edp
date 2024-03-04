#!/bin/bash
# 今日の日付をYYYYMMDDの形式で取得する
DATE=$(date "+%Y%m%d")

# バックアップしたいディレクトリのパスを指定する
RDIR="ここにバックアップしたいディレクトリのパスを入力"

# 作成したいディレクトリのパスを指定する
WDIR="ここにバックアップ先のディレクトリのパスを入力"

# ディレクトリが存在しなければ作成する
if [ ! -d "$WDIR" ]; then
  mkdir "$WDIR"
fi

sudo rsync -av "$RDIR" "$WDIR"
