#!/bin/python3

a=0
b=100000000

def somaAB():
        soma=0
        for n in range(a, b+1):
                if n<=b:
                        soma+=n
        print(soma)

def somaPares():
        soma=0
        for num in range(a, b+1):
                if num%2==0:
                        soma+=num
        print(soma)

somaAB()
somaPares()
