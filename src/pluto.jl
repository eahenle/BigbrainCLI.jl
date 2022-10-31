module pluto

using Comonicon, Pluto
import PrecompileSignatures

@main function main(notebook="")
    if notebook ≠ ""
        Pluto.run(notebook=notebook)
    else
        Pluto.run()
    end
end

PrecompileSignatures.@precompile_signatures pluto

end
