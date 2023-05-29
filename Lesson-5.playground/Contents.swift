import UIKit

class Parent {
    var one: String = ""
    fileprivate var two: String = ""
    private var three: String = ""
}

class Child: Parent {
    
    func someFunc() {
        one = ""
        two = ""
    }
}




protocol AdminProtocol {
    func deleteUser(user: UserProtocol)
}

protocol UserProtocol {
    var name: String { get }
    var surname: String { get }
    var status: String { get set }
}

protocol FriendProtocol {
    
}

protocol PremiumProtocol {
    
}

protocol ChatProtocol {
    func aaaa()
    func sendMessage(text: String)
}

extension ChatProtocol {
    func sendMessage(text: String) {}
}

class Chat: ChatProtocol {
    func aaaa() {
        <#code#>
    }
    
}






protocol SuperUser: UserProtocol, AdminProtocol, FriendProtocol, PremiumProtocol {
    
}



class User {
    
    private(set) var name: String = ""
    
    var surname: String = ""
    
    var status: String = ""
    
    func hi() {
        name = "new Name"
    }
    
    func deleteUser(user: UserProtocol) {
        //
    }
}

var user: User = User()
user.status = "ji"



extension User {
    
    var a: Int {
        return 1
    }
    
    func hello() {
        
    }
    
}




protocol NetworkManagerProtocol {
    func fetchData()
}

class NetworkManager {
    let url = "https://...."
}

extension NetworkManager: NetworkManagerProtocol {
    func fetchData() {
        
    }
}





var age: Int = 0
var maybeAge: Int? = nil
var unsureAge: Int? = nil

age = maybeAge ?? 27
print(age)

maybeAge = unsureAge
print(maybeAge)

age = unsureAge!
print(age)
