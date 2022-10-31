module BigbrainCLI

using FIGlet
import PrecompileSignatures: @precompile_signatures

banner() = FIGlet.render("BigbrainCLI", FIGlet.availablefonts()[567])

function __init__()
    banner()
end

@precompile_signatures BigbrainCLI

end 
