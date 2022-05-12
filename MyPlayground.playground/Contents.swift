import UIKit

func Countstring(n:Int , start : Int) -> Int{
    
    if n == 0{
        return 1
    }
    var count = 0
    
    for i in start..<5{
        count = count + Countstring(n: n-1, start: i)
        
    }
    return count
}

func StringCount(n:Int) -> Int{
    
    if n == 0 {
        return 1
    }
    
    var array = [1,1,1,1,1]
    
    var sum = 0
    for _ in 0..<n-1{
        for i in 0..<5 {
            for k in i..<5{
                sum = sum + array[k]
            }
            array[i] = sum
            sum = 0
        }
    }
    sum = array.reduce(0, +)
    
    return sum
}

let final = Countstring(n: 0, start: 0)
print(final)

let result = StringCount(n: 0)
print(result)

