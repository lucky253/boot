if re.match('.*terminal.*', window.get_active_class()):
    keyboard.send_keys("<alt>+d")
else:
    keyboard.send_keys("<ctrl>+<delete>")

