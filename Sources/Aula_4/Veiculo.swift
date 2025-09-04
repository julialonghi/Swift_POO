class Veiculo {
    var marca: String
    var ano: Int

    init(marca: String, ano: Int) {
        self.marca = marca
        self.ano = ano
    }

    func apresentar() {
        print("Marca: \(self.marca), Ano: \(self.ano)")
    }

    func detalhes() -> String {
        return "Esse é um veículo"
    }
}