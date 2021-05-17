class ShippingModel {
  int numero;
  String dataSaida;
  String dataChegada;
  String localSaida;
  String localChegada;
  bool recebida;
  int qtdDoses;
  int qtdDosesReceb;
  String respEnvio;
  String respReceb;
  String descricao;

  ShippingModel(
      {this.numero,
      this.dataSaida,
      this.dataChegada,
      this.localSaida,
      this.localChegada,
      this.recebida,
      this.qtdDoses,
      this.qtdDosesReceb,
      this.respEnvio,
      this.respReceb,
      this.descricao});

  ShippingModel.fromJson(Map<String, dynamic> json) {
    numero = json['numero'];
    dataSaida = json['data_saida'];
    dataChegada = json['data_chegada'];
    localSaida = json['local_saida'];
    localChegada = json['local_chegada'];
    recebida = json['recebida'];
    qtdDoses = json['qtd_doses'];
    qtdDosesReceb = json['qtd_doses_receb'];
    respEnvio = json['resp_envio'];
    respReceb = json['resp_receb'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['numero'] = this.numero;
    data['data_saida'] = this.dataSaida;
    data['data_chegada'] = this.dataChegada;
    data['local_saida'] = this.localSaida;
    data['local_chegada'] = this.localChegada;
    data['recebida'] = this.recebida;
    data['qtd_doses'] = this.qtdDoses;
    data['qtd_doses_receb'] = this.qtdDosesReceb;
    data['resp_envio'] = this.respEnvio;
    data['resp_receb'] = this.respReceb;
    return data;
  }
}
