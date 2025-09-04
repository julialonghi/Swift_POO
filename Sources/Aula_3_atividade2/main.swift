import Foundation 

class PerfilUsuario {
    public let id: UUID
    public let dataDeCadastro: Date
    public var nomeDeExibicao: String
    private var hashDaSenha: String

    init(nomeDeExibicao: String, senha: String) {
        self.id = UUID()
        self.dataDeCadastro = Date()
        self.nomeDeExibicao = nomeDeExibicao
        self.hashDaSenha = PerfilUsuario.hash(senha: senha)
    }

    private static func hash(senha: String) -> String {
        return senha + "_hashed"
    }

    public func alterarSenha(novaSenha: String) -> Bool {
        if novaSenha.count >= 8 {
            self.hashDaSenha = PerfilUsuario.hash(senha: novaSenha)
            return true
        } else {
            print("Erro, a nova senha deve ter pelo menos 8 caracteres")
            return false
        }
    }

    public func autenticar(senha: String) -> Bool {
        let senhaHashed = PerfilUsuario.hash(senha: senha)
        if senhaHashed == self.hashDaSenha {
            return true
        } else {
            return false
        }
    }
}

let usuario = PerfilUsuario(nomeDeExibicao: "Alex", senha: "senhaSegura123")
// print("Usuário \(usuario.nomeDeExibicao) criado com ID: \(usuario.id)")

print("\n--- Autenticação ---")
print("Login com senha correta: \(usuario.autenticar(senha: "senhaSegura123"))")

print("Login com senha incorreta: \(usuario.autenticar(senha: "senhaErrada"))")

print("\n--- Alteração de Senha ---")
let sucesso = usuario.alterarSenha(novaSenha: "novaSenhaForte456")
print("Alteração de senha bem-sucedida: \(sucesso)")

print("Login com senha antiga: \(usuario.autenticar(senha: "senhaSegura123"))")

print("Login com nova senha: \(usuario.autenticar(senha: "novaSenhaForte456"))")

let falha = usuario.alterarSenha(novaSenha: "fraca")
print("Alteração de senha bem-sucedida: \(falha)")

print("Login com nova senha (deve ser a antiga ainda): \(usuario.autenticar(senha: "novaSenhaForte456"))")