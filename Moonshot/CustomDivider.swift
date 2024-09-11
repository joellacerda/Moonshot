//
//  CustomDivider.swift
//  Moonshot
//
//  Created by Joel Lacerda on 11/09/24.
//

import SwiftUI

struct CustomDivider: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundStyle(.lightBackground)
            .padding(.vertical)
    }
}

#Preview {
    CustomDivider()
}
