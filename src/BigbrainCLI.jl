module BigbrainCLI

using Comonicon
import PrecompileSignatures: @precompile_signatures

const BANNER = String(read(joinpath(dirname(pathof(BigbrainCLI)), "banner.txt")))

function __init__()
    println(BANNER)
end

@main function command_main(apps)
    ROOT_DIR = pwd()
    for appname in apps
        try
            cd(joinpath(ROOT_DIR, appname))
            run(Cmd(["julia", "--project", "deploy.jl"]))
        catch exception
            @error "Could not deploy $appname"
            error(exception)
        end
    end
end

deploy(apps::Vector{String}) = command_main(apps)

@precompile_signatures BigbrainCLI

export deploy, command_main

end 
