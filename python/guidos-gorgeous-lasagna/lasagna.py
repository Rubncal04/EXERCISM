"""We're going to write some code to help cook a gorgeous lasagna"""

EXPECTED_BAKE_TIME = 40

PREPARATION_TIME = 2


def bake_time_remaining(time):
    """
    This function takes the actual minutes the lasagna has been in the oven as
    an argument and returns how many minutes the lasagna still needs to bake
    based on the EXPECTED_BAKE_TIME.
    """

    return EXPECTED_BAKE_TIME - time


def preparation_time_in_minutes(layers):
    """
    This function takes the number of layers you want to add to the lasagna as
    an argument and returns how many minutes you would spend making them.
    Assuming each layer takes 2 minutes to prepare.
    """

    return layers * PREPARATION_TIME


def elapsed_time_in_minutes(number_of_layers, time):
    """
    Return elapsed cooking time.

    This function takes two numbers representing the number of layers & the
    time already spent baking and calculates the total elapsed minutes spent
    cooking the lasagna.
    """

    return preparation_time_in_minutes(number_of_layers) + time
