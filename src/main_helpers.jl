# Helper macros for main entry point behavior.

macro if_main(expr)
    file = QuoteNode(__source__.file)
    return quote
        if abspath(PROGRAM_FILE) == abspath($file)
            $(esc(expr))
        end
    end
end
