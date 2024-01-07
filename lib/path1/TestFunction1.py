from robot.api import logger

def print_message(message, is_enabled: bool):
    """概要

    なんたらかんたら
    """

    print(f'* message = {message}')
    print(f'* is_enabled = {is_enabled}')
    
    if not is_enabled:
        return
    
    string = f'Test Function 1 -> {message}'
        
    log_utils(string)


def has_return_value_func(i : int, is_enabled: bool):
    """概要

    なんたらかんたら
    """

    print(f'* i = {i}')
    print(f'* is_enabled = {is_enabled}')

    if not is_enabled:
        return
    
    j = i * 2
    log_utils(f'j = {j}')

    return j


def error_occurred(generate :bool, is_enabled: bool):
    print(f'* generate = {generate}')
    print(f'* is_enabled = {is_enabled}')

    if not is_enabled:
        return
    
    if generate:
        raise AssertionError("えらーだよ")


def log_utils(message):
    logger.console(message)
    print(message)
