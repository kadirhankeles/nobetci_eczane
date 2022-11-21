class SehirListe {
  String? ilAdi;
  String? plakaKodu;
  String? alanKodu;
  String? nufus;
  String? bolge;
  String? yuzolcumu;
  String? erkekNufusYuzde;
  String? erkekNufus;
  String? kadinNufusYuzde;
  String? kadinNufus;
  String? nufusYuzdesiGenel;
  List<Ilceler>? ilceler;
  String? kisaBilgi;

  @override
  String toString() {
    return 'SehirListe{ilAdi: $ilAdi, plakaKodu: $plakaKodu, alanKodu: $alanKodu, nufus: $nufus, bolge: $bolge, yuzolcumu: $yuzolcumu, erkekNufusYuzde: $erkekNufusYuzde, erkekNufus: $erkekNufus, kadinNufusYuzde: $kadinNufusYuzde, kadinNufus: $kadinNufus, nufusYuzdesiGenel: $nufusYuzdesiGenel, ilceler: $ilceler, kisaBilgi: $kisaBilgi}';
  }

  SehirListe(
      {this.ilAdi,
      this.plakaKodu,
      this.alanKodu,
      this.nufus,
      this.bolge,
      this.yuzolcumu,
      this.erkekNufusYuzde,
      this.erkekNufus,
      this.kadinNufusYuzde,
      this.kadinNufus,
      this.nufusYuzdesiGenel,
      this.ilceler,
      this.kisaBilgi});

  SehirListe.fromJson(Map<String, dynamic> json) {
    ilAdi = json['il_adi'];
    plakaKodu = json['plaka_kodu'];
    alanKodu = json['alan_kodu'];
    nufus = json['nufus'];
    bolge = json['bolge'];
    yuzolcumu = json['yuzolcumu'];
    erkekNufusYuzde = json['erkek_nufus_yuzde'];
    erkekNufus = json['erkek_nufus'];
    kadinNufusYuzde = json['kadin_nufus_yuzde'];
    kadinNufus = json['kadin_nufus'];
    nufusYuzdesiGenel = json['nufus_yuzdesi_genel'];
    if (json['ilceler'] != null) {
      ilceler = <Ilceler>[];
      json['ilceler'].forEach((v) {
        ilceler!.add(new Ilceler.fromJson(v));
      });
    }
    kisaBilgi = json['kisa_bilgi'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['il_adi'] = this.ilAdi;
    data['plaka_kodu'] = this.plakaKodu;
    data['alan_kodu'] = this.alanKodu;
    data['nufus'] = this.nufus;
    data['bolge'] = this.bolge;
    data['yuzolcumu'] = this.yuzolcumu;
    data['erkek_nufus_yuzde'] = this.erkekNufusYuzde;
    data['erkek_nufus'] = this.erkekNufus;
    data['kadin_nufus_yuzde'] = this.kadinNufusYuzde;
    data['kadin_nufus'] = this.kadinNufus;
    data['nufus_yuzdesi_genel'] = this.nufusYuzdesiGenel;
    if (this.ilceler != null) {
      data['ilceler'] = this.ilceler!.map((v) => v.toJson()).toList();
    }
    data['kisa_bilgi'] = this.kisaBilgi;
    return data;
  }
}

class Ilceler {
  String? ilceAdi;
  String? nufus;
  String? erkekNufus;
  String? kadinNufus;
  String? yuzolcumu;

  Ilceler(
      {this.ilceAdi,
      this.nufus,
      this.erkekNufus,
      this.kadinNufus,
      this.yuzolcumu});

  Ilceler.fromJson(Map<String, dynamic> json) {
    ilceAdi = json['ilce_adi'];
    nufus = json['nufus'];
    erkekNufus = json['erkek_nufus'];
    kadinNufus = json['kadin_nufus'];
    yuzolcumu = json['yuzolcumu'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ilce_adi'] = this.ilceAdi;
    data['nufus'] = this.nufus;
    data['erkek_nufus'] = this.erkekNufus;
    data['kadin_nufus'] = this.kadinNufus;
    data['yuzolcumu'] = this.yuzolcumu;
    return data;
  }
}