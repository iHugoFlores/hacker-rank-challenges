import UIKit

func countingValleys(n: Int, s: String) -> Int {
    var prev = "*"
    var wentDown = false
    var wentUp = false
    var res = 0

    for c in s {
        if !wentDown  {
            wentDown = prev == "D" && c == "D"
            prev = String(c)
            continue
        }

        wentUp = prev == "U" && c == "U"
        prev = String(c)

        if wentUp  {
            res += 1
            wentDown = false
            wentUp = false
        }
    }
    return res
}

print(countingValleys(n: 3, s: "UDUDDDUDUUUD"))
