#!/bin/bash

scores=()

while true; do
    echo "==================="
    echo "1) 과목 성적 추가"
    echo "2) 모든 점수 보기"
    echo "3) 평균 점수 보기"
    echo "4) 평균 등급(GPA) 보기"
    echo "5) 종료"
    echo "==================="
    read -p "선택: " menu

    case $menu in
        1)
            read -p "성적 입력: " sc
            scores+=($sc)
            ;;

        2)
            if [ ${#scores[@]} -eq 0 ]; then
                echo "입력된 점수가 없습니다."
            else
                echo "입력된 점수: ${scores[@]}"
            fi
            ;;

        3)
            if [ ${#scores[@]} -eq 0 ]; then
                echo "평균을 계산할 점수가 없습니다."
            else
                sum=0
                for s in "${scores[@]}"; do sum=$((sum+s)); done
                avg=$((sum / ${#scores[@]}))
                echo "평균 점수: $avg"
            fi
            ;;

        4)
            if [ ${#scores[@]} -eq 0 ]; then
                echo "평균 등급을 계산할 점수가 없습니다."
            else
                sum=0
                for s in "${scores[@]}"; do sum=$((sum+s)); done
                avg=$((sum / ${#scores[@]}))
                if [ $avg -ge 90 ]; then
                    echo "평균 GPA: A"
                else
                    echo "평균 GPA: B"
                fi
            fi
            ;;

        5)
            echo "종료합니다."
            exit 0
            ;;

        *)
            echo "잘못된 입력"
            ;;
    esac
done

