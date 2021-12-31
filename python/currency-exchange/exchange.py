"""
App for my friend Sandler to currency exchange during his trip
"""

def exchange_money(budget, exchange_rate):
    """
    This function returns exchanged value of the foreign currency
    that can receive.
    """

    return budget / exchange_rate


def get_change(budget, exchanging_value):
    """
    This function returns amount left of starting currency after exchanging.
    """

    return budget - exchanging_value


def get_value_of_bills(denomination, number_of_bills):
    """
    This function returns total value of bills that now have.
    """

    return denomination * number_of_bills


def get_number_of_bills(budget, denomination):
    """
    This function returns number of bills after exchanging all money.
    """

    return budget // denomination


def exchangeable_value(budget, exchange_rate, spread, denomination):
    """
    This function returns maximum value that can get.
    """

    exchange = exchange_rate * spread / 100 + exchange_rate
    new_value = exchange_money(budget, exchange)
    number_of_bills = get_number_of_bills(new_value, denomination)
    return get_value_of_bills(denomination, number_of_bills)


def non_exchangeable_value(budget, exchange_rate, spread, denomination):
    """
    This function returns non-exchangeable value.
    """

    exchange = exchange_rate * spread / 100 + exchange_rate
    exchangeable = exchangeable_value(budget, exchange_rate, spread, denomination)
    return (budget // exchange) - exchangeable
