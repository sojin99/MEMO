//
//  ComposeView.swift
//  MEMO
//
//  Created by 권소진 on 2023/02/19.
//

import SwiftUI

struct ComposeView: View {
    @EnvironmentObject var memoStore: MemoStore
    @State private var content: String = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack{
                TextEditor(text: $content)
            }
            .navigationTitle("내 메모")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading){
                    Button{
                        dismiss()
                    } label:{
                        Text("취소")
                    }
                }
                ToolbarItemGroup(placement: .navigationBarTrailing){
                    Button{
                        memoStore.inset(memo: content)
                        dismiss()
                    } label:{
                        Text("저장")
                    }
                }
            }
        }
    }
    
}


struct ComposeView_Previews: PreviewProvider {
    static var previews: some View {
        ComposeView()
            .environmentObject(MemoStore())
    }
}
