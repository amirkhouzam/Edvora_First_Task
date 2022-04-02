//
//  Navigationbar.swift
//  Edvora First Round
//
//  Created by Amirkhouzam on 31/03/2022.
//

import SwiftUI


struct Navigationbar: View {
    
    
    var title = ""
    @ObservedObject var viewmodel = ViewmodelCV()
    @State private var showPopover = false
    var body: some View {
        
        ZStack{
            Color.clear
                .background(.ultraThinMaterial)
            
            Text(title)
                .font(.largeTitle.weight(.bold))
                .font(.system(size: 25))
                .frame(maxWidth : .infinity , alignment: .leading)
                .padding(.leading , 20)
            
            HStack{
                
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 36, height: 36)
                    .background(.ultraThinMaterial , in: RoundedRectangle(cornerRadius: 18, style: .continuous))
                    .scaledToFit()
                
                
            }.frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing ,20)
                .padding(.top )
            
            
            HStack{
                VStack{
                    Button("Nearest"){
                        
                    }
                    .padding()
                    .foregroundColor(.black)
                    Divider()
                        .background(.blue)
                        .padding(.horizontal , 30)
                        .frame(height: 1)
                        .foregroundColor(.blue)
                }
                
                
                Button("Upcoming"){
                    viewmodel.getupcomingdata()
                }
                .padding()
                .foregroundColor(.black)
                VStack{
                    Button("Past"){}
                    .padding()
                    .foregroundColor(.black)
                }
                Spacer()
                Button("Filter"){
                    
                }.foregroundColor(.black)
                    .padding()

                
                    
                
                
                
            }
                .padding(.top , 150)
            
            
        }.frame(height: 70)
            
        
        
    }

}


struct Navigationbar_Previews: PreviewProvider {
    static var previews: some View {
        Navigationbar()
        
        /**List{
         //Text(rides.city!)
         ForEach (0..<15) { _ in
         Text("test")
         }
         }.padding(.top )
         .frame(maxHeight: .infinity, alignment: .top)
         
         .onAppear {
         Apicaller.shared.getrides()
         }
         */
    }
    
}
