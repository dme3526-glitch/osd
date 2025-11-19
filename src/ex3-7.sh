#!/bin/bash

while true; do
    echo "==================="
    echo "1) 사용자 정보"
    echo "2) CPU 사용률(top 1회)"
    echo "3) 메모리 사용량"
    echo "4) 디스크 사용량"
    echo "5) 종료"
    echo "==================="
    read -p "선택: " menu

    case $menu in
        1) who ;;
        2) top -b -n 1 | head -n 5 ;;
        3) free -h ;;
        4) df -h ;;
        5) exit 0 ;;
        *) echo "잘못된 입력" ;;
    esac
done
