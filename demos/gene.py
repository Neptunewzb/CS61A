"""Generalization"""

from math import pi, sqrt
from operator import mul

def area(r, shape_constant):
    assert r > 0, 'A length must ne positive'
    return r * r * shape_constant

def area_square(r):
    return area(r, 1)

def area_circle(r):
    return area(r, pi)

def area_hexagon(r):
    return area(r, 3 * sqrt(3) / 2)



"""Really efficient way is to generalize"""

def identity(k):
    return k

def cube(k):
    return pow(k, 3)

def pi_term(k):
    return 8 / mul(4*k-3,4*k-1)

def summation(n, term):
    """Sum the first N terms of a sequence.

    >>> summation(5, cube)
    225
    >>> summation(5, identity)
    15
    """
    total, k = 0, 1
    while k<=n:
        total, k = total + term(k), k+1
    return total




""" Do them separately is inefficient"""

def sum_naturals(n):
    """Sum the first N natural numbers

    >>> sum_naturals(5)
    15
    """
    total, k = 0, 1
    while k <= n:
        total, k = total + k, k+1
    return total

def sum_cubes(n):
    """Sum the first N cubes of natural numbers,

    >>> sum_cubes(5)
    225
    """
    total, k= 0,1 
    while k <=n:
        total, k = total + pow(k, 3), k+1
    return total

