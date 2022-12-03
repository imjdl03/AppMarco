//
//  CustomMainView.swift
//  MARCO-appFrontEnd
//
//  Created by Sasha Moroz on 01/12/22.
//

import SwiftUI

struct CustomMainView: View {
    
    @State var selectedIndex = 2
    let tabBarNames = ["library.SFSymbol", "calenadar_icon.SFSymbol", "main_icon.SFSymbol", "search_icon.SFSymbol", "ar_icon.SFSymbol"]
    
    var body: some View {
        
        VStack{
            
            ZStack{
                
                switch selectedIndex {
                case 0:
                    Collections()
                    
                case 1:
                    Calendar()
            
                case 2:
                    Home()
                    
                case 3:
                    Search()
                    
                case 4:
                    AR()
                    
                default:
                    Text("Ramaining Tabs")
                    
                }
            }
            
            Spacer()
            
            HStack{
                ForEach(0..<5){ num in
    
                    Button {
                        selectedIndex = num
                    } label: {
                        Spacer()
                        Image(tabBarNames[num])
                            .imageScale(.large)
                            .font(.system(size:30, weight: .regular))
                            .foregroundColor(selectedIndex == num ? Color("AccentColor") : .gray)
                        Spacer()
                    }

                
                }
            }

        }
        
        
    }
}

struct CustomMainView_Previews: PreviewProvider {
    static var previews: some View {
        CustomMainView()
    }
}
