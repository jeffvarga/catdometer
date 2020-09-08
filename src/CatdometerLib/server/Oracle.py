from abc import ABC, abstractmethod
from typing import Type


class Advisable(ABC):
    @abstractmethod
    def TickEvent(self):
        pass


class Oracle:
    """
    The Oracle stores historical and contemporary data gathered from the
    sensors, and accepts new data as it comes in.  It also handles connections
    to back-end storage.
    """
    def __init__(self):
        self.ticks = list()
        self._adviseList = set()

    def Advise(self, cls: Type[Advisable]) -> None:
        """
        Informs the Oracle of a listener that wants to know about important
        events.

        :param cls: The object that will receive notifications.
        :return: None
        """
        self._adviseList.add(cls)

    def Unadvise(self, cls: Type[Advisable]) -> None:
        """
        Removes the specified listener from the oracles advise list.

        :param cls: The object to no longer receive notifications.
        :return: None
        """
        if cls in self._adviseList:
            self._adviseList.remove(cls)

    def IncrementTick(self, direction) -> None:
        self.ticks.append(direction)

        x: Type[Advisable]
        for x in self._adviseList:
            x.TickEvent()
