# test/test_chaos_detection.jl

using DoublePendulumAnalyzer
using Plots
using Statistics
using Test

@testset "Chaos Detection Tests" begin
    # Test 1: Detection of chaos with a known parameter set
    params = Dict(
        "g" => 9.81,
        "L1" => 1.0,
        "L2" => 1.0,
        "m1" => 1.0,
        "m2" => 1.0,
        "theta1_init" => π/2,
        "theta2_init" => π/4,
        "omega1_init" => 0.0,
        "omega2_init" => 0.0,
        "num_steps" => 1000,
        "t_end" => 10.0
    )
    chaos_detection_result = chaos_detection(params)
    @test chaos_detection_result == true

    # Test 2: Detection of chaos with a different parameter set
    params = Dict(
        "g" => 9.81,
        "L1" => 1.5,
        "L2" => 1.0,
        "m1" => 2.0,
        "m2" => 1.0,
        "theta1_init" => π/2,
        "theta2_init" => π/4,
        "omega1_init" => 0.0,
        "omega2_init" => 0.0,
        "num_steps" => 1000,
        "t_end" => 10.0
    )
    chaos_detection_result = chaos_detection(params)
    @test chaos_detection_result == false

    # Test 3: Detection of chaos with a known initial condition
    params = Dict(
        "g" => 9.81,
        "L1" => 1.0,
        "L2" => 1.0,
        "m1" => 1.0,
        "m2" => 1.0,
        "theta1_init" => π/2,
        "theta2_init" => π/4,
        "omega1_init" => 0.0,
        "omega2_init" => 0.0,
        "num_steps" => 1000,
        "t_end" => 10.0
    )
    params["theta1_init"] = π/3
    chaos_detection_result = chaos_detection(params)
    @test chaos_detection_result == false

    # Test 4: Detection of chaos with a different initial condition
    params = Dict(
        "g" => 9.81,
        "L1" => 1.0,
        "L2" => 1.0,
        "m1" => 1.0,
        "m2" => 1.0,
        "theta1_init" => π/2,
        "theta2_init" => π/4,
        "omega1_init" => 0.0,
        "omega2_init" => 0.0,
        "num_steps" => 1000,
        "t_end" => 10.0
    )
    params["theta2_init"] = π/3
    chaos_detection_result = chaos_detection(params)
    @test chaos_detection_result == true
end