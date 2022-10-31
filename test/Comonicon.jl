module Test_Comonicon

using BigbrainCLI, Test

@testset verbose = true "Comonicon" begin
    @test typeof(command_main) <: Function
end

end
