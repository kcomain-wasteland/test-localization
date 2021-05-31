from utils.translations import translation as _

LANG = 'zh-TW'

print(_('test'))

print(_('hello, user {username}').format(username=input()))
