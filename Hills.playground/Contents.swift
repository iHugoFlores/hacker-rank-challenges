import UIKit

func countingValleys(n: Int, s: String) -> Int {
    var res = 0
    
    var wentDown = false
    var wentUp = false
    
    var seaLevel = 0

    for c in s {

        if !wentDown  {
            wentDown = seaLevel == 0 && c == "D"
            seaLevel += c == "U" ? 1 : -1
            continue
        }

        seaLevel += c == "U" ? 1 : -1
        wentUp = seaLevel == 0 && c == "U"
        
        if wentUp  {
            res += 1
            wentDown = false
            wentUp = false
        }

    }
    return res
}

print(countingValleys(n: 3, s: "DUDDDUUDUU"))
