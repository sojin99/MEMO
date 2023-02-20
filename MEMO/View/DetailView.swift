//
//  DetailView.swift
//  MEMO
//
//  Created by 권소진 on 2023/02/20.
//

import SwiftUI

struct DetailView: View {
    @ObservedObject var memo: Memo
    @EnvironmentObject var memoStore: MemoStore
    
    @State private var showDelete = false
    @State private var showComposer = false
    
    var body: some View {
        VStack{
            ScrollView {
                VStack {
                    HStack {//
                        Text(memo.content)                            .padding(10)
                        Spacer(minLength: 0)
                    } 
                    
                    Text(memo.insertDate, style: .date)
                        .font(.caption)
                        .padding()
                }
            }
        }
        .navigationTitle("메모 보기")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItemGroup(placement: .bottomBar) {
                Button {
                    showDelete = true
                }label: {
                    Image(systemName: "trash")
                }
                .foregroundColor(Color.red)

            }
            ToolbarItemGroup(placement: .bottomBar) {
                Button{
                    showComposer = true
                } label: {
                    Image(systemName: "square.and.pencil")

                }
                
            }
        }
    }
}


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            DetailView(memo: Memo(content: "Hello"))
                .environmentObject(MemoStore())
        }
    }
}
 
