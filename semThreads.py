#!/bin/python3

a=0
b=100000000

def soma1():
        soma=0
        for c in range(a, b):
                if c<=b:
                        soma+=c
        soma+=b
        print(soma)

#mudar para outra função
def soma2():
        soma=0
        for c in range(a, b):
                if c<=b:
                        soma+=c
        soma+=b
        print(soma)

soma1()
soma2()
