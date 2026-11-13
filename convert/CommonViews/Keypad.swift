//
//  Keypad.swift
//  convert
//
//  Created by Sandesh Naik on 13/11/26.
//

import SwiftUI

enum KeypadKey: Hashable {
    case digit(Int), decimal, delete, clear

    var title: String {
        switch self {
        case .digit(let n): "\(n)"
        case .decimal: "."
        case .delete: "⌫"
        case .clear: "Clear"
        }
    }
}

struct Keypad: View {
    let onTap: (KeypadKey) -> Void

    private let rows: [[KeypadKey]] = [
        [.digit(7), .digit(8), .digit(9)],
        [.digit(4), .digit(5), .digit(6)],
        [.digit(1), .digit(2), .digit(3)],
        [.decimal,  .digit(0), .delete],
        [.clear]
    ]

    var body: some View {
        Grid(horizontalSpacing: 12, verticalSpacing: 12) {
            ForEach(rows, id: \.self) { row in
                GridRow {
                    ForEach(row, id: \.self) { key in
                        Button { onTap(key) } label: {
                            Text(key.title)
                                .font(.title2.weight(.medium))
                                .frame(maxWidth: .infinity, minHeight: 56)
                                .background(.quaternary, in: RoundedRectangle(cornerRadius: 12))
                        }
                        .buttonStyle(.plain)
                        .gridCellColumns(row.count == 1 ? 3 : 1)   // "C" spans full width
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    Keypad(onTap: {_ in })
}
