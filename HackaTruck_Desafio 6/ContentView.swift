//
//  ContentView.swift
//  HackaTruck_Desafio 6
//
//  Created by Turma02-24 on 29/03/25.
//

import SwiftUI
import MapKit

struct Location : Hashable {
    let nome: String
    let foto: String
    let desc: String
    let lat: Double
    let lon: Double
}

struct ContentView: View {
    @State var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -19.912998, longitude: -43.940933),
            span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: -1)
        )
    )
    
    @State var selecionado: Location?
    
    @State var locais = [
        Location(nome: "Belo Horizonte", foto: "https://blog.vprimoveis.com.br/wp-content/uploads/2018/07/221299-conheca-5-curiosidades-incriveis-sobre-bh.jpg", desc: "Belo Horizonte é a capital do estado de Minas Gerais, localizada na região Sudeste do Brasil. Fundada em 1897, a cidade tem uma população de cerca de 2,5 milhões de habitantes e é a sexta maior cidade do país em termos de população.", lat: -19.912998, lon: -43.940933),
        Location(nome: "São Paulo", foto: "https://upload.wikimedia.org/wikipedia/commons/4/4b/São_Paulo_-_Vista_do_Morro_do_Farellone.jpg", desc: "São Paulo é a maior cidade do Brasil e a capital do estado de São Paulo. Com uma população de aproximadamente 12 milhões de habitantes, é o maior centro financeiro da América Latina e um dos mais influentes do mundo.", lat: -23.550520, lon: -46.633308),
        Location(nome: "Rio de Janeiro", foto: "https://upload.wikimedia.org/wikipedia/commons/e/e8/Pão_de_Açúcar_2020.jpg", desc: "Rio de Janeiro é uma das cidades mais famosas do Brasil, conhecida por suas belas praias e o Cristo Redentor.", lat: -22.906847, lon: -43.172896),
        Location(nome: "Salvador", foto: "https://upload.wikimedia.org/wikipedia/commons/9/9b/Farol_da_Bahia.jpg", desc: "Salvador é a capital da Bahia, localizada no nordeste do Brasil. Conhecida por sua história, cultura e o famoso Carnaval, a cidade é um importante centro turístico e cultural.", lat: -12.971404, lon: -38.501305),
        Location(nome: "Brasília", foto: "https://upload.wikimedia.org/wikipedia/commons/5/59/Panorama_de_Bras%C3%ADlia.jpg", desc: "Brasília é a capital do Brasil e foi planejada para ser a sede do governo. Inaugurada em 1960, a cidade é um exemplo de urbanismo moderno.", lat: -15.780148, lon: -47.929221),
        Location(nome: "Manaus", foto: "https://upload.wikimedia.org/wikipedia/commons/a/a6/Manaus_panoramica.jpg", desc: "Manaus é a capital do estado do Amazonas, localizada no coração da floresta amazônica. É um ponto de acesso para explorar a Amazônia e tem uma rica cultura indígena e amazônica.", lat: -3.119027, lon: -60.201745),
        Location(nome: "Rio Grande do Sul", foto: "https://upload.wikimedia.org/wikipedia/commons/3/32/Ilha_de_Maraj%C3%B3_-_Vista_do_Mar.jpg", desc: "O Rio Grande do Sul é um estado localizado na região Sul do Brasil, conhecido por suas tradições gaúchas, vinhos e paisagens de campo e montanhas.", lat: -30.033611, lon: -51.230000),
        Location(nome: "Goiás", foto: "https://upload.wikimedia.org/wikipedia/commons/9/91/Pal%C3%A1cio_do_Governo_do_Estado_de_Goi%C3%A1s.jpg", desc: "Goiás é um estado brasileiro localizado no Centro-Oeste do país. Sua capital é Goiânia, uma cidade com forte crescimento e desenvolvimento econômico.", lat: -16.686783, lon: -49.264681)
    ]

    var body: some View {
        ZStack(){
            Map(position: $position)
                .edgesIgnoringSafeArea(.all)
            VStack(){
                Picker("Selecione um Local", selection: $locais) {
                    ForEach(locais, id: \.self) { local in
                        Text(local.nome)
                    }
                }
                .pickerStyle(MenuPickerStyle())
                .padding(.vertical, 10)
                .padding(.horizontal, 50)
                .background()
                .cornerRadius(10)
                .accentColor(.black)
                Spacer()
            }
        }
        
    }
}

#Preview {
    ContentView()
}
