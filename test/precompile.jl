module Test_precompile

using Test

@testset "precompile" begin
    using BigbrainCLI
    BigbrainCLI.banner()
    @test !isnothing(BigbrainCLI)
end

end
