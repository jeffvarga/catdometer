import math
import tkinter as tk
import tkinter.font

from ..utils import Colors
from ..utils.CircularList import CircularList


class SpeedometerBase:
    def __init__(self, canvas: tk.Canvas, canvasPadding: int = 20, numTicks: int = 8):
        self._canvas = canvas
        self._canvasPadding = canvasPadding
        self._numTicks = numTicks
        self._tickArray = CircularList([None] * self._numTicks)
        self._activeIndex = 0

    def AdvanceTick(self, Clockwise=True, Chasers=1, Replicants=8):
        # Rather than try to be clever here and add a lot of convoluted logic to
        # figure out which exact tick to hide, darken, and lighten, simplify the
        # logic since its so few items.

        dirMultiplier = 1 if Clockwise else -1

        indexOffsets = len(self._tickArray) / (Replicants + 1)

        for r in range(Replicants + 1):
            index = self._activeIndex + int(r * indexOffsets * dirMultiplier)
            # Darken the old tick and its chasers
            for i in range(index - Chasers, index + Chasers + 1):
                self._canvas.itemconfigure(self._tickArray[i], **self.InactiveTickStyle)

        # Advance the index
        self._activeIndex = self._tickArray.realIndex(self._activeIndex + dirMultiplier)

        for r in range(Replicants + 1):
            index = self._activeIndex + int(r * indexOffsets * dirMultiplier)

            # Active tick
            self._canvas.itemconfigure(self._tickArray[index], **self.ActiveTickStyle)

            # Chasers
            if Chasers:
                for i in range(index - (Chasers * dirMultiplier), index, dirMultiplier):
                    self._canvas.itemconfigure(self._tickArray[i], **self.ChaserTickStyle)

        self._canvas.after(500, self.AdvanceTick, *(Clockwise, Chasers, Replicants))

    @property
    def InactiveTickStyle(self) -> dict:
        return {
            "outline": Colors.DARKGRAY,
            "fill": ""
        }

    @property
    def ActiveTickStyle(self) -> dict:
        return {}

    @property
    def ChaserTickStyle(self) -> dict:
        return {}


class DottedSpeedometer(SpeedometerBase):
    def __init__(self, canvas: tk.Canvas, canvasPadding: int = 20):
        SpeedometerBase.__init__(self, canvas, canvasPadding, numTicks=36)

    def InitializeTicks(self):
        rect = (self._canvasPadding,  # Left
                self._canvasPadding,  # Top
                int(self._canvas["width"]) - self._canvasPadding,  # Right
                int(self._canvas["height"]) - self._canvasPadding)  # Bottom

        degsPerTick = 360 / self._numTicks

        radius = min((rect[2] - rect[0]) / 2, (rect[3] - rect[1]) / 2)
        center = (rect[0] + (rect[2] - rect[0]) / 2,
                  rect[1] + (rect[3] - rect[1]) / 2)

        for i in range(self._numTicks):
            angle = -(i * degsPerTick)
            x = int(radius * math.sin(math.pi * 2 * angle / 360))
            y = int(radius * math.cos(math.pi * 2 * angle / 360))
            self._tickArray[i] = self._canvas.create_oval(
                center[0] + x-7, center[1] + y-7,
                center[0] + x+7, center[1] + y+7,
                **self.InactiveTickStyle,
                width=1)

    @property
    def ActiveTickStyle(self) -> dict:
        return {
            "outline": "#3498DB",
            "fill": "#2E86C1"
        }

    @property
    def ChaserTickStyle(self) -> dict:
        return {
            "outline": "#21618C",
            "fill": "#1B4F72"
        }


class DashedSpeedometer(SpeedometerBase):
    def __init__(self, canvas: tk.Canvas, canvasPadding: int = 20):
        SpeedometerBase.__init__(self, canvas, canvasPadding, numTicks=24)

    def InitializeTicks(self):
        rect = (self._canvasPadding,  # Left
                self._canvasPadding,  # Top
                int(self._canvas["width"]) - self._canvasPadding,  # Right
                int(self._canvas["height"]) - self._canvasPadding)  # Bottom

        degsPerTick = 360 / self._numTicks
        tickPadding = .2 * degsPerTick

        for i in range(self._numTicks):
            # Adding 1 the the start to avoid the Tk bug where arcs that
            # start/end on multiples of 90 degrees get drawn with a circular
            # brush.  Initialized with negative starts to draw then clockwise.
            self._tickArray[i] = self._canvas.create_arc(
                rect,
                start=-(i * degsPerTick + tickPadding / 2 + 1),
                extent=(degsPerTick - tickPadding),
                **self.InactiveTickStyle,
                style=tk.ARC, width=15)

    @property
    def ActiveTickStyle(self) -> dict:
        return {
            "outline": Colors.YELLOW,
        }

    @property
    def ChaserTickStyle(self) -> dict:
        return {
            "outline": "#404000",
        }


class Speedometer(tk.Frame):
    """
    The speedometer widget, containing the the speed readout and the circle of
    ticks.
    """
    def __init__(self, parent, *args, **kwargs):
        tk.Frame.__init__(self, parent, *args, **kwargs)
        self.parent = parent

        self.configure(bg=Colors.BLACK)

        self.canvas = tk.Canvas(self, width=kwargs["width"], height=kwargs["width"])
        self.canvas.pack(fill=tk.BOTH)
        self.canvas.configure(bg=parent["bg"], borderwidth=0, highlightthickness=0, relief=tk.FLAT)

        self._speedoHandler = DottedSpeedometer(canvas=self.canvas, canvasPadding=20)
        self._speedoHandler.InitializeTicks()
        self.canvas.after(1, self._speedoHandler.AdvanceTick, *(1, 1, 5))

        helv36 = tk.font.Font(family="Helvetica", size=72, weight="bold")
        self.liveSpeedLbl = self.canvas.create_text(160, 160, anchor=tk.CENTER, fill=Colors.WHITE, justify=tk.CENTER, font=helv36)
        self.canvas.itemconfigure(self.liveSpeedLbl, text="44.2")

        helv24 = tk.font.Font(family="Helvetica", size=20)
        self.liveSpeedUnits = self.canvas.create_text(240, 220, anchor=tk.E, fill="#4d4d4d", justify=tk.RIGHT, font=helv24)
        self.canvas.itemconfigure(self.liveSpeedUnits, text="ft/s")
