import UIKit

var array = [1, 2, 3, 4, 5]
let elementsCount = array.count
print(elementsCount)

let firstElement = array.first
print(firstElement)

let isArrayEmpty = array.isEmpty
print(isArrayEmpty)

let maxArrayElement = array.max()
print(maxArrayElement)

let minArrayElement = array.min()
print(minArrayElement)





for i in 0..<array.count {
    print(array[i])
}

for element in array {
    print(element)
}





let emptyArray: [Int] = []






let dict: [String: Int] = [:]

for (key, value) in dict {
    
}



class User: Hashable {
    let name: String = ""
    
    // Equatable
    static func == (lhs: User, rhs: User) -> Bool {
        return lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
}

var messages: [User: String] = [:]




let set: Set<Int> = [1, 2, 3, 3, 3, 4, 5, 6, 6, 7]
print(set)



