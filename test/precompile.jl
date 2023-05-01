module Test_precompile

using Test

@testset "precompile" begin
    using BigbrainCLI
    @test !isnothing(BigbrainCLI)
end

end
