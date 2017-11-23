#!/usr/bin/env python
workon env
"""
Command-line utility for administrative tasks.
"""

import os
import sys
sys.path.append('./env/lib/site-packages')

import pymysql
pymysql.install_as_MySQLdb()

if __name__ == "__main__":
    os.environ.setdefault(
        "DJANGO_SETTINGS_MODULE",
        "django_get_started.settings"
    )

    from django.core.management import execute_from_command_line

    execute_from_command_line(sys.argv)
