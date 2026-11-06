# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule PETSc_CUDA_jll
using Base
using Base: UUID
using LazyArtifacts
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("PETSc_CUDA")
JLLWrappers.@generate_main_file("PETSc_CUDA", Base.UUID("d68ba6a2-680a-542a-8c53-8e2da8b9c186"))
end  # module PETSc_CUDA_jll
