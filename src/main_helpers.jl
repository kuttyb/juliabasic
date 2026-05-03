# Helper macros for main entry point behavior.

macro if_main(expr)
    return :(if abspath(PROGRAM_FILE) == @__FILE__
                $(esc(expr))
             end)
end
