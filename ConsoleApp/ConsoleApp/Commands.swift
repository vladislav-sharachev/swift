import Foundation

class Commands {
    func getEnteredText() -> String? {
        let enteredText = readLine()
        return enteredText
    }
    func addUser(_ User: [(String, String, String)]) -> [(String, String, String)] {
        var userList = User
        print("Введите имя")
        let name = getEnteredText()
        print("Введите фамилию")
        let surname = getEnteredText()
        print("Введите номер телефона")
        let phone = getEnteredText()
        
        userList.append((name!, surname!, phone!))
        return userList
    }
    
    func isStringNum(_ string: String?) -> Bool {
        return Int(string!) != nil
    }
    
    func isNumInArrayRange(_ numOfUser: Int, _ usersListCount: Int) -> Bool {
        return numOfUser < usersListCount && numOfUser >= 0
    }

    func deleteUser(_ User: [(String, String, String)]) -> [(String, String, String)] {
        var userList = User
        print("Введите порядковый номер пользователя (начинается с 0)")
        let enteredText = getEnteredText()
        
        if(isStringNum(enteredText)) {
            let numOfUser = Int(enteredText!)!
            
            if(isNumInArrayRange(numOfUser, userList.count) && !userList.isEmpty) {
                userList.remove(at: numOfUser)
            }
        }
        return userList
    }
    
    func showUsersList(_ User: [(String, String, String)]) {
        _ = User.isEmpty ? print("Список пользователей пуст") : print(User)
    }
    
    func startMessage() {
        print("""
            Что вы хотите (введите нужное число)
            1. добавить пользователя
            2. посмотреть список пользователей
            3. удалить пользователя
            Чтобы завершить работу программы введите 0
            """)
    }
}
