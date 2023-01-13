using BigbrainCLI, Comonicon

function deploy(appname)
    cd(appname)
    run(
        Cmd([
            "julia"
            "--project"
            "deploy.jl"
        ])
    )
    cd("..")
end

@main function main(apps...)
    deploy.([apps...])
end
