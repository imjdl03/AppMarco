//
//  Calendar.swift
//  MARCO-appFrontEnd
//
//  Created by Ingrid Chávez on 10/20/22.
//

import SwiftUI

struct Calendar: View {
    var body: some View {
        VStack{
            VScrollGrandeView(title: "Eventos")
        }
    }
}

struct Calendar_Previews: PreviewProvider {
    static var previews: some View {
        Calendar()
    }
}

