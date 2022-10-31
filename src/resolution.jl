# monitor resolution
function bigbrain () {
    err=0

    if [ $# -eq 2 ]; then

        if [ $1 = "res" ]; then

            if [ $2 = "home" ]; then
                xrandr --output DVI-I-1  --mode 1920x1080
                xrandr --output HDMI-0 --mode 1920x1080

            elif [ $2 = "work" ]; then
                xrandr --output DVI-I-1 --mode 1920x1200
                xrandr --output HDMI-0 --mode 1920x1200

            elif [ $2 = "single" ]; then
                xrandr --output DVI-I-1 --off

            elif [ $2 = "double" ]; then
                xrandr --output DVI-I-1 --right-of HDMI-0

            else
                err=1
            fi
        else
            err=1
        fi
    else
        err=1
    fi

    if [ $err -ne 0 ]; then
        echo "FLAGRANT SYSTEM ERROR"
    fi
    return $err
}
