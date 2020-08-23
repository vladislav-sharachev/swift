import Foundation

class Commands {
    func getEnteredText() -> String? {
        let enteredText = readLine()
        return enteredText
    }
    func addUser(_ users: [(String, String, String)]) -> [(String, String, String)] {
        var usersList = users
        print("Введите имя")
        let name = getEnteredText()
        print("Введите фамилию")
        let surname = getEnteredText()
        print("Введите номер телефона")
        let phone = getEnteredText()
        
        usersList.append((name!, surname!, phone!))
        return usersList
    }
    
    func isStringNum(_ string: String?) -> Bool {
        return Int(string!) != nil
    }
    
    func isNumInArrayRange(_ numOfUser: Int, _ usersListCount: Int) -> Bool {
        return numOfUser < usersListCount && numOfUser >= 0
    }

    func deleteUser(_ users: [(String, String, String)]) -> [(String, String, String)] {
        var usersList = users
        print("Введите порядковый номер пользователя (начинается с 0)")
        let enteredText = getEnteredText()
        
        if(isStringNum(enteredText)) {
            let numOfUser = Int(enteredText!)!
            
            if(isNumInArrayRange(numOfUser, usersList.count) && !usersList.isEmpty) {
                usersList.remove(at: numOfUser)
            }
        }
        return usersList
    }
    
    func showUsersList(_ users: [(String, String, String)]) {
        _ = users.isEmpty ? print("Список пользователей пуст") : print(users)
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
