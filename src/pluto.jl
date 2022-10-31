using Pluto
if length(ARGS) == 1
    Pluto.run(notebook=joinpath(pwd(), ARGS[1]))
elseif length(ARGS) == 0
    Pluto.run()
else
    @error "Too many arguments!"
end