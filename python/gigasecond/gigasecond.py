""" Determine the moment that would be after a gigasecond has passed. """

from datetime import timedelta

GIGASECONDS = 10**9

def add(moment):
    """
    This Function determinate the time has passed after a gigasecond
    """
    delta = timedelta(seconds=GIGASECONDS)
    return moment + delta
