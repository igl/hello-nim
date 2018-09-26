from math import round

const MAX_FLOAT_PRECISION = 1000

func floatToInt (x : float) : int =
    int(round(x * MAX_FLOAT_PRECISION))

func isEven* (x : int) : bool =
    (x %% 2) == 0

func isOdd* (x : int) : bool =
    not isEven(x)

# overload with for floats
func isEven* (x : float) : bool =
    isEven(floatToInt(x))

func isOdd* (x : float) : bool =
    not isEven(floatToInt(x))
