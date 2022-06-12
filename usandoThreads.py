#!/bin/python3

import threading

a=0
b=100000000

def soma1():
        soma=0
        for c in range(a, b):
                if c<=b:
                        soma+=c
        soma+=b
        print(soma)

def soma2():
        soma=0
        for c in range(a, b):
                if c<=b:
                        soma+=c
        soma+=b
        print(soma)

threading.Thread(target=soma1).start()
soma2()
