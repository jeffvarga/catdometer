class CircularList(list):
    """
    A list that acts as a circular array.  Allows indexing past the end of the
    array, returning i % len.
    """
    def __getitem__(self, item):
        return super(CircularList, self).__getitem__(item % len(self))

    def realIndex(self, item) -> int:
        """
        Evaluates the index with respect to the circular array and returns the
        real index.
        :param item: index to evaluate
        :return: real index
        """
        return item % len(self)
