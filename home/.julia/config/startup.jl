packagesToLoad = Dict{String,Function}(
  "OhMyREPL" => () -> @async begin
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
      fn()
    catch exception
      printstyled(
        "Error loading $name\n$(sprint(showerror, exception))\n",
        bold = true, color = :red
      )
    end
  end
end
