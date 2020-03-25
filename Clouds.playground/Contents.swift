import UIKit

func jumpingOnClouds(c: [Int]) -> Int {
    if c.count == 0 || c.count == 1 {
        return 0
    }
    
    if c.count == 2 || c.count == 3 {
        return 1
    }
    
    var res = 0
    let totalPlaces = c.count
    var curentPlace = 0
    
    while curentPlace < totalPlaces - 1 {
        let thirdPos = curentPlace + 2 > totalPlaces - 1 ? totalPlaces - 1 : curentPlace + 2
        let currArr = c[curentPlace...thirdPos]
        if currArr.last! == 1 {
            res += 1
            curentPlace += 1
            continue
        }
        res += 1
        curentPlace += 2
    }
    
    return res
}

print(jumpingOnClouds(c: [0, 0, 0, 0, 1, 0]))
