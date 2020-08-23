import Foundation

var userList = UserStorage().usersList
var commands = Commands()
var programOn = true

while (programOn == true) {
    commands.startMessage()
    let commandType = commands.getEnteredText()
    switch commandType {
    case "0":
        programOn = false
    case "1":
        userList = commands.addUser(userList)
    case "2":
        commands.showUsersList(userList)
    case "3":
        userList = commands.deleteUser(userList)
    default:
        print("Упс! Комманда не найдена")
    }
}
