If the panel or monitor detects the local broker running; it'll start the game server via the broker.  This will allow you to see the server on your desktop and still manage it from the panel.  Nothing special needs to be setup, just run UgccBroker.exe.

WinBroker.exe was introduced in version 1.77.  If you servers don't start a new window with ugccbroker.exe, use winbroker.exe instead.

Broker's since version 1.82 use network sockets (3433/tcp) and work in linux.  To run just type 'mono <broker_exe_name>'.

In later version of the UGCC panel, there is an option to use the broker for each server.  If the option is not enabled; it will never start through the broker.
