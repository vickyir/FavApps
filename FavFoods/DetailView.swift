//
//  DetailView.swift
//  FavFoods
//
//  Created by Vicky Irwanto on 04/03/23.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0){
           
            VStack{
                Image("GyozaImage")
            }
            .frame(minWidth: 0, maxWidth: .infinity)
        
            HStack{
                VStack(alignment: .leading, spacing: 0.0){
                    Text("Gyoza")
                        .font(.custom("Poppins-Bold", size: 22))
                        .foregroundColor(Color("Black"))
                        .padding(.bottom, 6.0)
                    Text("Meal")
                        .font(.custom("Poppins-Regular", size: 16))
                        .foregroundColor(Color("GreyPrimary"))
                }
                Spacer()
                Text("4.8")
                    .font(.custom("Poppins-Medium", size: 16))
                    .foregroundColor(Color("Black"))
                    
                Image("IconStar")
                
            }
            .padding(.top, 20.0)
            Text("Makanan asal Bandung dengan tekstur yang lembut sehingga ketika dimakan rasanya tidak sakit tenggorokan.")
                .font(.custom("Poppins-Regular", size: 16))
                .lineSpacing(5)
                .padding(.top, 16.0)
            
            Text("Bundle")
                .font(.custom("Poppins-SemiBold", size: 16))
                .foregroundColor(Color("Black"))
                .padding(.top, 20)
                .padding(.bottom, 12.0)
            HStack{
                Image("Set1")
                    .padding(.trailing, 16)
                Image("Set2")
                    .padding(.trailing, 16)
                Image("Set3")
            }
            HStack{
                VStack(alignment: .leading){
                    Text("$808.00")
                        .font(.custom("Poppins-SemiBold", size: 22))
                        .foregroundColor(Color("Black"))
                    Text("/porsi")
                        .font(.custom("Poppins-Reguler", size: 14))
                        .foregroundColor(Color("GreyPrimary"))
                }
                Spacer()
                Button(action:{
                    print("Vicky Ganteng")
                } , label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 50)
                            .frame(minWidth: 190, maxWidth: 190, minHeight: 50, maxHeight: 50)
                            .foregroundColor(Color("Orange"))
                        Text("Order Now")
                            .font(.custom("Poppins-SemiBold", size: 16))
                            .foregroundColor(Color("WhiteSecondary"))
                    }
                    
                })
            }
            .padding(.top, 32.0)
                
        }
        .padding(.horizontal, 24.0)
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
