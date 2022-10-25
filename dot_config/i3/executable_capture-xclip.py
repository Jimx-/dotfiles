#!/usr/bin/env python

import os
import sys
import subprocess
import i3
from urllib.parse import quote


def get_focus():
    focused = i3.filter(focused=True)
    if focused:
        return focused[0].get('name')
    return None


if __name__ == '__main__':
    out = subprocess.run(['xclip', '-o'], capture_output=True)
    content = out.stdout.decode('utf-8')
    template = len(sys.argv) > 1 and sys.argv[1] or 'c'
    print(template)
    focus = get_focus()

    if content and focus:
        command = f"xdg-open 'org-protocol://capture?template={template}&url=i3wm&title={quote(focus)}&body={quote(content)}'"
        os.system(command)
