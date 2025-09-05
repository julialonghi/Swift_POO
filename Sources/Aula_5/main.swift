import Foundation

protocol Rastreavel {
    func obterLocalizacao() -> String 
}

class  Veiculo {
    var velocidade: Double = 0.0

    init(velocidade: Double) {
        self.velocidade = velocidade
    }

    func acelerar() {
        velocidade += 10
        print("Veículo acelerando para \(velocidade) km/h")
    } 
}

class CarroDeEntrega:Veiculo, Rastreavel {
    var placa: String

    init(placa: String, velocidade: Double) {
        self.placa = placa
        super.init(velocidade: velocidade)
   }

   override func acelerar() {
        velocidade += 5
        print("Veículo acelerando para \(velocidade) km/h")
   }

   func obterLocalizacao() -> String {
        return "A localização do carro é xxx e sua placa é \(placa)"
   }
}

let carro = CarroDeEntrega(placa: "12f46", velocidade: 75)
carro.acelerar()
print(carro.obterLocalizacao())