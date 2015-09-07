# map external-keyboard caps to ctrl:  
# http://superuser.com/questions/741328/how-do-i-remap-the-caps-lock-key-in-chrome-os

1. Navigate to the keyboard settings overlay (chrome://settings/keyboard-overlay)
2. Right click on "Alt" and choose Inspect Element
3. Find the line <tr id="caps-lock-remapping-section" hidden="">, double click on hidden, and press delete, so that it reads <tr id="caps-lock-remapping-section">
4. Press Enter to commit the change
5. The Caps Lock functionality should now be visible!
