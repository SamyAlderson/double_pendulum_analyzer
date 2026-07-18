# src/plotting.jl

"""
    double_pendulum_analyzer.plotting.plot_results(data::Dict, parameters::Dict)

Affiche les résultats de l'analyse du double pendulum.

# Arguments

* `data::Dict`: Données de l'analyse, contenant les résultats pour différentes configurations.
* `parameters::Dict`: Paramètres utilisés pour les simulations.

# Références
"""
function plot_results(data::Dict, parameters::Dict)

    # Vérifiez si les données sont valides
    if !isa(data, Dict)
        throw(ArgumentError("Les données doivent être un dictionnaire"))
    end

    # Vérifiez si les paramètres sont valides
    if !isa(parameters, Dict)
        throw(ArgumentError("Les paramètres doivent être un dictionnaire"))
    end

    # Chargez les packages nécessaires
    using Plots
    using StatsBase
    using Random

    # Définissez les propriétés de la figure
    p = Plots.plot(title="Double Pendulum Analyzer", xlabel="Temps", ylabel="Position", legend=:bottomright)

    # Affichez les résultats pour chaque configuration
    for (i, (key, value)) in enumerate(data)
        # Vérifiez si le résultat est un Array
        if !isa(value, Array)
            throw(ArgumentError("Les résultats doivent être un Array"))
        end

        # Affichez la courbe pour la configuration courante
        plot!(p, value, label=key)
    end

    # Affichez les paramètres utilisés pour les simulations
    annotate!(p, 0.5, 0.9, text("Paramètres utilisés : $(parameters)", :left, 12))

    # Affichez la figure
    display(p)
end

# Fonction de test pour la méthode plot_results
function test_plot_results()
    # Définissez les données de test
    data = Dict(
        "Configuration 1" => [1, 2, 3, 4, 5],
        "Configuration 2" => [6, 7, 8, 9, 10]
    )

    # Définissez les paramètres de test
    parameters = Dict(
        "longueur" => 1.0,
        "masse" => 1.0
    )

    # Appelez la méthode plot_results
    plot_results(data, parameters)
end

# Appelez la fonction de test
test_plot_results()