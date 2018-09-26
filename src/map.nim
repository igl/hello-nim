import strformat, random

randomize()

type Field* = tuple
    x: int
    y: int
    z: int

func generateHeigthMap* (width:int, height:int, maxDepth:int) : seq[Field] =
    result = @[]

    for x in 0..width:
        for y in 0..height:
            let z = rand(maxDepth)
            add(result, (x : x, y : y, z : z))
