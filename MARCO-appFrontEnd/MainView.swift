//
//  mainView.swift
//  MARCO-appFrontEnd
//
//  Created by Jorge on 10/17/22.
//

import SwiftUI

struct MainView: View {
    
   // let tabBarNames = ["library.SFSymbol", "calenadar_icon.SFSymbol", "main_icon.SFSymbol", "search_icon.SFSymbol", "ar_icon.SFSymbol"]
    
    var body: some View {
        TabView{

            Collections()
                .tabItem{
                    Image("library.SFSymbol")
                }
            
            Calendar()
                .tabItem{
                    Image("calenadar_icon.SFSymbol")
                }
            
            Home()
                .tabItem{
                    Image("main_icon.SFSymbol")
                }
            
            Search()
                .tabItem{
                    Image("search_icon.SFSymbol")
                }
            
            AR()
                .tabItem {
                    Image("ar_icon.SFSymbol")
                }
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
