import tkinter as tk
import Catdometer.UI as UI


class MainApplication(tk.Frame):
    def __init__(self, parent, *args, **kwargs):
        tk.Frame.__init__(self, parent, *args, **kwargs)
        self.parent = parent

        self.speedometer = UI.Speedometer(self)
        self.speedometer.pack(side=tk.LEFT, fill=tk.Y)

        self.odometer = UI.Odometer(self)
        self.odometer.pack(side=tk.RIGHT, fill=tk.Y)

        self.configure(bg="yellow")


if __name__ == "__main__":
    root = tk.Tk()
    root.title("Catdometer")
    root.geometry("480x320")
    root.resizable(width=tk.FALSE, height=tk.FALSE)

    MainApplication(root).pack(side=tk.TOP, fill=tk.BOTH, expand=tk.TRUE)
    root.mainloop()
