#!/bin/bash

# 점수 여러 개 입력받기
echo "점수를 여러 개 입력하세요 (공백으로 구분): "
read -a scores   # 배열로 입력받기

# 등급 계산 함수
grade() {
    if [ $1 -ge 90 ]; then
        echo "A"
    else
        echo "B"
    fi
}

echo
echo "===== 등급 결과 ====="

sum=0
count=${#scores[@]}
A_count=0
B_count=0

# 각 점수 등급 출력
for s in "${scores[@]}"; do
    g=$(grade $s)
    echo "점수 $s → 등급: $g"

    sum=$((sum + s))

    if [ "$g" = "A" ]; then
        A_count=$((A_count + 1))
    else
        B_count=$((B_count + 1))
    fi
done

echo
echo "===== 평균 등급 ====="

# 평균 점수 계산
avg=$((sum / count))

# 평균 점수 기준 GPA 변환
if [ $avg -ge 90 ]; then
    echo "평균 점수: $avg → 평균 등급: A"
else
    echo "평균 점수: $avg → 평균 등급: B"
fi

