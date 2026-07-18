"""
    src/pendulum.jl
    ==============

    Modèle du double pendulum

    Auteur   : [Votre nom]
    Date     : [Date de création]

    Description :
    ------------
    Ce module définit le modèle du double pendulum, un système dynamique composé de deux masses
    connectées par des barres. Le modèle est basé sur les équations de mouvement classiques.
"""

# Importez les modules nécessaires
using StaticArrays
using LinearAlgebra
using Statistics
using Plots

# Définissez les types pour les variables
struct PendulumState
    θ1::Float64  # Angle initial du premier pendulum
    ω1::Float64  # Vitesse angulaire initiale du premier pendulum
    θ2::Float64  # Angle initial du deuxième pendulum
    ω2::Float64  # Vitesse angulaire initiale du deuxième pendulum
end

# Définissez les paramètres du modèle
struct PendulumParams
    g::Float64        # Accélération de la gravité
    l::Float64        # Longueur des barres
    m1::Float64       # Masse du premier pendulum
    m2::Float64       # Masse du deuxième pendulum
end

# Définissez la fonction de mise à jour de l'état
function update_state!(state::PendulumState, params::PendulumParams, Δt::Float64)
    # Calcul de la force de tension
    F1 = -params.m1 * params.g * sin(state.θ1)
    F2 = -params.m2 * params.g * sin(state.θ2 + state.ω1 * Δt)

    # Calcul de la vitesse angulaire
    state.ω1 += (F1 + F2 * sin(state.θ1 - state.θ2)) / (params.m1 * params.l^2) * Δt
    state.ω2 += (-F2 * sin(state.θ2 - state.θ1)) / (params.m2 * params.l^2) * Δt

    # Calcul de l'angle
    state.θ1 += state.ω1 * Δt
    state.θ2 += state.ω2 * Δt
end

# Définissez la fonction de récupération de l'état
function get_state(state::PendulumState)
    return state.θ1, state.ω1, state.θ2, state.ω2
end

# Définissez la fonction de création de l'état initial
function initialize_state(params::PendulumParams)
    return PendulumState(π/2, 0.0, π/4, 0.0)
end

# Exportez les fonctions
export PendulumState, PendulumParams, update_state!, get_state, initialize_state