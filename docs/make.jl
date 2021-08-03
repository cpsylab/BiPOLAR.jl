using Lithium
using Documenter

DocMeta.setdocmeta!(Lithium, :DocTestSetup, :(using Lithium); recursive=true)

makedocs(;
    modules=[Lithium],
    authors="Abraham Nunes",
    repo="https://github.com/abrahamnunes/Lithium.jl/blob/{commit}{path}#{line}",
    sitename="Lithium.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://abrahamnunes.github.io/Lithium.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/abrahamnunes/Lithium.jl",
)
