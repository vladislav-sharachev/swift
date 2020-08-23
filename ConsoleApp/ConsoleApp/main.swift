import Foundation

var usersList = UserStorage().usersList
var commands = Commands()
var programOn = true

while (programOn == true) {
    commands.startMessage()
    let command = commands.getEnteredText()
    switch command {
    case "0":
        programOn = false
    case "1":
        usersList = commands.addUser(usersList)
    case "2":
        commands.showUsersList(usersList)
    case "3":
        usersList = commands.deleteUser(usersList)
    default:
        print("Упс! Комманда не найдена")
    }
}
