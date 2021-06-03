import UIKit

struct SomeStructure {
    var familia = ""
    var name = ""
    var otchestvo = ""
    var email = ""
    var login = ""
    var password = ""
    
}
class MyClass {
    var someStructure = SomeStructure(familia:"Kuznetsov", name:"Viktor", otchestvo:"Vladimirovich", email:"kvv83@mail.ru", login:"Viktor", password:"12345")
   

    func avtoriz (email:String, password:String) ->String {
        if self.someStructure.email == email && self.someStructure.password == password
        { return "Авторизован"
    }
        else {
    return "Нет"
}
}
    func regist (familia:String, name:String, otchestvo:String, email:String, login:String, password:String,password2:String) ->String {
        someStructure.familia = familia
        someStructure.name = name
        someStructure.otchestvo = otchestvo
        someStructure.email = email
        someStructure.login = login
        someStructure.password = password
        
        if someStructure.password == password2 {return "Зарегистрирован"}
        else {
        return "Не зарегистрирован"
        }
    }
   
}

let my=MyClass()
print(my.regist(familia:"Ivanov", name: "Ivan", otchestvo: "Ivanovich", email: "1@mail.ru", login: "IvII", password: "123",password2: "1234"))
print(my.avtoriz(email: "1@mail.ru", password: "123"))


//print(my.proverca(password: my.someStructure.password))
