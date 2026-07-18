# Fichier de paramètres pour les simulations du double pendulum

"""
    data/parameters.jl

Ce fichier contient les paramètres de base pour les simulations du double pendulum.
Les valeurs peuvent être modifiées pour ajuster les conditions de simulation.
"""
mutable struct Parameters
    """
    Taille de la grille de simulation.
    La valeur minimale recommandée est de 1000.
    """
    nx::Int64
    """
    Taille de la grille de simulation.
    La valeur minimale recommandée est de 1000.
    """
    ny::Int64
    """
    Durée totale de la simulation en secondes.
    La valeur minimale recommandée est de 10.
    """
    t_max::Float64
    """
    Pas d'intégration de l'équation de mouvement.
    La valeur minimale recommandée est de 0.01.
    """
    dt::Float64
    """
    Masse du pendule principal en kilogrammes.
    La valeur minimale recommandée est de 1.
    """
    m1::Float64
    """
    Masse du pendule secondaire en kilogrammes.
    La valeur minimale recommandée est de 1.
    """
    m2::Float64
    """
    Longueur du pendule principal en mètres.
    La valeur minimale recommandée est de 1.
    """
    l1::Float64
    """
    Longueur du pendule secondaire en mètres.
    La valeur minimale recommandée est de 1.
    """
    l2::Float64
    """
    Angle initial du pendule principal en radians.
    La valeur minimale recommandée est de pi/2.
    """
    θ1_0::Float64
    """
    Angle initial du pendule secondaire en radians.
    La valeur minimale recommandée est de pi/2.
    """
    θ2_0::Float64
    """
    Vitesse angulaire initiale du pendule principal en rad/s.
    La valeur minimale recommandée est de 0.
    """
    ω1_0::Float64
    """
    Vitesse angulaire initiale du pendule secondaire en rad/s.
    La valeur minimale recommandée est de 0.
    """
    ω2_0::Float64
end

"""
    fonction pour charger les paramètres de simulation
"""
function load_parameters()
    parameters = Parameters(
        nx = 1000,
        ny = 1000,
        t_max = 10.0,
        dt = 0.01,
        m1 = 1.0,
        m2 = 1.0,
        l1 = 1.0,
        l2 = 1.0,
        θ1_0 = pi/2,
        θ2_0 = pi/2,
        ω1_0 = 0.0,
        ω2_0 = 0.0
    )
    return parameters
end

# Charger les paramètres par défaut
parameters = load_parameters()

# Afficher les paramètres chargés
println("Paramètres chargés:")
println("  nx: ", parameters.nx)
println("  ny: ", parameters.ny)
println("  t_max: ", parameters.t_max)
println("  dt: ", parameters.dt)
println("  m1: ", parameters.m1)
println("  m2: ", parameters.m2)
println("  l1: ", parameters.l1)
println("  l2: ", parameters.l2)
println("  θ1_0: ", parameters.θ1_0)
println("  θ2_0: ", parameters.θ2_0)
println("  ω1_0: ", parameters.ω1_0)
println("  ω2_0: ", parameters.ω2_0)