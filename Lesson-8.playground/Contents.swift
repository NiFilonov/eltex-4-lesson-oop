import UIKit

var array: [Int] = [1, 2, 3, 4, 5, 6]

array.forEach { i in
    print(i)
}

let arrayOfString: [String] = array.map { number in
    return "\(number)"
}
print(arrayOfString)

let filteredArray: [Int] = array.filter { number in
    return number < 4
}
print(filteredArray)





var arrayWithOptionals: [Int?] = [1, nil, 3, 4, nil, 6]

let arrayOfStringWithOptionals: [String] = arrayWithOptionals.compactMap { number in
    return "\(number)"
}

print(arrayOfStringWithOptionals)

