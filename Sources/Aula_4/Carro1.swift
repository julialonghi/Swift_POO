class Carro1: Veiculo {
    var numeroDePortas: Int

    init(marca: String, ano: Int, numeroDePortas: Int) {
        self.numeroDePortas = numeroDePortas
        super.init(marca: marca, ano: ano)
    }

    override func apresentar() {
        print("Marca: \(marca), Ano: \(ano), Portas: \(numeroDePortas)")
    }

    override func detalhes() -> String{
        return "Esse é um carro de \(numeroDePortas) portas"
    }
}