#!/bin/bash

echo "x 값을 여러 개 입력하세요 (공백으로 구분): "
read -a nums   # 배열로 입력받기

for x in "${nums[@]}"; do
    y=$(echo "0.5 * $x * $x" | bc -l)
    echo "x = $x  →  y = $y"
done

