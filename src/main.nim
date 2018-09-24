import strformat
import types, map

# Single-line comments start with a #
echo "Creating things..."

const
    name : string =
        "test_map"

    size : MapOptions = (
        width: int(256),
        height: int(256),
        depth: float(256)
    )


echo fmt"Creating '{name}' with w: {size.width} h:{size.height}"

const canvas : MapData = generateNoise(size)
