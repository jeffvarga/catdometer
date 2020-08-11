import tkinter as tk

from ..utils import Colors


class Odometer(tk.Frame):
    def __init__(self, parent, *args, **kwargs):
        tk.Frame.__init__(self, parent, *args, **kwargs)
        self.parent = parent

        self.configure(bg=Colors.BLACK, width=160)
        self.pack(fill=tk.BOTH, expand=tk.TRUE)
        self.rowconfigure(0, weight=1)
        self.columnconfigure(0, weight=1)

        helv36 = tk.font.Font(family="Helvetica", size=28, weight="bold")
        lblFont = tk.font.Font(family="Helvetica", size=18)
#        self.liveSpeedLbl = self.canvas.create_text(160, 160, anchor=tk.CENTER, fill=Colors.WHITE, justify=tk.CENTER, font=helv36)
        self.l1 = tk.Label(self, text="123.45", bg=self["bg"], fg="#D6EAF8", width=160, font=helv36, bd=0, highlightthickness=0)
        self.l1.pack( pady=0)

        self.l2 = tk.Label(self, text="feet today", bg=self["bg"], fg="#3498DB", width=160, font=lblFont, bd=0, highlightthickness=0)
        self.l2.pack(pady=0)

        self.lsep = tk.Label(self, text=".", bg=self["bg"], fg=Colors.BLACK, font=lblFont)
        self.lsep.pack(pady=0)

        self.l3 = tk.Label(self, text="123.45", bg=self["bg"], fg="#D6EAF8", width=160, font=helv36, bd=0, highlightthickness=0)
        self.l3.pack( pady=0)

        self.l4 = tk.Label(self, text="total miles", bg=self["bg"], fg="#3498DB", width=160, font=lblFont, bd=0, highlightthickness=0)
        self.l4.pack(pady=0)

