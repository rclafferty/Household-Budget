import smtplib as smtp

server = smtp.SMTP_SSL('smtp.gmail.com', 465)

server.login("user@domain.com", "password")

from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart

from_addr = "user@domain.com"

import sys

to_addr = sys.argv[1]
user = sys.argv[2]
passcode = sys.argv[3]

msg = MIMEMultipart()
msg['From'] = from_addr
msg['To'] = to_addr
msg['Subject'] = "Welcome to the Household Budget Assistance System"

body = """Welcome!

I'm glad to have you a part of the team. Your account has been created and your information is below:

%-25s        %s
%-25s %s

Enjoy!

- Casey
""" % ("Username:", user, "Temporary Password:", passcode)

msg.attach(MIMEText(body, 'plain'))

server.sendmail(from_addr, [to_addr], msg.as_string())