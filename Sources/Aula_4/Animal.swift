import Foundation

class Animal {
    let nome: String
    var idade: Int

    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
    }

    func dormir() {
        print("O \(self.nome) está dormindo")
    }

    public func emitirSom() {

    }
}
