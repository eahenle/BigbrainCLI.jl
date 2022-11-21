#!/bin/env julia

using BigbrainCLI

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

deploy.([
    "pluto"
    "res"
])
