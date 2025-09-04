class Carro {
    private var marca: String
    private var modelo: String
    private var senha: Int

    init(marca: String, modelo: String, senha: Int) {
        self.marca = marca
        self.modelo = modelo
        self.senha = senha
    }

    func acelerar() {
        print("O \(modelo) está acelerando")
    }

    func frear() {
        print("O \(modelo) está freando")
    }

    func getMarca() -> String {
        return self.marca
    }

    private func setMarca(marca: String) {
        self.marca = marca
    }

    public func alterarMarca(senha:Int, novaMarca: String) {
        if self.senha == senha {
            self.setMarca(marca: novaMarca)
        }
    }

    public func getModelo() -> String {
        return modelo
    }
}