#!/usr/bin/env python3
import sys

print("=== 실행 시작 (program.py) ===")

args = sys.argv[1:]          # 첫 인자는 파일 이름이니까 그 뒤부터가 진짜 인자
print("입력된 인자들:", " ".join(args))
print("인자 개수:", len(args))

print("=== 실행 종료 (program.py) ===")

