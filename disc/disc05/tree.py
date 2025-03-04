def tree(label, branches=[]):
    for branch in branches:
        assert is_tree(branch), 'Branch must be list.'
    return [label] + list(branches)# 'ensure that def of tree is respected'

def label(tree):
    return tree[0]

def branches(tree):
    return tree[1:]

def is_tree(tree):
    if type(tree) != list or len(tree) < 1:
        return False
    for branch in branches(tree):
        if not is_tree(branch):
            return False
    return True

def is_leaf(tree):
    return not branches(tree)

def fib_tree(n):
    if n <= 1:
        return tree(n)
    else:
        left, right = fib_tree(n-2), fib_tree(n-1)
        return tree(label(left)+label(right),[left,right])

def count_leaves(t):
    """Count the leaves of tree T."""
    if is_leaf(t):
        return 1
    else:
        return sum([count_leaves(b) for b in branches(t)])

def has_path(t, p):
    if p == [label(t)]:
        return True
    elif p[0] != label(t):
        return False
    else:
        return any([has_path(b, p[1:]) for b in branches(t)])

def find_path(t, x):
    """return a list containing the labels of nodes along a path from the root of t to a node labeled x

    >>> t2 = tree(5, [tree(6), tree(7)])
    >>> t1 = tree(3, [tree(4), t2])
    >>> find_path(t1, 4)
    [3, 4]
    """
    if label(t) == x:
        return [label(t)]
    for b in branches(t):
        path = [label(t)] + find_path(b, x)
        if find_path(b, x):
            return path
    return None
