import sys

with open(sys.argv[2]) as file_1:
    lines= file_1.readlines()

with open(sys.argv[1], mode='a') as file_2:
    for line in lines:
        file_2.writelines(line)    
