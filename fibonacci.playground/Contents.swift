import UIKit

func fibonacci() -> [Int]{
    var fib: [Int] = []
    var x = 0
    var y = 1
    var z = 0
    fib.append(x)
    fib.append(y)
    while z < 1000{
        z = y + x
        x = y
        y = z
        fib.append(z)
    }
    return fib
}

print(fibonacci())
