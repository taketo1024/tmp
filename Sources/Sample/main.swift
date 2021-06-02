//
//  File.swift
//  
//
//  Created by Taketo Sano on 2021/06/02.
//

import SwiftyEigen

let a = EIGMatrix.zeros(rows: 3, cols: 3)
let b = EIGMatrix.zeros(rows: 3, cols: 3)

for (idx, x) in [1,1,0,0,1,1,0,0,1].enumerated() {
    let (i, j) = (idx/3, idx%3)
    a[i, j] = Float(x)
}
for (idx, x) in [2,1,1,2,2,1,2,2,2].enumerated() {
    let (i, j) = (idx/3, idx%3)
    b[i, j] = Float(x)
}

let c = EIGMatrix.solveUpperTriangular(a, b)
print(c)
