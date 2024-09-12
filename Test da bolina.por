programa
{

	inteiro bol[12]
	
	funcao inicio()
	{
		para (inteiro i = 0; i < 12; i += 1) {
			para (inteiro j = 0; j < 12; j += 1) {
				bol[j] = 0
			}
			bol[i] = 1
			primeiraPesagem()
			escreva("\n")
		}
	}

	funcao cadeia pesagem(inteiro prato1, inteiro prato2) {
		se (prato1 > prato2) {
			retorne "M"
		} senao se (prato1 < prato2) {
			retorne "m"
		} senao {
			retorne "I"
		}
	}

	funcao primeiraPesagem() {
		cadeia valor = pesagem(
			bol[0]+bol[1]+bol[2]+bol[3], 
			bol[4]+bol[5]+bol[6]+bol[7])
		se (valor == "M") {
			segundaPesagemP1(
				bol[4]+bol[5]+bol[0],
				bol[6]+bol[7]+bol[1])
		} senao se (valor == "I") {
			segundaPesagemP2(
				bol[8]+bol[9]+bol[10],
				bol[0]+bol[1]+bol[2])
		} senao se (valor == "m") {
			segundaPesagemP3(
				bol[4]+bol[5]+bol[0],
				bol[6]+bol[7]+bol[1])
		}
	}
	
	funcao segundaPesagemP1(inteiro prato1, inteiro prato2) {
		cadeia valor = pesagem(prato1, prato2)
		se (valor == "M") {
			terceiraPesagemP11(bol[6],bol[7])
		} senao se (valor == "I") {
			terceiraPesagemP12(bol[2],bol[3])
		} senao se (valor == "m") {
			terceiraPesagemP13(bol[4],bol[5])
		}
	}
	
	funcao segundaPesagemP2(inteiro prato1, inteiro prato2) {
		cadeia valor = pesagem(prato1, prato2)
		se (valor == "M") {
			terceiraPesagemP21(bol[8],bol[9])
		} senao se (valor == "I") {
			terceiraPesagemP22(bol[11],bol[0])
		} senao se (valor == "m") {
			terceiraPesagemP23(bol[8],bol[9])
		}
	}
	
	funcao segundaPesagemP3(inteiro prato1, inteiro prato2) {
		cadeia valor = pesagem(prato1, prato2)
		se (valor == "M") {
			terceiraPesagemP31(bol[4],bol[5])
		} senao se (valor == "I") {
			terceiraPesagemP32(bol[2],bol[3])
		} senao se (valor == "m") {
			terceiraPesagemP33(bol[6],bol[7])
		}
	}
	
	funcao terceiraPesagemP11(inteiro prato1, inteiro prato2) {
		cadeia valor = pesagem(prato1, prato2)
		se (valor == "M") {
			escreva("H Leve")
		} senao se (valor == "I") {
			escreva("A Pesado")
		} senao se (valor == "m") {
			escreva("G Leve")
		}
	}

	funcao terceiraPesagemP12(inteiro prato1, inteiro prato2) {
		cadeia valor = pesagem(prato1, prato2)
		se (valor == "M") {
			escreva("C Pesado")
		} senao se (valor == "m") {
			escreva("D Pesado")
		}
	}

	funcao terceiraPesagemP13(inteiro prato1, inteiro prato2) {
		cadeia valor = pesagem(prato1, prato2)
		se (valor == "M") {
			escreva("F Leve")
		} senao se (valor == "I") {
			escreva("B Pesado")
		} senao se (valor == "m") {
			escreva("E Leve")
		}
	}

	funcao terceiraPesagemP21(inteiro prato1, inteiro prato2) {
		cadeia valor = pesagem(prato1, prato2)
		se (valor == "M") {
			escreva("I Pesado")
		} senao se (valor == "I") {
			escreva("K Pesado")
		} senao se (valor == "m") {
			escreva("J Pesado")
		}
	}

	funcao terceiraPesagemP22(inteiro prato1, inteiro prato2) {
		cadeia valor = pesagem(prato1, prato2)
		se (valor == "M") {
			escreva("L Pesado")
		} senao se (valor == "m") {
			escreva("L Leve")
		}
	}

	funcao terceiraPesagemP23(inteiro prato1, inteiro prato2) {
		cadeia valor = pesagem(prato1, prato2)
		se (valor == "M") {
			escreva("J Leve")
		} senao se (valor == "I") {
			escreva("K Leve")
		} senao se (valor == "m") {
			escreva("I Leve")
		}
	}

	funcao terceiraPesagemP31(inteiro prato1, inteiro prato2) {
		cadeia valor = pesagem(prato1, prato2)
		se (valor == "M") {
			escreva("E Pesado")
		} senao se (valor == "I") {
			escreva("B Leve")
		} senao se (valor == "m") {
			escreva("F Pesado")
		}
	}

	funcao terceiraPesagemP32(inteiro prato1, inteiro prato2) {
		cadeia valor = pesagem(prato1, prato2)
		se (valor == "M") {
			escreva("D Leve")
		} senao se (valor == "m") {
			escreva("C Leve")
		}
	}

	funcao terceiraPesagemP33(inteiro prato1, inteiro prato2) {
		cadeia valor = pesagem(prato1, prato2)
		se (valor == "M") {
			escreva("G Pesado")
		} senao se (valor == "I") {
			escreva("A Leve")
		} senao se (valor == "m") {
			escreva("H Pesado")
		}
	}

}