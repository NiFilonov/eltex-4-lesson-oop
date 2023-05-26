class User {
    var name: String = ""
    var age: Int = 0
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func sendMessage(to user: User) {
        print("Сообщение отправлено пользователю \(user.name)!")
    }
}


// Вот пример наследования
class DemoUser: User {
    
    override init(name: String, age: Int) {
        super.init(name: name, age: age)
        
        self.name += " (DEMO)"
    }
    
    override func sendMessage(to user: User) {
        print("Сообщение не может быть отправлено пользователю \(user.name)!")
    }
}

let richUser = User(name: "Ilon", age: 45)
let poorUser = DemoUser(name: "Noname", age: 32)

richUser.sendMessage(to: poorUser)
poorUser.sendMessage(to: richUser)

func updateApp(to user: User) {
    print("Приложение для пользователя \(user.name) обновлено!")
}

updateApp(to: richUser)
updateApp(to: poorUser)
