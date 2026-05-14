module TrussC_prebuilt_jll

using Artifacts

function get_artifact_path()
    return artifact"TrussC_prebuilt_jll"
end

function get_lib_path()
    libui_lib = "libTrussC.so"

    @static if Sys.iswindows()
        libui_lib = "libTrussC.dll"
    elseif Sys.isapple()
        libui_lib = "libTrussC.dylib"
    else
        libui_lib = "libTrussC.so"
    end

    p = joinpath(get_artifact_path(), "lib", libui_lib)
    if isfile(p)
        return p
    else
        return nothing
    end
end

end # module TrussC_prebuilt_jll
