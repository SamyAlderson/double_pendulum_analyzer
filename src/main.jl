# src/main.jl

"""
    main()

Fichier principal du projet double_pendulum_analyzer.
Contient les points d'entrée pour la simulation, la détection de la chaos et l'affichage des résultats.
"""
module DoublePendulumAnalyzer

using .Pendulum
using .ChaosDetection
using .Plotting
using Plots
using StatsBase
using Random

function main()
    """
    Point d'entrée pour la simulation et la détection de la chaos.
    """
    # Chargement des paramètres de simulation
    parameters = include("data/parameters.jl")

    # Initialisation des variables de simulation
    random = Random.MersenneTwister(parameters.seed)
    simulation_results = Pendulum.simulate(parameters, random)
    chaos_detected = ChaosDetection.detect_chaos(simulation_results)

    # Affichage des résultats
    Plotting.plot_results(simulation_results, chaos_detected)

    return nothing
end

# Gestion d'erreurs
function handle_error(error::String)
    """
    Gestion d'erreurs pour le projet double_pendulum_analyzer.
    """
    @error "Erreur : $error"
    return nothing
end

# Point d'entrée pour l'exécution du programme
if abspath(PROGRAM_FILE) == @__FILE__
    try
        main()
    catch e
        handle_error(string(e))
    end
end

end  # module DoublePendulumAnalyzer