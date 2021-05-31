from utils.translations import _

LANG = 'zh-TW'

print(_('test'))

print(_('hello, user {username}').format(username=input()))
