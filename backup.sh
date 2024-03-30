#!/bin/bash
# 今日の日付をYYYYMMDDの形式で取得する
DATE=$(date "+%Y%m%d")

# ""の中にバックアップしたいディレクトリのパスを指定する
RDIR=""

# ""の中に作成したいディレクトリのパスを指定する
WDIR=""

# ディレクトリが存在しなければ作成する
if [ ! -d "$WDIR" ]; then
  mkdir "$WDIR"
fi

rsync -av "$RDIR" "$WDIR"
