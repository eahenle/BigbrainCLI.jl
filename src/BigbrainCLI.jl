module BigbrainCLI

using Comonicon
import PrecompileSignatures: @precompile_signatures

const BANNER = String(read(joinpath(dirname(pathof(BigbrainCLI)), "banner.txt")))
banner() = println(BANNER)

function __init__()
    banner()
end

function _deploy(appname::String)
    PWD = pwd()
    
    try
        cd(appname)
    catch exception
        @error "Could not deploy $appname" exception
    end

    try
        run(Cmd(["julia", "--project", "deploy.jl"]))
    catch exception
        @error "Could not deploy $appname" exception
    end

    cd(PWD)
end

@main function main(apps)
    _deploy.(apps)
end

deploy(apps::Vector{String}) = command_main(apps)

@precompile_signatures BigbrainCLI

export deploy

end 
