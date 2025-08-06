User Function moeda()
	Local aOpcoes := {"Converter de BRL pra USD"}
	Local nOpcao, nValorBRL, nCotacaoUSD, nResultadoUSD

// Mostra o Menu
	If MsgYesNo("Deseja converter moeda?", "Conversor")
		nOpcao := 1
	Else
		nOpcao := 0
	EndIf



// Verifica se o usuario escolheu a opcao ou cancelou
	If nOpcao == 0
		MsgInfo("Operação cancelada pelo usuário.", "Conversor")
		Return
	EndIf

// Solicita o valor em BRL
	nValorBRL := Val(FWInputBox("Digite o valor em BRL:", "Conversor"))


// Define cotacao fixa (1 USD = 5.50 BRL)
	nCotacaoUSD := 5.50

// Fará a conversão
	nResultado := nValorBRL / nCotacaoUSD

	MsgInfo("Valor em USD: $" + Str(nResultadoUSD, 10, 2), "Conversor")
Return

