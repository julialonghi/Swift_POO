import Foundation

protocol VendavelOnline {
    var preco: Double

    func adicionarAoCarrinho()
}

protocol Enviavel {
    var pesoEmGramas: Int

    func calcularCustoEnvio() -> Double
}

class LivroFisico:VendavelOnline, Enviavel {
    var titulo: String
    var autor: String
    var preco: Double
    var pesoEmGramas: Int

    init(titulo: String, autor: String, preco: Double, pesoEmGramas: Int) {
        self.titulo = titulo
        self.autor = autor
        self.preco = preco
        self.pesoEmGramas = pesoEmGramas
    }

    func adicionarAoCarrinho() {
        print("O livro \(titulo) foi adicionado ao carrinho")
    }

    func calcularCustoEnvio() -> Double {
        return (pesoEmGramas/100) * 2.5
    }
}

struct CursoOnline:VendavelOnline {
    var nome: String
    var instrutor: String
    var preco: Double

    func adicionarAoCarrinho() {
        print("Inscrição para o curso \(nome) realizada com sucesso!")
    }
}

let livro = LivroFisico(titulo: "aaa", autor: "bbb", preco: 32.50, pesoEmGramas: 10)
livro.adicionarAoCarrinho()
print(livro.calcularCustoEnvio())

let curso = CursoOnline(nome: "ccc", instrutor: "ddd", preco: 70.30)
curso.adicionarAoCarrinho()