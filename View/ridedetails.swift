//
//  ridedetails.swift
//  Edvora First Round
//
//  Created by Amirkhouzam on 03/04/2022.
//

import SwiftUI

struct ridedetails: View {
    var body: some View {
        //ScrollView {
            VStack(alignment: .center, spacing: 20) {
                Image("map")
                    .padding()
                    .padding(.trailing, 20)
                    .scaledToFit()
                    .frame(height: 180)
                HStack{
                    
                }
                
            }
            .padding()
            .background(Color.white)
        //}
    }
}

struct ridedetails_Previews: PreviewProvider {
    static var previews: some View {
        ridedetails()
    }
}
