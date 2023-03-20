//
//  GetStartedView.swift
//  FavFoods
//
//  Created by Vicky Irwanto on 03/03/23.
//

import SwiftUI

struct GetStartedView: View {
    
    @State private var ShowHomePage =  false
    var body: some View {
        
        return Group{
            if ShowHomePage{
                HomeView()
            }else{
                VStack(spacing: 0.0){
                    Image("OnboardingIllustration")
                        .padding(.bottom, 50.0)
                    HStack{
                        VStack(alignment: .leading, spacing: 0.0){
                            Text("180K Store")
                                .font(.custom("Poppins-Regular", size: 16))
                                .foregroundColor(Color("GreyPrimary"))
                            Text("Order Your\nFavorite Food Here")
                                .font(.custom("Poppins-Bold", size: 36))
                                .foregroundColor(Color("Black"))
                           
                        }
                        
                    }
                    Button(action:{
                        self.ShowHomePage = true
                        
                    },
                           label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 50)
                                .frame(width: 327, height: 50)
                                .foregroundColor(Color("Orange"))
                            Text("Explore Now")
                                .font(.custom("Poppins-SemiBold", size: 16))
                                .foregroundColor(Color("WhiteSecondary"))
                        }
                    }
                    )
                    .padding(.top, 30.0)
                }
               
            }
        }
        
        
    }
}

struct GetStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedView()
    }
}
