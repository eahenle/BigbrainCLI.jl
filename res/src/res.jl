module res

using Comonicon
import PrecompileSignatures

run_command(command) = run(Cmd(String.(split(command))))

@cast single() = run_command("xrandr --output DVI-I-1 --off")

@cast double() = run_command("xrandr --output DVI-I-1 --right-of HDMI-0")

@cast home() = run_command.(["xrandr --output DVI-I-1  --mode 1920x1080", "xrandr --output HDMI-0 --mode 1920x1080"])

@cast work() = run_command.(["xrandr --output DVI-I-1 --mode 1920x1200", "xrandr --output HDMI-0 --mode 1920x1200"])

@main

PrecompileSignatures.@precompile_signatures res

end
