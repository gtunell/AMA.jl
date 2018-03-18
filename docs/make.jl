using Documenter, AMA
 
makedocs(modules=[AMA],
        doctest=true)
 
deploydocs(deps   = Deps.pip("mkdocs", "python-markdown-math"),
    repo = "github.com/es335mathwiz/AMA.jl.git",
    julia  = "0.5.1",
    osname = "linux")
