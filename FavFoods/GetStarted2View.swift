//
//  GetStarted2View.swift
//  FavFoods
//
//  Created by Vicky Irwanto on 04/03/23.
//

import SwiftUI

struct GetStarted2View: View {
    var body: some View {
        VStack(spacing: 0.0){
            Text("Order Your\nFavorite Foods")
                .font(.custom("Poppins-Bold", size: 26))
                .multilineTextAlignment(.center)
                .padding(.bottom,10.0)
            Text("Sign up to get your foods faster\nand better than before")
                .font(.custom("Poppins-Regular", size: 16))
                .multilineTextAlignment(.center)
                .foregroundColor(Color("GreySecondary"))
                .padding(.bottom, 50.0)
            Image("Motorcycle")
                .padding(.bottom, 50.0)
            Button(action:{
                print("Vicky Irwanto")
            }, label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 50.0)
                        .frame(width: 327, height: 50)
                        .foregroundColor(Color("Yellow"))
                    Text("Create New Account")
                        .font(.custom("Poppins-SemiBold", size: 16))
                        .foregroundColor(Color("Black"))
                }
            })
            .padding(.bottom, 10.0)
            Button(action:{
                print("Vicky Irwanto")
            }, label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 50.0)
                        .frame(width: 327, height: 50)
                        .foregroundColor(Color("WhitePrimary"))
                    Text("Sign In")
                        .font(.custom("Poppins-SemiBold", size: 16))
                        .foregroundColor(Color("Black"))
                }
            })
            .padding(.bottom, 30.0)
            Text("Terms & Conditions")
                .font(.custom("Poppins-Regular", size: 16))
                .underline()
                .multilineTextAlignment(.center)
                .foregroundColor(Color("GreySecondary"))
                .lineLimit(0)
                
        }
    }
}

struct GetStarted2View_Previews: PreviewProvider {
    static var previews: some View {
        GetStarted2View()
    }
}
