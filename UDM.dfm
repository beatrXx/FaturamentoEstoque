object DM: TDM
  OldCreateOrder = False
  Height = 1159
  Width = 845
  object conexaoBanco: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLNCLI11.1;Persist Security Info=False;User ID=sa;Init' +
      'ial Catalog=cadastro;Data Source=(local);Use Procedure for Prepa' +
      're=1;Auto Translate=True;Packet Size=4096;Workstation ID=LAPTOP-' +
      'L7QCTLPK;Initial File Name="";Use Encryption for Data=False;Tag ' +
      'with column collation when possible=False;MARS Connection=False;' +
      'DataTypeCompatibility=0;Trust Server Certificate=False;Server SP' +
      'N="";Application Intent=READWRITE;password="123456";'
    LoginPrompt = False
    Provider = 'SQLNCLI11.1'
    BeforeConnect = conexaoBancoBeforeConnect
    Left = 32
    Top = 32
  end
  object queryProduto: TADOQuery
    Connection = conexaoBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Produtos')
    Left = 128
    Top = 96
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    AfterInsert = cdsProdutoAfterInsert
    AfterPost = cdsProdutoAfterPost
    AfterCancel = cdsProdutoAfterCancel
    AfterDelete = cdsProdutoAfterDelete
    AfterScroll = cdsProdutoAfterScroll
    Left = 288
    Top = 96
    object cdsProdutocodigo: TAutoIncField
      FieldName = 'codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cdsProdutoNome: TStringField
      FieldName = 'Nome'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsProdutoDataCriacao: TDateField
      FieldName = 'DataCriacao'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoPreço: TFloatField
      FieldName = 'Pre'#231'o'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoModelo: TStringField
      FieldName = 'Modelo'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsProdutoQuantidade: TIntegerField
      FieldName = 'Quantidade'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoEspecificações: TWideMemoField
      FieldName = 'Especifica'#231#245'es'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
    end
    object cdsProdutoNacional: TBooleanField
      FieldName = 'Nacional'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = queryProduto
    Left = 208
    Top = 96
  end
  object queryFornecedor: TADOQuery
    Connection = conexaoBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Fornecedor')
    Left = 128
    Top = 152
  end
  object dspFornecedor: TDataSetProvider
    DataSet = queryFornecedor
    Left = 208
    Top = 152
  end
  object cdsFornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFornecedor'
    AfterPost = cdsFornecedorAfterPost
    AfterCancel = cdsFornecedorAfterCancel
    AfterDelete = cdsFornecedorAfterDelete
    Left = 288
    Top = 152
    object cdsFornecedoridFornecedor: TAutoIncField
      FieldName = 'idFornecedor'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cdsFornecedornome: TStringField
      FieldName = 'nome'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object queryPedido: TADOQuery
    Connection = conexaoBanco
    CursorType = ctStatic
    BeforeOpen = queryPedidoBeforeOpen
    Parameters = <
      item
        Name = 'codigo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from Pedidos where codigo = :codigo')
    Left = 128
    Top = 208
  end
  object dspPedido: TDataSetProvider
    DataSet = queryPedido
    Left = 208
    Top = 208
  end
  object cdsPedido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido'
    AfterPost = cdsPedidoAfterPost
    AfterCancel = cdsPedidoAfterCancel
    AfterDelete = cdsPedidoAfterDelete
    Left = 288
    Top = 208
    object cdsPedidoCodigoPedido: TAutoIncField
      FieldName = 'CodigoPedido'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cdsPedidocodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cdsPedidoQuantidadeProduto: TIntegerField
      FieldName = 'QuantidadeProduto'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsFornecedor: TDataSource
    DataSet = cdsFornecedor
    Left = 368
    Top = 152
  end
  object dsPedido: TDataSource
    DataSet = cdsPedido
    Left = 368
    Top = 208
  end
  object queryUsuario: TADOQuery
    Connection = conexaoBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Usuario')
    Left = 128
    Top = 264
  end
  object dspUsuario: TDataSetProvider
    DataSet = queryUsuario
    Left = 208
    Top = 264
  end
  object cdsUsuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUsuario'
    AfterPost = cdsUsuarioAfterPost
    AfterCancel = cdsUsuarioAfterCancel
    AfterDelete = cdsUsuarioAfterDelete
    Left = 288
    Top = 264
    object cdsUsuarioidUsuario: TAutoIncField
      FieldName = 'idUsuario'
      ReadOnly = True
    end
    object cdsUsuarionome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object cdsUsuariosenha: TStringField
      FieldName = 'senha'
      Size = 50
    end
  end
  object queryTela: TADOQuery
    Connection = conexaoBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Tela')
    Left = 120
    Top = 336
  end
  object queryUsuTela: TADOQuery
    Connection = conexaoBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Usuario_Tela')
    Left = 120
    Top = 408
  end
  object dspTela: TDataSetProvider
    DataSet = queryTela
    Left = 208
    Top = 344
  end
  object cdsTela: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTela'
    AfterPost = cdsTelaAfterPost
    AfterCancel = cdsTelaAfterCancel
    AfterDelete = cdsTelaAfterDelete
    Left = 288
    Top = 344
    object cdsTelaidTela: TAutoIncField
      FieldName = 'idTela'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cdsTelaNome: TStringField
      FieldName = 'Nome'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsTelaDescrição: TMemoField
      FieldName = 'Descri'#231#227'o'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
  end
  object dspUsuTela: TDataSetProvider
    DataSet = queryUsuTela
    Left = 216
    Top = 408
  end
  object cdsUsuTela: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUsuTela'
    AfterPost = cdsUsuTelaAfterPost
    AfterCancel = cdsUsuTelaAfterCancel
    AfterDelete = cdsUsuTelaAfterDelete
    Left = 304
    Top = 408
    object cdsUsuTelaidUsuario: TIntegerField
      FieldName = 'idUsuario'
    end
    object cdsUsuTelaidTela: TIntegerField
      FieldName = 'idTela'
    end
    object cdsUsuTelainserir: TBooleanField
      FieldName = 'inserir'
      ProviderFlags = [pfInUpdate]
    end
    object cdsUsuTelaalterar: TBooleanField
      FieldName = 'alterar'
      ProviderFlags = [pfInUpdate]
    end
    object cdsUsuTelaexcluir: TBooleanField
      FieldName = 'excluir'
      ProviderFlags = [pfInUpdate]
    end
    object cdsUsuTelaimprimir: TBooleanField
      FieldName = 'imprimir'
      ProviderFlags = [pfInUpdate]
    end
  end
  object queryCliente: TADOQuery
    Connection = conexaoBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Cliente')
    Left = 112
    Top = 472
  end
  object dspCliente: TDataSetProvider
    DataSet = queryCliente
    Left = 200
    Top = 472
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliente'
    AfterPost = cdsClienteAfterPost
    AfterCancel = cdsClienteAfterCancel
    AfterDelete = cdsClienteAfterDelete
    Left = 296
    Top = 472
    object cdsClienteidCliente: TAutoIncField
      FieldName = 'idCliente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cdsClientenomeCliente: TStringField
      FieldName = 'nomeCliente'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsClientecnpj: TStringField
      FieldName = 'cnpj'
      ProviderFlags = [pfInUpdate]
      EditMask = '99.999.999/9999-99;1;_'
      Size = 100
    end
    object cdsClientedtNascimento: TDateField
      FieldName = 'dtNascimento'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteendereco: TStringField
      FieldName = 'endereco'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object cdsClientecep: TStringField
      FieldName = 'cep'
      ProviderFlags = [pfInUpdate]
      EditMask = '99999-999;1;_'
      Size = 100
    end
    object cdsClientenumero: TIntegerField
      FieldName = 'numero'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClientecomplemento: TStringField
      FieldName = 'complemento'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object cdsClienteemail: TStringField
      FieldName = 'email'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object queryProdutosC: TADOQuery
    Connection = conexaoBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from ProdutosC')
    Left = 104
    Top = 544
  end
  object dspProdutosC: TDataSetProvider
    DataSet = queryProdutosC
    Left = 200
    Top = 544
  end
  object cdsProdutosC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutosC'
    AfterPost = cdsProdutosCAfterPost
    AfterCancel = cdsProdutosCAfterCancel
    AfterDelete = cdsProdutosCAfterDelete
    Left = 304
    Top = 544
    object cdsProdutosCidProduto: TAutoIncField
      FieldName = 'idProduto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cdsProdutosCProduto: TStringField
      FieldName = 'Produto'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsProdutosCValor: TFloatField
      FieldName = 'Valor'
      ProviderFlags = [pfInUpdate]
      currency = True
    end
    object cdsProdutosCqtdeEstoque: TIntegerField
      FieldName = 'qtdeEstoque'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutosCcodigoBarras: TStringField
      FieldName = 'codigoBarras'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
  end
  object queryPedidosC: TADOQuery
    Connection = conexaoBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from PedidosC')
    Left = 96
    Top = 616
  end
  object dspPedidosC: TDataSetProvider
    DataSet = queryPedidosC
    Left = 192
    Top = 616
  end
  object cdsPedidosC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedidosC'
    AfterPost = cdsPedidosCAfterPost
    AfterCancel = cdsPedidosCAfterCancel
    AfterDelete = cdsPedidosCAfterDelete
    Left = 288
    Top = 616
    object cdsPedidosCidPedido: TAutoIncField
      FieldName = 'idPedido'
      ReadOnly = True
    end
    object cdsPedidosCidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object cdsPedidosCdtCadastro: TDateField
      FieldName = 'dtCadastro'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPedidosCdtPrevistaEntrega: TDateField
      FieldName = 'dtPrevistaEntrega'
      ProviderFlags = [pfInUpdate]
    end
  end
  object queryVendasProdutos: TADOQuery
    Connection = conexaoBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'idPedido'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from VendasProdutos where idPedido = :idPedido')
    Left = 96
    Top = 672
  end
  object dspVendasProdutos: TDataSetProvider
    DataSet = queryVendasProdutos
    Left = 208
    Top = 672
  end
  object cdsVendasProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVendasProdutos'
    AfterPost = cdsVendasProdutosAfterPost
    AfterCancel = cdsVendasProdutosAfterCancel
    AfterDelete = cdsVendasProdutosAfterDelete
    Left = 312
    Top = 672
    object cdsVendasProdutosidPedido: TIntegerField
      FieldName = 'idPedido'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsVendasProdutosidProduto: TIntegerField
      FieldName = 'idProduto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsVendasProdutosQuantidade: TIntegerField
      FieldName = 'Quantidade'
      ProviderFlags = [pfInUpdate]
    end
  end
  object queryEstoque: TADOQuery
    Connection = conexaoBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from EntradasEstoque')
    Left = 88
    Top = 728
  end
  object dspEstoque: TDataSetProvider
    DataSet = queryEstoque
    Left = 152
    Top = 728
  end
  object cdsEstoque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoque'
    AfterInsert = cdsEstoqueAfterInsert
    AfterPost = cdsEstoqueAfterPost
    AfterCancel = cdsEstoqueAfterCancel
    AfterDelete = cdsEstoqueAfterDelete
    Left = 200
    Top = 728
    object cdsEstoqueidEntrada: TAutoIncField
      FieldName = 'idEntrada'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cdsEstoqueidProduto: TIntegerField
      FieldName = 'idProduto'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEstoquedataEntrada: TDateField
      FieldName = 'dataEntrada'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEstoquequantidade: TIntegerField
      FieldName = 'quantidade'
      ProviderFlags = [pfInUpdate]
    end
  end
  object queryFaturamento: TADOQuery
    Connection = conexaoBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Faturamento')
    Left = 88
    Top = 784
  end
  object dspFaturamento: TDataSetProvider
    DataSet = queryFaturamento
    Left = 168
    Top = 784
  end
  object cdsFaturamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFaturamento'
    AfterPost = cdsFaturamentoAfterPost
    AfterCancel = cdsFaturamentoAfterCancel
    AfterDelete = cdsFaturamentoAfterDelete
    Left = 248
    Top = 784
    object cdsFaturamentoidFaturamento: TIntegerField
      FieldName = 'idFaturamento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsFaturamentodataFaturamento: TDateField
      FieldName = 'dataFaturamento'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object cdsFaturamentoidCliente: TIntegerField
      FieldName = 'idCliente'
      ProviderFlags = [pfInUpdate]
    end
  end
  object queryFI: TADOQuery
    Connection = conexaoBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from FaturamentoItem')
    Left = 96
    Top = 840
  end
  object dspFI: TDataSetProvider
    DataSet = queryFI
    Left = 136
    Top = 840
  end
  object cdsFI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFI'
    AfterPost = cdsFIAfterPost
    AfterCancel = cdsFIAfterCancel
    AfterDelete = cdsFIAfterDelete
    Left = 184
    Top = 840
    object cdsFIidFaturamento: TIntegerField
      FieldName = 'idFaturamento'
    end
    object cdsFIidProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsFIidPedido: TIntegerField
      FieldName = 'idPedido'
    end
  end
  object queryP: TADOQuery
    Connection = conexaoBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'idCliente'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select P.idPedido, P.idCliente, P.dtCadastro, P.dtPrevistaEntreg' +
        'a from PedidosC P '
      
        'where P.idpedido = any(select VP.idPedido from vendasProdutos VP' +
        ' left OUTER join FaturamentoItem F on VP.idProduto = F.idproduto' +
        ' and VP.idPedido = F.idPedido'
      
        #9#9#9#9#9#9'where F.idproduto is null and F.idpedido is null) and P.id' +
        'cliente = :idCliente')
    Left = 80
    Top = 920
  end
  object dspP: TDataSetProvider
    DataSet = queryP
    Left = 144
    Top = 920
  end
  object cdsP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspP'
    Left = 208
    Top = 920
    object cdsPidPedido: TAutoIncField
      FieldName = 'idPedido'
      ReadOnly = True
    end
    object cdsPidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object cdsPdtCadastro: TDateField
      FieldName = 'dtCadastro'
    end
    object cdsPdtPrevistaEntrega: TDateField
      FieldName = 'dtPrevistaEntrega'
    end
  end
  object queryVP: TADOQuery
    Connection = conexaoBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from VendasProdutos')
    Left = 88
    Top = 992
  end
  object dspVP: TDataSetProvider
    DataSet = queryVP
    Left = 152
    Top = 992
  end
  object cdsVP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVP'
    AfterPost = cdsVPAfterPost
    AfterCancel = cdsVPAfterCancel
    AfterDelete = cdsVPAfterDelete
    Left = 224
    Top = 992
    object cdsVPidPedido: TIntegerField
      FieldName = 'idPedido'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsVPidProduto: TIntegerField
      FieldName = 'idProduto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsVPQuantidade: TIntegerField
      FieldName = 'Quantidade'
      ProviderFlags = [pfInUpdate]
    end
  end
  object queryProd: TADOQuery
    Connection = conexaoBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'idPedidoo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      ''
      'select PV.idPedido, PV.idProduto, PV.Quantidade'#9
      
        #9#9#9#9#9#9#9#9#9#9'from vendasProdutos PV left OUTER join FaturamentoItem' +
        ' FI on'
      
        #9#9#9#9#9#9#9#9#9#9'PV.idProduto = FI.idProduto and PV.idPedido = FI.idPed' +
        'ido'
      
        #9#9#9#9#9#9#9#9#9#9'where FI.idProduto is null and FI.idPedido is null and' +
        ' PV.idPedido = :idPedidoo')
    Left = 80
    Top = 1064
  end
  object dspProd: TDataSetProvider
    DataSet = queryProd
    Left = 144
    Top = 1064
  end
  object cdsProd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProd'
    Left = 216
    Top = 1064
    object cdsProdidPedido: TIntegerField
      FieldName = 'idPedido'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsProdidProduto: TIntegerField
      FieldName = 'idProduto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsProdQuantidade: TIntegerField
      FieldName = 'Quantidade'
      ProviderFlags = [pfInUpdate]
    end
  end
  object queryPRODestoque: TADOQuery
    Connection = conexaoBanco
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codigoBarras'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 200
        Value = Null
      end>
    SQL.Strings = (
      'select * from produtosC where codigoBarras = :codigoBarras')
    Left = 568
    Top = 56
  end
  object dspPRODestoque: TDataSetProvider
    DataSet = queryPRODestoque
    Left = 680
    Top = 56
  end
  object cdsPRODestoque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPRODestoque'
    AfterPost = cdsPRODestoqueAfterPost
    AfterCancel = cdsPRODestoqueAfterCancel
    AfterDelete = cdsPRODestoqueAfterDelete
    Left = 784
    Top = 56
    object cdsPRODestoqueidProduto: TAutoIncField
      FieldName = 'idProduto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cdsPRODestoqueProduto: TStringField
      FieldName = 'Produto'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsPRODestoqueValor: TFloatField
      FieldName = 'Valor'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPRODestoqueqtdeEstoque: TIntegerField
      FieldName = 'qtdeEstoque'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPRODestoquecodigoBarras: TStringField
      FieldName = 'codigoBarras'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
  end
end
