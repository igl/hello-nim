import strformat, random
import types

# Call randomize from the 'math' module to ensure the seed is unique
randomize()

proc generateNoise* (options:MapOptions) : MapData =

    var map : MapData =
        (x: @[0], y: @[0], z: @[0.0])

    # Output a 20x10 grid of noise
    for y in 0..10:
        for x in 0..10:
            #echo &"{y}:{x}"
            echo rand(float(10))

    return map
