//
//  HomeView.swift
//  FavFoods
//
//  Created by Vicky Irwanto on 04/03/23.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchFood: String = ""
    @State private var showDetailView = false
    
    var body: some View {
    
        return Group{
            if showDetailView {
                DetailView()
            }else{
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(alignment: .leading, spacing: 0.0){
                        HStack{
                            Image("ProfilePicture")
                            Spacer()
                            VStack(alignment: .trailing){
                                Text("Howdy")
                                    .font(.custom("Poppins-Regular", size: 14))
                                    .foregroundColor(Color("GreySecondary"))
                                Text("Luna Polar")
                                    .font(.custom("Poppins-Bold", size: 14))
                                    .foregroundColor(Color("Black"))
                            }
                        }
                        VStack(alignment: .center){
                            Text("What do you want\nfor lunch?")
                                .multilineTextAlignment(.center)
                                .font(.custom("Poppins-Bold", size: 22))
                                .foregroundColor(Color("Black"))
                                
                        }
                        .frame(minWidth: 0, maxWidth: .infinity,
                        minHeight: 66, maxHeight: 66)
                        .padding(.top, 30.0)
                        .padding(.bottom, 24.0)
                        HStack{
                            TextField("Search Pizza, Burger, Etc ...", text: $searchFood)
                                .disableAutocorrection(true)
                                .padding(.leading, 25.0)
                                      
                        }
                        .frame(minWidth: 0, maxWidth: .infinity,
                        minHeight: 50, maxHeight: 50)
                        .background(Color("WhitePrimary"))
                        .cornerRadius(50.0)
                        
                        VStack(alignment: .leading, spacing: 0.0){
                            Text("Categories")
                                .font(.custom("Poppins-SemiBold", size: 16))
                                .foregroundColor(Color("Black"))
                                .padding(.bottom, 12.0)
                            ScrollView(.horizontal, showsIndicators: false, content:{
                                HStack{
                                    HStack{
                                        Image("IconBread")
                                            .padding(.vertical, 5.0)
                                            .padding(.leading, 5.0)
                                        Text("Bread")
                                            .font(.custom("Poppins-Medium", size: 16))
                                            .foregroundColor(Color("Black"))
                                            .padding(.trailing, 18.0)
                                    }
                                   
                                    .background(Color("WhitePrimary"))
                                    .cornerRadius(50.0)
                                    HStack{
                                        Image("IconCarrot")
                                            .padding(.vertical, 5.0)
                                            .padding(.leading, 5.0)
                                        Text("Healthy")
                                            .font(.custom("Poppins-Medium", size: 16))
                                            .foregroundColor(Color("Black"))
                                            .padding(.trailing, 18.0)
                                    }
                                   
                                    .background(Color("WhitePrimary"))
                                    .cornerRadius(50.0)
                                    HStack{
                                        Image("IconDonut")
                                            .padding(.vertical, 5.0)
                                            .padding(.leading, 5.0)
                                        Text("Sweets")
                                            .font(.custom("Poppins-Medium", size: 16))
                                            .foregroundColor(Color("Black"))
                                            .padding(.trailing, 18.0)
                                    }
                                   
                                    .background(Color("WhitePrimary"))
                                    .cornerRadius(50.0)
                                }
                                
                            } )
                            
                            
                        }
                        .padding(.top, 30.0)
                        
                        
                        Text("Most Ordered")
                            .font(.custom("Poppins-SemiBold", size: 16))
                            .foregroundColor(Color("Black"))
                            .padding(.top, 30.0)
                       
                            HStack{
                                Image("FoodOrange")
                                    .padding(.trailing, 16.0)
                                    .onTapGesture{
                                        self.showDetailView = true
                                    }
                                HStack{
                                    VStack(alignment: .leading){
                                        Button(action: {
                                            self.showDetailView = true
                                        }, label: {
                                            Text("Most Ordered")
                                                .font(.custom("Poppins-Medium", size: 16))
                                                .foregroundColor(Color("Black"))
                                        })
                                       
                                        Text("Healthy")
                                            .font(.custom("Poppins-Regular", size: 14))
                                            .foregroundColor(Color("GreyPrimary"))
                                            
                                    }
                                    Spacer()
                                    Text("4.5")
                                        .font(.custom("Poppins-Medium", size: 16))
                                        .foregroundColor(Color("Black"))
                                    Image("IconStar")
                                }
                                
                            }
                            .padding(.top, 12)
                            HStack{
                                Image("FoodGyoza")
                                    .padding(.trailing, 16.0)
                                    .onTapGesture{
                                        self.showDetailView = true
                                    }
                                HStack{
                                    VStack(alignment: .leading){
                                        Button(action: {
                                            self.showDetailView = true
                                        }, label: {
                                            Text("Gyoza Sapi")
                                                .font(.custom("Poppins-Medium", size: 16))
                                                .foregroundColor(Color("Black"))
                                        })
                                       
                                        Text("Meal")
                                            .font(.custom("Poppins-Regular", size: 14))
                                            .foregroundColor(Color("GreyPrimary"))
                                            
                                    }
                                    Spacer()
                                    Text("4.8")
                                        .font(.custom("Poppins-Medium", size: 16))
                                        .foregroundColor(Color("Black"))
                                    Image("IconStar")
                                }
                                
                            }
                            .padding(.top, 18)
                            
                            HStack{
                                Image("FoodAvocado")
                                    .padding(.trailing, 16.0)
                                    .onTapGesture{
                                        self.showDetailView = true
                                    }
                                HStack{
                                    VStack(alignment: .leading){
                                        Button(action: {
                                            self.showDetailView = true
                                        }, label: {
                                            Text("Avocado Salad")
                                                .font(.custom("Poppins-Medium", size: 16))
                                                .foregroundColor(Color("Black"))
                                        })
                                        
                                        Text("Healthy")
                                            .font(.custom("Poppins-Regular", size: 14))
                                            .foregroundColor(Color("GreyPrimary"))
                                            
                                    }
                                    Spacer()
                                    Text("4.3")
                                        .font(.custom("Poppins-Medium", size: 16))
                                        .foregroundColor(Color("Black"))
                                    Image("IconStar")
                                }
                                
                            }
                            .padding(.top, 18)
                            
                            HStack{
                                Image("FoodGyoza")
                                    .padding(.trailing, 16.0)
                                    .onTapGesture{
                                        self.showDetailView = true
                                    }
                                HStack{
                                    VStack(alignment: .leading){
                                        Button(action: {
                                            self.showDetailView = true
                                        }, label: {
                                            Text("Gyoza Sapi")
                                                .font(.custom("Poppins-Medium", size: 16))
                                                .foregroundColor(Color("Black"))
                                        })
                                       
                                        Text("Meal")
                                            .font(.custom("Poppins-Regular", size: 14))
                                            .foregroundColor(Color("GreyPrimary"))
                                            
                                    }
                                    Spacer()
                                    Text("4.8")
                                        .font(.custom("Poppins-Medium", size: 16))
                                        .foregroundColor(Color("Black"))
                                    Image("IconStar")
                                }
                                
                            }
                            .padding(.top, 18)
                            
                            HStack{
                                Image("FoodAvocado")
                                    .padding(.trailing, 16.0)
                                    .onTapGesture{
                                        self.showDetailView = true
                                    }
                                HStack{
                                    VStack(alignment: .leading){
                                        Button(action: {
                                            self.showDetailView = true
                                        }, label: {
                                            Text("Avocado Salad")
                                                .font(.custom("Poppins-Medium", size: 16))
                                                .foregroundColor(Color("Black"))
                                        })
                                        
                                        Text("Healthy")
                                            .font(.custom("Poppins-Regular", size: 14))
                                            .foregroundColor(Color("GreyPrimary"))
                                            
                                    }
                                    Spacer()
                                    Text("4.3")
                                        .font(.custom("Poppins-Medium", size: 16))
                                        .foregroundColor(Color("Black"))
                                    Image("IconStar")
                                }
                                
                            }
                            .padding(.top, 18)
                      
                       
                    }
                    .padding(.horizontal, 24.0)
                })
                
            }
        }
        
       
        
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
