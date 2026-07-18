# src/chaos_detection.jl

"""
    chaos_detection(pendulum::Pendulum, n::Int, tolerance::Float64)

Détection de la chaos dans le double pendulum.

Cette fonction utilise l'algorithme de Lyapunov pour détecter la chaos dans le système.
Elle calcule la valeur de la constante de Lyapunov pour plusieurs itérations et vérifie si elle dépasse la tolérance.

# Arguments
- `pendulum`: Le modèle du double pendulum.
- `n`: Le nombre d'itérations.
- `tolerance`: La tolérance pour la valeur de la constante de Lyapunov.

# Returns
- `true` si la chaos est détectée, `false` sinon.
"""
function chaos_detection(pendulum::Pendulum, n::Int, tolerance::Float64)
    try
        # Calcul de la constante de Lyapunov
        lyapunov = lyapunov_exponent(pendulum, n)
        return lyapunov > tolerance
    catch e
        error("Erreur lors de la détection de la chaos: $e")
    end
end

"""
    lyapunov_exponent(pendulum::Pendulum, n::Int)

Calcul de la constante de Lyapunov.

Cette fonction calcule la valeur de la constante de Lyapunov pour le système après `n` itérations.

# Arguments
- `pendulum`: Le modèle du double pendulum.
- `n`: Le nombre d'itérations.

# Returns
- La valeur de la constante de Lyapunov.
"""
function lyapunov_exponent(pendulum::Pendulum, n::Int)
    try
        # Initialisation des variables
        x = pendulum.x
        vx = pendulum.vx
        y = pendulum.y
        vy = pendulum.vy

        # Calcul de la constante de Lyapunov
        lyapunov = 0.0
        for i in 1:n
            # Mise à jour des variables
            x, vx, y, vy = pendulum.evolve(x, vx, y, vy)
            # Calcul de la valeur de la constante de Lyapunov
            lyapunov += log(abs(vx))
        end
        return lyapunov
    catch e
        error("Erreur lors du calcul de la constante de Lyapunov: $e")
    end
end

# Chargement des paramètres
include("data/parameters.jl")

# Exemple d'utilisation
pendulum = Pendulum(parameters)
n = 1000
tolerance = 0.1
if chaos_detection(pendulum, n, tolerance)
    println("La chaos est détectée.")
else
    println("La chaos n'est pas détectée.")
end