if re.match('.*terminal.*', window.get_active_class()):
    keyboard.send_keys("<ctrl>+j")
else:
    keyboard.send_keys("<enter>")

