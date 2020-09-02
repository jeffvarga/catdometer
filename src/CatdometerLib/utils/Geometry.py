from collections import namedtuple

Point = namedtuple("Point", ["x", "y"])


class Rect(namedtuple("Rect", ["left", "top", "right", "bottom"])):
    """
    Describes a rectangle given a left, top, right, and bottom value.
    """
    @property
    def width(self) -> int:
        return self.right - self.left

    @property
    def height(self) -> int:
        return self.bottom - self.top

    @property
    def topleft(self) -> Point:
        return Point(self.left, self.top)

    @property
    def bottomright(self) -> Point:
        return Point(self.right, self.bottom)

    @property
    def size(self) -> Point:
        return Point(self.width, self.height)

    def __str__(self):
        return "(%d, %d) (%d, %d)" % (self.left, self.top, self.right, self.bottom)
