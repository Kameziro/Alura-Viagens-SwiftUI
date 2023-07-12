import UIKit

protocol View {
    var body: View { get }
}

struct contentView : View {
    var body: View
}

class pessoa {
    //MARK: - Atributos
    var nome: String
    let sobrenome: String

    //MARK: - Metodo construtor
    init(nome: String, sobrenome: String) {
        self.nome = nome
        self.sobrenome = sobrenome
    }
}

let aluno = pessoa(nome: "Diego", sobrenome: "Souza")

let novoAluno = aluno

print("Alunos --")
print(aluno.nome)
print(novoAluno.nome)

aluno.nome = "Zé"
print(aluno.nome)
print(novoAluno.nome)

// Classe: Trabalhando com a referência do objeto = reference type


struct Pessoa {
    var nome: String
    var sobrenome :String
    var nomeCompleto: String {
        return "\(nome) \(sobrenome)"
    }
}

var aluno2 = Pessoa(nome: "Diego", sobrenome: "Silva")
let novoAluno2 = aluno2
print(aluno2.nome)
print(novoAluno2.nome)

aluno2.nome = "Zé"

print(aluno2.nome)
print(novoAluno2.nome)
print(aluno2.nomeCompleto)
