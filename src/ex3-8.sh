#!/bin/bash

# DB 폴더 생성 확인
if [ ! -d DB ]; then
    mkdir DB
fi

# 파일 5개 생성
cd DB
touch f1.txt f2.txt f3.txt f4.txt f5.txt

# 압축
tar -czf db_files.tar.gz f*.txt

cd ..

# train 폴더 생성
mkdir -p train

# 파일 링크 연결
for f in DB/f*.txt; do
    ln -sf ../$f train/
done
