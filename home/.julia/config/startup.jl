development_path = join([ homedir(), "Projects", "julia" ], "/")
ENV["JULIA_PKG_DEVDIR"] = development_path
push!(LOAD_PATH, development_path)

packagesToLoad = Dict{String,Function}(
  "OhMyREPL" => () -> begin
    @eval using OhMyREPL
  end,

  "Revise" => () -> begin
    @eval using Revise
    @async Revise.wait_steal_repl_backend()
  end
)

atreplinit() do repl
  foreach(packagesToLoad) do (name, fn)
    try
      @async fn()
    catch exception
      printstyled(
        "Error loading $name\n$(sprint(showerror, exception))\n",
        bold = true, color = :red
      )
    end
  end
end
