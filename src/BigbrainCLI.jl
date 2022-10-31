module BigbrainCLI

using FIGlet
import PrecompileSignatures

banner() = FIGlet.render("BigbrainCLI", FIGlet.availablefonts()[567])

include.([
    "pluto.jl"
])

PrecompileSignatures.@precompile_signatures BigbrainCLI

end 
