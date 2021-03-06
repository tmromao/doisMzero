//
//  HomeDetailThirdView.swift
//  TabViewNavApp
//
//  Created by Tiago Miguel de Jesus Romao on 25/11/2021.
//

import SwiftUI

struct HomeDetailThirdView: View {
    
    // MARK : - PROPERTIES
    var title : String
    var subTitle : String
    var imageWTitle : String
    var imageDetail : String
    let recommendation : String
    let quantity : String
    let ingredients : String
    let intake : String
    let advertences : String
    
    @Environment(\.rootPresentationMode) var rootPresentationMode
    
    var body: some View {
        
        // MARK : - BODY
        ZStack {
            
            Color.red
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 0) {
                
                // PRODUCT IMAGE
                Image(imageDetail)
                    .resizable()
                    .frame(height:165)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                //.aspectRatio(contentMode: .fit)
                
                VStack(alignment: .leading){
                    //TÍTULO
                    Text(title)
                        .font(.title)
                        .fontWeight(.heavy)
                        .padding(.leading,8)
                        .padding(.bottom,0)
                        .foregroundColor(.black)
                    
                    //SUB TÍTULO
                    Text(subTitle)
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.top,0)
                        .padding(.leading,8)
                        .padding(.bottom,4)
                }
                //RECOMENDAÇÃO
                Group {
                    Text("Recomendações")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(.leading,8)
                    .padding(.bottom,4)
                    
                    Text("\(recommendation).")
                        .font(.body)
                        .fontWeight(.semibold)
                        .padding(.leading,8)
                    .padding(.bottom,4)
                }
                
                //QUANTIDADE
                Group {
                    Text("Quantidade líquida por embalagem : \(quantity)")
                        .font(.body)
                        .fontWeight(.semibold)
                        .padding(.leading,8)
                    .padding(.bottom,4)
                    
                  
                }
                
                //INGREDIENTES
                Text("Composição por 2 cápsulas")
                    .font(.body)
                    .fontWeight(.bold)
                    .padding(.leading,8)
                    .padding(.bottom, 4)
                
                Text("Ingredientes")
                    .font(.callout)
                    .fontWeight(.bold)
                    .padding(.leading,8)
                
                Text(ingredients)
                    .font(.headline)
                    .fontWeight(.regular)
                    .padding(.leading, 8)
                    //.multilineTextAlignment(.leading)
                
                //INTAKE
                Text("Modo de tomar")
                    .font(.body)
                    .fontWeight(.bold)
                    .padding(.leading,8)
                
                Text(intake)
                    .font(.callout)
                    .fontWeight(.regular)
                    .padding(.leading, 8)
                
                // ADVERTENCES
                Text("Advertências\n\(advertences)")
                    .font(.caption2)
                    .padding(.leading, 8)
                    .multilineTextAlignment(.leading)
                
            }//END OF OUTER VSTACK
        }
    }
}

struct HomeDetailThirdView_Previews: PreviewProvider {
    
    //Loading JSON static data
    static let JSONHawaProducts : [JSONProduct] = Bundle.main.decode("JSONHawaProducts.json")
    
    static var previews: some View {
        HomeDetailThirdView(title : JSONHawaProducts[0].title,
                            subTitle: JSONHawaProducts[0].subTitle ,
                            imageWTitle: JSONHawaProducts[0].imageWTitle,
                            imageDetail: JSONHawaProducts[0].imageDetail,
                            recommendation: JSONHawaProducts[0].recommendation,
                            quantity: JSONHawaProducts[0].quantity,
                            ingredients: JSONHawaProducts[0].ingredients,
                            intake: JSONHawaProducts[0].intake,
                            advertences: JSONHawaProducts[0].advertences
        )
        
    }
}
