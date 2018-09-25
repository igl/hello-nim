import strformat, random

# Call randomize from the 'math' module to ensure the seed is unique
randomize()

type Field* = tuple
    x: int
    y: int
    z: int

func generateHeigthMap* (width:int, height:int, maxDepth:int) : seq[Field] =
    var fields : seq[Field] =
        @[]

    for x in 0..width:
        for y in 0..height:
            let z = rand(maxDepth)
            add(fields, (x : x, y : y, z : z))

    return fields
