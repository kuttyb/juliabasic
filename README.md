# JuliaBasic

A small Julia project with a focus on allocation-free, type-stable code using multi-dispatch.

## Project setup

- `Project.toml` defines the package environment.
- `src/hello.jl` contains an example using a preallocated array.

## Coding guidelines

- Allocate all arrays and buffers up front.
- Keep functions type stable by using concrete types and avoiding `Any`.
- Prefer `Vector{T}(undef, n)` and fill in-place with `!` functions.
- Use multi-dispatch for specialized behavior instead of dynamic polymorphism.
- Avoid creating new arrays or strings in hot loops.

## Run

```bash
julia src/hello.jl
```

## Disassembly

To print the x86 assembly for `main`, run:

```bash
julia scripts/disassemble_main.jl
```
