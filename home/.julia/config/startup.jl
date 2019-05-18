atreplinit() do repl
  try
    @eval using OhMyREPL
  catch
    printstyled(
      stderr, "OhMyREPL is not installed, skipping load...\n";
      bold = true, color = :red
    )
  end
end
