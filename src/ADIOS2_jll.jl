# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule ADIOS2_jll
using Base
using Base: UUID
using LazyArtifacts
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("ADIOS2")
JLLWrappers.@generate_main_file("ADIOS2", UUID("44b1415a-b224-5c99-9168-ff4febb5f37f"))
end  # module ADIOS2_jll
