module BigbrainCLI

using Comonicon, FIGlet

banner() = FIGlet.render("BigbrainCLI", FIGlet.availablefonts()[567])

@cast function pluto(;notebook="")
end

@cast function resolution(command)
end

"""
Such brain. Wow. Much Big. Very computer. Wow.
"""
@main

export command_main

end 
