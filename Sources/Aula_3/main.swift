import Foundation

class Carro {
    private(set) var marca: String
    private(set) var modelo: String

    init(marca: String, modelo: String) {
        self.marca = marca
        self.modelo = modelo
    }

    public func acelerar() {
        print("O carro está acelerando!")
    }

    public func frear() {
        print("O carro está freando!")
    }

    private func setMarca(marca: String) {
        self.marca = marca
    }

    public func alterarMarca(senha: Int, novaMarca: String) {
        if senha == 123 {
            self.setMarca(marca: novaMarca)
        }
    }
}

let carro1 = Carro(marca: "Fiat", modelo: "500")
print(carro1.marca)
print(carro1.modelo)

//carro1.setMarca(marca: "fiat")
//print(carro1.marca)

carro1.alterarMarca(senha: 123, novaMarca: "aa")
print(carro1.marca)