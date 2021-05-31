from utils.translations import translation as _

LANG = 'zh-TW'

print(_('test'))
user = input(_('who are you? '))
print(_('hello, user {username}').format(username=user))

if input(_('have you eaten anything yet? ')).startswith('y'):
    print(_('good!'))
else:
    print(_('go eat something!!'))

print(_('See you later!'))
print(_("t"))
