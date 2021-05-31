import inspect
import gettext
from enum import Enum


# class Languages(Enum):
#     class English(Enum):
#         US = gettext.translation('messages', 'locales', ['en_US'])


def translation(string):
    lang = inspect.currentframe().f_back.f_locals['LANG']
    print(f'Language: {lang}')
    return string
