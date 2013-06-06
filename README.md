Code Fellows Help Desk
=============================
An app a day for learning action mailer in
the form of a help desk app.

to use run 
    rails g figaro:install

then edit config/application.yml and add the following environment variables
    EMAIL_ADMIN: 'the address to send helpdesk tickets to'
    GMAIL_USERNAME: 'gmail user name'
    GMAIL_PASSWORD: 'gmail password'