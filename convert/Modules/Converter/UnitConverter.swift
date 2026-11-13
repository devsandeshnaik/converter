//
//  UnitConverter.swift
//  convert
//
//  Created by Sandesh Naik on 12/11/26.
//

import SwiftUI

struct UnitConverter<T: UnitConversionProtocol>: View {
    
    @State var presenter: UnitConverterPresenter<T>
    @State private var inputVal: String = ""
    @State private var outputVal: String = ""
    
    init(presenter: UnitConverterPresenter<T>) {
        self.presenter = presenter
    }
    
    
    var body: some View {
        VStack {
            Spacer()
            VStack(spacing: 16) {
                HStack(spacing: 16) {
                    VStack(spacing: 0) {
                        TextField("", text: $presenter.input)
                            .multilineTextAlignment(.trailing)
                            .frame(height: 44)
                            .padding(.horizontal, 8)
                        Divider()
                    }
                        
                    
                    Menu {
                        Picker("", selection: $presenter.from) {
                            ForEach(presenter.units) { unit in
                                Text(unit.name)
                                    .tag(unit)
                            }
                        }
                    } label: {
                        HStack(spacing: 12) {
                            Text(presenter.from.symbol)
                        }
                        .padding(.horizontal)
                        .padding(.vertical, 12)
                        .overlay{
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(.black, lineWidth: 1)
                        }
                        .foregroundStyle(.black)
                    }
                }
                .padding(.horizontal)
                
                HStack(spacing: 16) {
                    Spacer()
                    Text(presenter.output)
                    Menu {
                        Picker("", selection: $presenter.to) {
                            ForEach(presenter.units) { unit in
                                Text(unit.name).tag(unit)
                            }
                        }
                    } label: {
                        Text(presenter.to.symbol)
                            .padding(.horizontal, 16)
                            .padding(.vertical, 8)
                            .overlay{
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(.black, lineWidth: 1)
                            }
                            .foregroundStyle(.black)
                    }
                }
                .padding(.horizontal)
            }
            
            Spacer()
            
            Keypad(onTap: keyTapped)
        }
    }
    
    func keyTapped(_ key: KeypadKey) {
        switch key {
        case .digit(let n):
            presenter.input = (presenter.input == "0") ? "\(n)" : presenter.input + "\(n)"
        case .decimal:
            guard !presenter.input.contains(".") else { return }
            presenter.input = presenter.input.isEmpty ? "0." : presenter.input + "."
        case .delete:
            if !presenter.input.isEmpty { presenter.input.removeLast() }
        case .clear:
            presenter.input = ""
        }
    }
}

#Preview {
    let engine = ConversionEngine(conversionModal: AreaConversionModal())
    let interactor = UnitConverterInteractor(engine: engine)
    let presenter = UnitConverterPresenter(inteacter: interactor)
    UnitConverter(presenter: presenter)
}
