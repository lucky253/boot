if re.match('.*Proxy.*',window.get_active_class()):
    keyboard.send_keys("<ctrl>+a")
else:
    keyboard.send_keys("<home>")

    