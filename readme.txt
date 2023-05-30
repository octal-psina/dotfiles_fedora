#resolution 4 desktop and display manager
desktop:
https://docs.qtile.org/en/latest/manual/config/hooks.html#autostart
need to create file: .config/qtile/autostar.sh
chenge mode: chmod +x .config/qtile/autostar.sh
and add output from xrandr example:
xrandr --output Virtual-1 --mode 1920x1080

display manager:
https://askubuntu.com/questions/73804/wrong-login-screen-resolution
need to copy 
.config/qtile/autostar.sh
into
usr/share/lightdm.sh
then uncoment line kinda like "start script" into etc/lightdm/lightdm.conf











