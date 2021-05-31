def _(param):
    pass


_('test')

print(_('hello, user {username}').format(username=input()))
