//
//  Popover.swift
//  Edvora First Round
//
//  Created by Amirkhouzam on 02/04/2022.
//

import SwiftUI

struct Popover: View {
    @State private var showPopover = false
    var body: some View {
        
        ZStack(alignment: .trailing){
            VStack{
                Text("City")
                Text("Country")
            }
        }.frame(width: 100, height: 50, alignment: .leading)
            .background(Color.yellow)
    }
}

struct Popover_Previews: PreviewProvider {
    static var previews: some View {
        Popover()
    }
}
