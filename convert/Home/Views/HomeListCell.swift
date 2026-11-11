//
//  HomeListCell.swift
//  convert
//
//  Created by Sandesh Naik on 11/11/26.
//

import SwiftUI

struct HomeListCell: View {
    let measure: Measures
    
    var body: some View {
        HStack {
            Text(measure.name)
                .font(.title)
                .fontWeight(.semibold)
                .padding(.leading)
            Spacer()
        }
        .cornerRadius(16)
        .frame(maxWidth: .greatestFiniteMagnitude, minHeight: 80)
        .overlay {
            RoundedRectangle(cornerRadius: 16)
                .stroke(.gray, lineWidth: 3)
        }
        .padding(.horizontal)
        
        
        
    }
}

#Preview(traits: .sizeThatFitsLayout){
    HomeListCell(measure: Measures.Area)
        
}
