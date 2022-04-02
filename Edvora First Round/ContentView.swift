//
//  ContentView.swift
//  Edvora First Round
//
//  Created by Amirkhouzam on 31/03/2022.
//

import SwiftUI


struct ContentView: View {
    
    
    
    
    @ObservedObject var viewmodel = ViewmodelCV()
    @State private var showPopover = false
    var body: some View {
        
        VStack{
            Navigationbar(title: "Edvora")
                .frame(maxHeight: .infinity, alignment: .top)
            
                
            List(viewmodel.ride){ ride in
                VStack{
                    HStack{
                        Image("map")
                            .resizable()
                            .renderingMode(.original)
                            .scaledToFill()
                        
                        
                    }.frame(height: 170, alignment: .center)
                    HStack{
                        
                        Text("#  \(ride.id ?? 0)" )
                            .padding()
                            .frame(height: 50)
                        Spacer()
                        Text("\(viewmodel.Getdate(datess: ride.date))")
                            .padding()
                            .frame(height: 50)
                    }
                    
                }.frame( height: 250)
                Spacer()
                NavigationLink(
                    destination: ridedetails()){
                    EmptyView()
                }
                
            }
            .frame(maxHeight: .infinity, alignment: .top)
            .padding(.top )
            .frame(height: UIScreen.main.bounds.height - 200, alignment: .top)
            
            
        }
        
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
            ContentView()
        }
    }
    
}

