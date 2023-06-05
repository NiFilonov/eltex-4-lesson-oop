import UIKit

class User {
    let lastMessage: Message
    
    init(lastMessage: Message) {
        self.lastMessage = lastMessage
    }
}

class Message {
    let text: String
    weak let user: User?
    
    init(text: String) {
        self.text = text
    }
    
    func setUser(user: User) {
        self.user = user
    }
}

let msg = Message(text: "Hello")
let user = User(lastMessage: msg)
msg.setUser(user: user)
