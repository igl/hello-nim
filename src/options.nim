from re import match, re
from strformat import fmt
from os import paramStr, paramCount


let reFloat = re"\b[-+]?[0-9]*\.?[0-9]+([eE][-+]?[0-9]+)?\b"


func getArgType(str : string) : tuple[key: string, val: string] =
    if substr(str, 0,1) == "--":
        return (key: "option", val: substr(str, 2))
    elif substr(str, 0,0) == "-":
        return (key: "alias", val: substr(str, 1))
    elif match(str, reFloat):
        return (key: "number", val: str)
    else:
        return (key: "string", val: str)


type Options* = tuple
    x: int
    y: int
    z: int
    debug: bool

proc parseArgv*(skipIndex: int = 1) : Options =
    let opts : Options = (
        x : 4,
        y : 4,
        z : 4,
        debug: false
    )

    for i in skipIndex..paramCount():
        let argStr = paramStr(i)
        let argType = getArgType(argStr)

        echo fmt"{argStr}  >>>  {argType}"

    return opts
