from itertools import pairwise
words = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]

digrams = pairwise(words)
for d in digrams:
    print(d)