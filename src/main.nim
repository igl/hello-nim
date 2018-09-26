from strformat import fmt
from map import generateHeigthMap, Field
from options import parseArgv, Options

const
    name     : string = "test_map"
    width    : int = 4
    height   : int = 4
    maxDepth : int = 4

let opts : Options = parseArgv()

echo fmt"Creating '{name}' ({opts})"
echo "..."

var canvas : seq[Field] =
    generateHeigthMap(width, height, maxDepth)

for f in canvas:
    echo fmt"x:{f.x} y:{f.y} z:{f.z}"
