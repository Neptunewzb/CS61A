#constructor and selectors
def ratioanl(n, d):
    """Construct a number x that represents n/d"""
    def select(name):
        if name == 'n':
            return n
        elif name == 'd':
            return d
    return select

def numer(x):
    """Return the numerator of ratioanal number x"""
    return x('n')

def denom(x):
    """Return the numerator of ratioanal number x"""
    return x('d')


