#!/bin/bash

echo "=== ex3-8 시작 ==="

# 1. DB 폴더 확인 및 생성
if [ ! -d DB ]; then
    echo "DB 폴더가 없어서 새로 생성합니다."
    mkdir DB
else
    echo "DB 폴더가 이미 존재합니다."
fi

# 2. DB 폴더에서 파일 5개 생성
cd DB
echo "DB 폴더에서 파일 5개 생성 중..."
touch f1.txt f2.txt f3.txt f4.txt f5.txt

# 3. 압축하기
echo "파일 압축 중..."
tar -czf db_files.tar.gz f*.txt

# 4. train 폴더 생성
cd ..
echo "train 폴더 생성 중..."
mkdir -p train

# 5. 심볼릭 링크 생성
echo "train 폴더에 링크 생성 중..."
for f in DB/f*.txt; do
    ln -sf ../$f train/
done

echo "=== ex3-8 완료 ==="

