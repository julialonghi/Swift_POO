class CarroEsportivo: Carro {
    private var velocidadeMaxima: Double 

    init(marca: String, modelo: String, senha: Int, velocidadeMaxima: Double) {
        self.velocidadeMaxima = velocidadeMaxima

        super.init(marca: marca, modelo: modelo, senha: senha)
    }

    override func acelerar() {
        print("ligando...")
        super.acelerar()
    }

    func acelerandoMaximo() {
        print("O carro está acelerando a \(velocidadeMaxima)")
    }

    func acelerar(velocidade: Int) {
        print("O \(super.getModelo()) está acelerando a \(velocidade)")
    }
}