def trace1(fn):
    def traced(x):
        print('Calling', fn, 'from argument', x)
        return fn(x)
    return traced

@trace1
def square(n):
    return n * n

""" Identical to"""
"""
def square(n):
    return n * n
square = trace1(square)"""

@trace1
def square_up_to(n):
    k = 1
    total = 0
    while k <= n:
        total, k = total + square(k), k+1
    return total
