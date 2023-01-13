# BigbrainCLI.jl

Collection of `Comonicon.jl` CLI apps to make my life easier.

```
julia --project deploy.jl [apps...]
```

On Linux, apps are deployed to ~/.julia/bin
    - make sure that's in the `PATH`
    - the app will use your exact current julia version; may want to alter it to use the julia at PATH
