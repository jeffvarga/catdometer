import tkinter as tk

from Catdometer.utils import Colors


class Odometer(tk.Frame):
    def __init__(self, parent, *args, **kwargs):
        tk.Frame.__init__(self, parent, *args, **kwargs)
        self.parent = parent

        self.configure(bg=Colors.RED)
