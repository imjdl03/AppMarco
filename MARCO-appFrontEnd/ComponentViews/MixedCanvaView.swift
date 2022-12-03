//
//  MixedCanvaView.swift
//  MARCO-appFrontEnd
//
//  Created by Ingrid Chávez on 11/8/22.
//
//
import SwiftUI

struct MixedCanvaView: View {
    
    @StateObject var ArtworkVM = ArtworkViewModel()
    //ExpoVM.arrExpos
    var body: some View {
        VStack {
            ScrollView(.vertical,showsIndicators: false) {
                VStack() {
                    HStack {
                        SearchCanvaVCardView(item: ArtworkModel(id : "Generic ID", name: "Lady Liberty", author: "Pedro Reyes", description: "Descripción genérica. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", date: "20/20/2022", artworkImages: ["http://10.14.255.69:10202/Lady-Liberty_y_Lenin_as-sleeping-muse.jpg", "http://10.14.255.69:10202/REYE_MARCO_bulletin.jpg"], ar: "http://10.14.255.69:10202/liberty_smooth.usdz", iconAR: "http://10.14.255.69:10202/REYE_MARCO_bulletin.jpg", expo_ID: "63865bd293564d6448e96bdc"))
                        VStack {
                            SearchCanvaSCardView(item: ArtworkModel(id : "Generic ID", name: "Estípite", author: "Helen Escobedo", description: "Descripción genérica. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", date: "20/20/2022", artworkImages: ["http://10.14.255.69:10202/aa887416-cd69-41e3-9ad3-62a2d5b40cfd.jpeg", "http://10.14.255.69:10202/REYE_MARCO_bulletin.jpg"], ar: "http://10.14.255.69:10202/liberty_smooth.usdz", iconAR: "http://10.14.255.69:10202/REYE_MARCO_bulletin.jpg", expo_ID: "63865bd293564d6448e96bdc"))
                            SearchCanvaMCardView(item: ArtworkModel(id : "Generic ID", name: "Disarm Guitar", author: "Pedro Reyes", description: "Descripción genérica. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", date: "20/20/2022", artworkImages: ["http://10.14.255.69:10202/db6c93a5-afb7-41a0-875b-43f1faca3cf7.jpeg", "http://10.14.255.69:10202/REYE_MARCO_bulletin.jpg"], ar: "http://10.14.255.69:10202/liberty_smooth.usdz", iconAR: "http://10.14.255.69:10202/REYE_MARCO_bulletin.jpg", expo_ID: "63865bd293564d6448e96bdc"))
                        }
                    }
                    SearchCanvaHCardView(item: ArtworkModel(id : "Generic ID", name: "Philosophical Casino I", author: "Pedro Reyes", description: "Descripción genérica. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", date: "20/20/2022", artworkImages: ["http://10.14.255.69:10202/7c1c9471-35b0-4766-9358-419e58358eae.jpeg", "http://10.14.255.69:10202/REYE_MARCO_bulletin.jpg"], ar: "http://10.14.255.69:10202/liberty_smooth.usdz", iconAR: "http://10.14.255.69:10202/REYE_MARCO_bulletin.jpg", expo_ID: "63865bd293564d6448e96bdc"))
                    HStack {
                        SearchCanvaMCardView(item: ArtworkModel(id : "Generic ID", name: "Stargazer Maquette", author: "Pedro Reyes", description: "Descripción genérica. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", date: "20/20/2022", artworkImages: ["http://10.14.255.69:10202/7ebc4b2b-b857-4fc9-bcdd-78ffefe8d8b9.jpeg", "http://10.14.255.69:10202/REYE_MARCO_bulletin.jpg"], ar: "http://10.14.255.69:10202/liberty_smooth.usdz", iconAR: "http://10.14.255.69:10202/REYE_MARCO_bulletin.jpg", expo_ID: "63865bd293564d6448e96bdc"))
                        SearchCanvaMCardView(item: ArtworkModel(id : "Generic ID", name: "Anibal Catalán", author: "Helen Escobedo", description: "Descripción genérica. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", date: "20/20/2022", artworkImages: ["http://10.14.255.69:10202/78abc90f-191e-40f5-9c04-5f2e002828bf.jpeg", "http://10.14.255.69:10202/REYE_MARCO_bulletin.jpg"], ar: "http://10.14.255.69:10202/liberty_smooth.usdz", iconAR: "http://10.14.255.69:10202/REYE_MARCO_bulletin.jpg", expo_ID: "63865bd293564d6448e96bdc"))
                    }
                    SearchCanvaHCardView(item: ArtworkModel(id : "Generic ID", name: "Sobre fragmentos de montañas", author: "Helen Escobedo", description: "Descripción genérica. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", date: "20/20/2022", artworkImages: ["http://10.14.255.69:10202/3d9b8d1b-fbd2-47f4-88c6-e76e17d7b099.jpeg", "http://10.14.255.69:10202/REYE_MARCO_bulletin.jpg"], ar: "http://10.14.255.69:10202/liberty_smooth.usdz", iconAR: "http://10.14.255.69:10202/REYE_MARCO_bulletin.jpg", expo_ID: "63865bd293564d6448e96bdc"))
                }
            }
        }
        //.padding()
        .task{
            do {
                try await ArtworkVM.getArtworkData()
            }
            catch {
                print("Error MixedCanvaView")
            }
        }
    }
}

struct MixedCanvaView_Previews: PreviewProvider {
    static var previews: some View {
        MixedCanvaView()
    }
}
