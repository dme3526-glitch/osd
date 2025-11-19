#!/bin/bash

DB="DB.txt"

while true; do
    echo "==================="
    echo "1) 팀원 정보 추가"
    echo "2) 팀원과 한 일 기록"
    echo "3) 팀원 검색"
    echo "4) 날짜로 검색"
    echo "5) 종료"
    echo "==================="
    read -p "선택: " menu

    case $menu in
        1)
            read -p "이름: " name
            read -p "생일/전화번호: " info
            echo "$name - $info" >> $DB
            ;;
        2)
            read -p "날짜(YYYY-MM-DD): " date
            read -p "무슨 일?: " work
            echo "$date - $work" >> $DB
            ;;
        3)
            read -p "검색할 이름: " n
            grep "$n" $DB
            ;;
        4)
            read -p "검색할 날짜: " d
            grep "$d" $DB
            ;;
        5)
            exit 0
            ;;
        *)
            echo "잘못된 입력"
            ;;
    esac
done
