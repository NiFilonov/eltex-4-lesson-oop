
//let value = 10
//
//if value > 3 {
//    print("more")
//} else {
//    print("less")
//}


let valueOptional: Int? = 10
print(valueOptional)

//if let val = valueOptional {
//    print(val)
//} else {
//    print("else")
//}

//func printValue(_ value: Int?) {
//    guard let value = value else {
//        print("func return")
//        return
//    }
//    print(value)
//}

//if valueOptional != nil {
//    print(valueOptional)
//} else {
//    print("else")
//}




enum Color {
    case green
    case red
    case yellow
    case orange
}

enum Age {
    case young, old, dead, unborned
}


var color: Color = .yellow

switch color {
case .yellow:
    print("yellow")
case .green:
    print("green")
case .red:
    print("red")
case .orange:
    print("orange")
default:
    print("some color")
}



var age = 10

switch age {
case 0..<10:
    print("too young")
case 11...20:
    print("young")
case 60...100:
    print("old")
case 30:
    print("30")
default:
    print("---")
}


//Int.random(in: <#T##Range<Int>#>)
