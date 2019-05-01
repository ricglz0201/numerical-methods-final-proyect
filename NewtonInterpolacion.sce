function [dA] = NewtonInterpolacion(dX, dY)
  dA = []
  iN = length(dY)
  for iRow = 1 : iN
    dA(iRow) = dY(iRow)
  end
  for iJ = 2 : iN
    for iRow = iN-1 : -1 : iJ - 1
      dA(iRow) = (dA(iRow) - dA(iRow - 1)) / (dX(iRow) - dX(iRow - iJ))
    end
  end
endfunction

function [dInter] = Eval(dA, dX, dR)
  iN = length(dA) - 1
  dInter = dA(iN)
  for iRow = iN - 1 : -1 : 1
    dInter = dInter * (dR - dX(iRow)) + dA(iRow)
  end
endfunction

function Incrementa_Renglon_X(handles)
  sMatriz = matrix(handles.Lista_X.String, iXSize)
  sMatrizCeros = string(zeros(1, iXSize(2)))
  sMatriz = [sMatriz; sMatrizCeros]
  handles.Lista_X.String = sMatriz
  iXSize(1) = iXSize(1) + 1
endfunction

function Borra_Renglon_X(handles)
  sMatriz = matrix(handles.Lista_X.String, iXSize)
  sMatriz(iXSize(1), :) = []
  handles.Lista_X.String = sMatriz
  iXSize(1) = iXSize(1) - 1
endfunction

function Incrementa_Renglon_Y(handles)
  sMatriz = matrix(handles.Lista_Y.String, iYSize)
  sMatrizCeros = string(zeros(1, iYSize(2)))
  sMatriz = [sMatriz; sMatrizCeros]
  handles.Lista_Y.String = sMatriz
  iYSize(1) = iYSize(1) + 1
endfunction

function Borra_Renglon_Y(handles)
  sMatriz = matrix(handles.Lista_Y.String, iYSize)
  sMatriz(iYSize(1), :) = []
  handles.Lista_Y.String = sMatriz
  iYSize(1) = iYSize(1) - 1
endfunction
