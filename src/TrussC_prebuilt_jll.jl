module TrussC_prebuilt_jll

using Artifacts

function get_artifact_path()
    return artifact"TrussC_prebuilt_jll"
end

function get_lib_path()
    libtrussc_lib = "libTrussC.so"

    @static if Sys.iswindows()
        libtrussc_lib = "libTrussC.dll"
    elseif Sys.isapple()
        libtrussc_lib = "libTrussC.dylib"
    else
        libtrussc_lib = "libTrussC.so"
    end

    p = joinpath(get_artifact_path(), "lib", libtrussc_lib)
    if isfile(p)
        return p
    else
        return nothing
    end
end

end # module TrussC_prebuilt_jll
