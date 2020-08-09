import tkinter as tk

from Catdometer.utils import Colors
from Catdometer.utils import CircularList


class Speedometer(tk.Frame):
    """
    The speedometer widget, containing the the speed readout and the circle of
    ticks.
    """
    def __init__(self, parent, *args, **kwargs):
        tk.Frame.__init__(self, parent, *args, **kwargs)
        self.parent = parent
        self.configure(width=240, height=240)

        self.configure(bg=Colors.BLACK)

        self.canvas = tk.Canvas(self)
        self.canvas.grid(column=0, row=0)  # sticky=(tk.N, tk.W, tk.E, tk.S))
        self.canvas.configure(bg="black", width=480, height=320)

        canvasPadding = 20
        coord = (canvasPadding,  # Left
                 canvasPadding,  # Top
                 int(self.canvas["height"]) - canvasPadding,  # Right
                 int(self.canvas["height"]) - canvasPadding)  # Bottom
        ticks = 24
        degsPerTick = 360 / ticks
        tickPadding = .2 * degsPerTick
        self.tickArray = CircularList([None] * ticks)
        self.activeIndex = 0

        for i in range(ticks):
            # Adding 1 the the start to avoid the Tk bug where arcs that
            # start/end on multiples of 90 degrees get drawn with a circular
            # brush.  Initialized with negative starts to draw then clockwise.
            self.tickArray[i] = self.canvas.create_arc(
                coord,
                start=-(i * degsPerTick + tickPadding / 2 + 1),
                extent=(degsPerTick - tickPadding),
                outline=Colors.DARKGRAY,
                style=tk.ARC, width=15)

        self.canvas.after(1, self.AdvanceTick)

    def AdvanceTick(self, Clockwise=True, Chasers=1, Replicants=5):
        # Rather than try to be clever here and add a lot of convoluted logic to
        # figure out which exact tick to hide, darken, and lighten, simplify the
        # logic since its so few items.

        dirMultiplier = 1 if Clockwise else -1

        indexOffsets = len(self.tickArray) / (Replicants + 1)

        for r in range(Replicants + 1):
            index = self.activeIndex + int(r * indexOffsets * dirMultiplier)
            # Darken the old tick and its chasers
            for i in range(index - Chasers, index + Chasers + 1):
                self.canvas.itemconfigure(self.tickArray[i], outline=Colors.DARKGRAY)

        # Advance the index
        self.activeIndex = self.tickArray.realIndex(self.activeIndex + dirMultiplier)

        for r in range(Replicants + 1):
            index = self.activeIndex + int(r * indexOffsets * dirMultiplier)

            # Light tick
            self.canvas.itemconfigure(self.tickArray[index], outline=Colors.YELLOW)

            # Chasers
            if Chasers:
                for i in range(index - (Chasers * dirMultiplier), index, dirMultiplier):
                    self.canvas.itemconfigure(self.tickArray[i], outline="#404000")

        self.canvas.after(500, self.AdvanceTick)
