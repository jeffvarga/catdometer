import sys
sys.path.append(".")

import tkinter as tk
import CatdometerLib.widgets as widgets
from CatdometerLib.utils import Colors


class MainApplication(tk.Frame):
    def __init__(self, parent, *args, **kwargs):
        tk.Frame.__init__(self, parent, *args, **kwargs)
        self.parent = parent

        self.configure(bg=Colors.BLACK)

        self.speedometer = widgets.Speedometer(self, width=320, height=320)
        self.speedometer.pack(padx=0, pady=0, side=tk.LEFT)

        self.odometer = widgets.Odometer(self, width=160, height=320)
        self.odometer.pack(padx=0, pady=0, side=tk.LEFT)


if __name__ == "__main__":
    root = tk.Tk()
    root.title("Catdometer")
    root.geometry("480x320")
    root.resizable(width=tk.FALSE, height=tk.FALSE)
    #root.attributes("-fullscreen", tk.TRUE)

    MainApplication(root).pack(side=tk.TOP, fill=tk.BOTH, expand=tk.TRUE)
    root.mainloop()
