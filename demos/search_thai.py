def search(query, ranking = lambda r: -r.stars):
    results = [r for r in Restaurant.roll if query in r.name]
    return sorted(results, key = ranking)

class Restaurant:
    roll = []
    def __init__(self, name, stars):
        self.name, self.stars = name, stars
        Restaurant.roll.append(self)

    def similar(self, k):
        """Return the k most similar restaurants to SELF."""
        ...

    def __repr__(self):
        return '<' + self.name + '>'

Restaurant('Thai Delight', 2)
Restaurant('Thai Basil', 3)
Restaurant('Top Dog', 5)

results = search('Thai')
for r in results:
    print(r,' is similar to ',r.similar(3))
