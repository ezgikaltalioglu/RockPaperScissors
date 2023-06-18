import Foundation

func getComputerChoice() -> String {
    let choices = ["Taş", "Kağıt", "Makas"]
    let randomIndex = Int.random(in: 0..<choices.count)
    return choices[randomIndex]
}

func determineWinner(userChoice: String, computerChoice: String) -> String {
    if userChoice == computerChoice {
        return "Berabere! Hem sen hem de bilgisayar \(userChoice) seçtiniz."
    } else if (userChoice == "Taş" && computerChoice == "Makas") ||
              (userChoice == "Kağıt" && computerChoice == "Taş") ||
              (userChoice == "Makas" && computerChoice == "Kağıt") {
        return "Tebrikler! Sen kazandın. \(userChoice) \(computerChoice)'ı yener."
    } else {
        return "Maalesef kaybettin. Bilgisayar \(computerChoice) seçti ve sen \(userChoice) seçtin."
    }
}



//print("Taş, kağıt, makas! Bir seçim yap: ")
//let userChoice = readLine()
let userChoice = getComputerChoice()
print("Taş, kağıt, makas! \nBir seçim yap: \(userChoice)")


let computerChoice = getComputerChoice()


let result = determineWinner(userChoice: userChoice , computerChoice: computerChoice)
print(result)
