# TrussC_prebuilt_jll

**NOTE**: This repository is not registered in public package manager, so you need to add this via `pkg> add https://github.com/xxx/yyy.git` etc.

## Usage

see https://github.com/funatsufumiya/TrussCTest.jl

```bash
julia --project=@. -e 'using TrussC_prebuilt_jll; println(TrussC_prebuilt_jll.get_lib_path())'
```

## Develop

see https://github.com/funatsufumiya/TrussC_prebuilt_jll_packager.jl

### Check

```julia
julia> using ArtifactUtils

julia> import Pkg; path = Pkg.ensure_artifact_installed("TrussC_prebuilt_jll", "Artifacts.toml")
"C:\\Users\\xxx\\.julia\\artifacts\\xxxxxxx"

julia> path
"C:\\Users\\xxx\\.julia\\artifacts\\xxxxxxx"

julia> readdir(path)
3-element Vector{String}:
 "include"
 "lib"
 "share"

julia> readdir(joinpath(path, "lib"))
1-element Vector{String}:
 "libJlTrussC.dll"
```
