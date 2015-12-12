if re.match('.*terminal.*', window.get_active_class()):
    keyboard.send_keys("<alt>+c")
else:
    keyboard.send_keys("<ctrl>+c")

