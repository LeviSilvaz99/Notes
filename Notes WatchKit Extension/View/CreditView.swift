//
//  CreditView.swift
//  Notes WatchKit Extension
//
//  Created by Levi  on 06/01/22.
//

import SwiftUI

struct CreditView: View {
    // MARK: - PROPERTY
    @State private var randomNumber: Int = Int.random(in: 1..<4)
    
    private var randomImage: String {
        return "developer-no\(randomNumber)"
    }
    
    // MARK: - BODY
    var body: some View {
        VStack(spacing: 3){
            // PROFILE IMAGE
            Image(randomImage)
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
            // HEADER
            HeaderView(title: "Credits")
            // CONTENT
            Text("Levi Silva")
                .foregroundColor(.primary)
                .fontWeight(.bold)
            
            Text("Developer")
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
        } //
        
    }
}


// MARK: - PREVIEW

struct CreditView_Previews: PreviewProvider {
    static var previews: some View {
        CreditView()
    }
}
