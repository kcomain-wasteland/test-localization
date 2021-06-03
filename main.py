import random

from utils.i18n import translation as _

LANG = 'zh-TW'

for __ in range(20):
    print(_("{randnum}").format(randnum=random.randint(0, 9)), end="")

print(_('test'))
print(_('test 2 wgat'))
user = input(_('who are you? '))
print(_('hello, user {username}').format(username=user))

if input(_('have you eaten anything yet? ')).startswith('y'):
    print(_('good!'))
else:
    print(_('go eat something!!'))

print(_('See you later!'))
