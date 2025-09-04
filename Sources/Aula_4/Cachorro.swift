import Foundation
class Cachorro: Animal{
    override func emitirSom() {
        print("Au Au")
    }

    func emitirSom(nome: String) {
        print("O \(nome) está rosnando")
    }
}