#!/bin/bash

# 1. ~/.bashrc에 환경변수 추가
echo 'export MYENV="Hello Shell"' >> ~/.bashrc

# 2. 현재 셸에 즉시 반영
source ~/.bashrc

# 3. 값 출력
echo "환경변수 등록 완료!"
echo "등록된 MYENV 값: $MYENV"

# 4. 환경변수 해제
unset MYENV
echo "환경변수를 해제합니다."
echo "해제 후 MYENV 값: $MYENV"
