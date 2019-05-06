clear
clearglobal
///////////////////////////////////////////////////////
//  Mejor_Regresion.sce
//
//  Este programa es la parte gráfica para poder
//  encontrar la mejor regresión de una lista de puntos
//  x/y
//
//   Ricardo   Gonzalez
//   Javier    Santisteban
//   11 / ABR / 19    version 1.0
//////////////////////////////////////////////////////

// Declaro las variables que se necesitaran para la interface
sParams = [" " "X" "Y" ];
sExtra = [" ", " "]';
sZeros  = ["0" "0"]';
sTable = [sParams; [ sExtra sZeros sZeros ]]

// This GUI file is generated by guibuilder version 4.2.1
//////////
f=figure('figure_position',[400,50],'figure_size',[640,480],'auto_resize','on','background',[33],'figure_name','Graphic window number %d','dockable','off','infobar_visible','off','toolbar_visible','off','menubar_visible','off','default_axes','on','visible','off');
//////////
handles.dummy = 0;
handles.Mejor_Regresion=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.4,0.9,0.2,0.035],'Relief','default','SliderStep',[0.01,0.1],'String','Mejor Regresion','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Mejor_Regresion','Callback','')
handles.txt_lista_x=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.4,0.8304348,0.2,0.0308696],'Relief','default','SliderStep',[0.01,0.1],'String','Coordenadas X y Y','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','txt_lista_x','Callback','')
handles.Matrix_X_Y=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.2081967,0.45,0.704918,0.3673913],'Relief','default','SliderStep',[0.01,0.1],'String', sTable,'Style','table','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Matrix_X_Y','Callback','')
handles.aumenta_x=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.1295082,0.68,0.0331148,0.0439130],'Relief','default','SliderStep',[0.01,0.1],'String','+','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','aumenta_x','Callback','Incrementa_Renglon_X(handles)')
handles.disminuye_x=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.1295082,0.59,0.0316393,0.0439130],'Relief','default','SliderStep',[0.01,0.1],'String','-','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','disminuye_x','Callback','Borra_Renglon_X(handles)')
handles.txt_x_por_estimar=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.2868852,0.3739130,0.1631148,0.05],'Relief','default','SliderStep',[0.01,0.1],'String','X por evaluar','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','txt_x_por_estimar','Callback','')
handles.X_por_estimar=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.55,0.3769130,0.1798361,0.04],'Relief','default','SliderStep',[0.01,0.1],'String','','Style','edit','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','x_por_estimar','Callback','')
handles.Calcula=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.45,0.2595652,0.1,0.0430435],'Relief','default','SliderStep',[0.01,0.1],'String','Calcula','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Calcula','Callback','Calcula_callback(handles)')
handles.Resultado=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0,0.05,1,0.1],'Relief','default','SliderStep',[0.01,0.1],'String','Resultado','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Resultado','Callback','')


f.visible = "on";

// Declaro las variables globales que se usaran en las funciones siguientes
iXSize = [3 3]

///////////////////////////////////////////////////////
// PuntoRegresionLineal
// Calcula cuánto vale la regresión lineal dada, a
// partir de la x y la matriz de coeficientes dados
// Parámetros:
// dMatriz Matriz de coeficientes
// dX Punto en x a partir de la cual se va a calcular
// Retorno:
// dY El valor de la regresión en el punto x
////////////////////////////////////////////////////
function [dY] = PuntoRegresionLineal(dMatriz, dX)
  dY = dMatriz(1) + dMatriz(2) * dX
endfunction

///////////////////////////////////////////////////////
// RegresionLineal
// Calcula una regresión lineal a partir de los
// conjuntos x y dados. Además estima un punto en x y
// su r2
// Parámetros:
// dArregloX conjunto de x
// dArregloY conjunto de y
// dXPorEstimar valor de x por estimar
// dSST valor SST de los conjuntos x, y
// Retorno:
// dYEstimada Valor de dXPorEstimar en la regresión
// dR2 Valor de r2 de la regresión
///////////////////////////////////////////////////////
function [dYEstimada, dR2] = RegresionLineal(dArregloX, dArregloY, dXPorEstimar, dSST)
  iN = length(dArregloX)
  dSumaX = 0
  dSumaX2 = 0
  dSumaY = 0
  dSumaYX = 0
  for iIndex = 1 : iN
    dX = dArregloX(iIndex)
    dY = dArregloY(iIndex)
    dSumaX = dSumaX + dX
    dSumaX2 = dSumaX2 + dX ^ 2
    dSumaY = dSumaY + dY
    dSumaYX = dSumaYX + dY * dX
  end
  dMatriz1 = [iN, dSumaX; dSumaX, dSumaX2]
  dMatriz2 = [dSumaY; dSumaYX]
  dMatrizRes = inv(dMatriz1) * dMatriz2
  dSSE = 0
  for iIndex = 1 : iN
    dX = dArregloX(iIndex)
    dSSE = dSSE + (dArregloY(iIndex) - PuntoRegresionLineal(dMatrizRes, dX)) ^ 2
  end
  dR2 = (dSST - dSSE) / dSST
  dYEstimada = PuntoRegresionLineal(dMatrizRes, dXPorEstimar)
endfunction

///////////////////////////////////////////////////////
// PuntoRegresionCuadratica
// Calcula cuánto vale la regresión cuadratica dada, a
// partir de la x y la matriz de coeficientes dados
// Parámetros:
// dMatriz Matriz de coeficientes
// dX Punto en x a partir de la cual se va a calcular
// Retorno:
// dY El valor de la regresión en el punto x
////////////////////////////////////////////////////
function [dY] = PuntoRegresionCuadratica(dMatriz, dX)
  dY = dMatriz(1) + dMatriz(2) * dX + dMatriz(3) * dX ^ 2
endfunction

///////////////////////////////////////////////////////
// RegresionCuadratica
// Calcula una regresión cuadrática a partir de los
// conjuntos x y dados. Además estima un punto en x y
// su r2
// Parámetros:
// dArregloX conjunto de x
// dArregloY conjunto de y
// dXPorEstimar valor de x por estimar
// dSST valor SST de los conjuntos x, y
// Retorno:
// dYEstimada Valor de dXPorEstimar en la regresión
// dR2 Valor de r2 de la regresión
///////////////////////////////////////////////////////
function [dYEstimada, dR2] = RegresionCuadratica(dArregloX, dArregloY, dXPorEstimar, dSST)
  iN = length(dArregloX)
  dSumaX = 0
  dSumaX2 = 0
  dSumaX3 = 0
  dSumaX4 = 0
  dSumaY = 0
  dSumaYX = 0
  dSumaYX2 = 0
  for iIndex = 1 : iN
    dX = dArregloX(iIndex)
    dY = dArregloY(iIndex)
    dSumaX = dSumaX + dX
    dSumaX2 = dSumaX2 + dX ^ 2
    dSumaX3 = dSumaX3 + dX ^ 3
    dSumaX4 = dSumaX4 + dX ^ 4
    dSumaY = dSumaY + dY
    dSumaYX = dSumaYX + dY * dX
    dSumaYX2 = dSumaYX2 + dY * dX ^2
  end
  dMatriz1 = [iN, dSumaX, dSumaX2; dSumaX, dSumaX2, dSumaX3; dSumaX2, dSumaX3, dSumaX4]
  dMatriz2 = [dSumaY; dSumaYX; dSumaYX2]
  dMatrizRes = inv(dMatriz1) * dMatriz2
  dSSE = 0
  for iIndex = 1 : iN
    dX = dArregloX(iIndex)
    dSSE = dSSE + (dArregloY(iIndex) - PuntoRegresionCuadratica(dMatrizRes, dX)) ^ 2
  end
  dR2 = (dSST - dSSE) / dSST
  dYEstimada = PuntoRegresionCuadratica(dMatrizRes, dXPorEstimar)
endfunction

///////////////////////////////////////////////////////
// PuntoRegresionExponencial
// Calcula cuánto vale la regresión exponencial dada, a
// partir de la x y la matriz de coeficientes dados
// Parámetros:
// dMatriz Matriz de coeficientes
// dX Punto en x a partir de la cual se va a calcular
// Retorno:
// dY El valor de la regresión en el punto x
////////////////////////////////////////////////////
function [dY] = PuntoRegresionExponencial(dMatriz, dX)
  dY = dMatriz(1) * exp(dMatriz(2) * dX)
endfunction

///////////////////////////////////////////////////////
// RegresionExponencial
// Calcula una regresión exponencial a partir de los
// conjuntos x y dados. Además estima un punto en x y
// su r2
// Parámetros:
// dArregloX conjunto de x
// dArregloY conjunto de y
// dXPorEstimar valor de x por estimar
// dSST valor SST de los conjuntos x, y
// Retorno:
// dYEstimada Valor de dXPorEstimar en la regresión
// dR2 Valor de r2 de la regresión
///////////////////////////////////////////////////////
function [dYEstimada, dR2] = RegresionExponencial(dArregloX, dArregloY, dXPorEstimar, dSST)
  iN = length(dArregloX)
  dSumaX = 0
  dSumaX2 = 0
  dSumaLnY = 0
  dSumaLnYX = 0
  for iIndex = 1 : iN
    dX = dArregloX(iIndex)
    dY = log(dArregloY(iIndex))
    dSumaX = dSumaX + dX
    dSumaX2 = dSumaX2 + dX ^ 2
    dSumaLnY = dSumaLnY + dY
    dSumaLnYX = dSumaLnYX + dY * dX
  end
  dMatriz1 = [iN, dSumaX; dSumaX, dSumaX2]
  dMatriz2 = [dSumaLnY; dSumaLnYX]
  dMatrizRes = inv(dMatriz1) * dMatriz2
  dMatrizRes(1) = exp(dMatrizRes(1))
  dSSE = 0
  for iIndex = 1 : iN
    dX = dArregloX(iIndex)
    dSSE = dSSE + ((log(dArregloY(iIndex)) - log(dMatrizRes(1)) - dMatrizRes(2)*dX)) ^ 2
  end
  dR2 = (dSST - dSSE) / dSST
  dYEstimada = PuntoRegresionExponencial(dMatrizRes, dXPorEstimar)
endfunction

///////////////////////////////////////////////////////
// PuntoRegresionPotencial
// Calcula cuánto vale la regresión potencial dada, a
// partir de la x y la matriz de coeficientes dados
// Parámetros:
// dMatriz Matriz de coeficientes
// dX Punto en x a partir de la cual se va a calcular
// Retorno:
// dY El valor de la regresión en el punto x
////////////////////////////////////////////////////
function [dY] = PuntoRegresionPotencial(dMatriz, dX)
  dY = dMatriz(1) * dX ^ dMatriz(2)
endfunction

///////////////////////////////////////////////////////
// RegresionPotencial
// Calcula una regresión potencial a partir de los
// conjuntos x y dados. Además estima un punto en x y
// su r2
// Parámetros:
// dArregloX conjunto de x
// dArregloY conjunto de y
// dXPorEstimar valor de x por estimar
// dSST valor SST de los conjuntos x, y
// Retorno:
// dYEstimada Valor de dXPorEstimar en la regresión
// dR2 Valor de r2 de la regresión
///////////////////////////////////////////////////////
function [dYEstimada, dR2] = RegresionPotencial(dArregloX, dArregloY, dXPorEstimar, dSST)
  iN = length(dArregloX)
  dSumaLnX = 0
  dSumaLn2X = 0
  dSumaLnY = 0
  dSumaLnYLnX = 0
  for iIndex = 1 : iN
    dLnX = log(dArregloX(iIndex))
    dLnY = log(dArregloY(iIndex))
    dSumaLnX = dSumaLnX + dLnX
    dSumaLn2X = dSumaLn2X + dLnX ^ 2
    dSumaLnY = dSumaLnY + dLnY
    dSumaLnYLnX = dSumaLnYLnX + dLnY * dLnX
  end
  dMatriz1 = [iN, dSumaLnX; dSumaLnX, dSumaLn2X]
  dMatriz2 = [dSumaLnY; dSumaLnYLnX]
  dMatrizRes = inv(dMatriz1) * dMatriz2
  dMatrizRes(1) = exp(dMatrizRes(1))
  dSSE = 0
  for iIndex = 1 : iN
    dX = dArregloX(iIndex)
    dSSE = dSSE + (log(dArregloY(iIndex)) - log(dMatrizRes(1)) - dMatrizRes(2)*log(dX)) ^ 2
  end
  dR2 = (dSST - dSSE) / dSST
  dYEstimada = PuntoRegresionPotencial(dMatrizRes, dXPorEstimar)
endfunction

////////////////////////////////////////////////////
// CalcularSST
// Calcula el valor sst con respecto a un conjunto
// 'y' para las regresiones lineales
// Parámetros:
// dArregloY conjunto de valores de Y
// Retorno:
// dSST Valor sst del conjunto de valores Y
////////////////////////////////////////////////////
function [dSST] = CalcularSST(dArregloY)
  dPromedio = 0
  iN = length(dArregloY)
  for iIndex = 1 : iN
    dPromedio = dPromedio + dArregloY(iIndex)
  end
  dPromedio = dPromedio / iN
  dSST = 0
  for iIndex = 1 : iN
    dSST = dSST + (dArregloY(iIndex) - dPromedio) ^ 2
  end
endfunction

////////////////////////////////////////////////////
// CalcularSSTLn
// Calcula el valor sst con respecto a un conjunto
// 'y' pero con valores de ln para las regresiones
// no lineales
// Parámetros:
// dArregloY conjunto de valores de Y
// Retorno:
// dSST Valor sst del conjunto de valores Y
////////////////////////////////////////////////////
function [dSST] = CalcularSSTLn(dArregloY)
  dPromedio = 0
  iN = length(dArregloY)
  for iIndex = 1 : iN
    dPromedio = dPromedio + log(dArregloY(iIndex))
  end
  dPromedio = dPromedio / iN
  dSST = 0
  for iIndex = 1 : iN
    dSST = dSST + (log(dArregloY(iIndex)) - dPromedio) ^ 2
  end
endfunction

//////////////////////////////////////////////////////
// MejorRegresion
// Calcula la regesión lineal, cuadrática, exponencial
// y potencia de un cojunto de xs y ys y determina
// cuál es la mejor usando r2 y usa esa regresión para
// calcular cuánto valdría una X
// Parámetros:
// dArregloX conjunto de valores de X
// dArregloY conjunto de valores de Y
// dXPorEstimar valor por estimar en X
//
// Retorno:
// sRespuesta la respuesta de la mejor regresion
// determinando cual regresion es la mejor, el r2 de
// dicho modelo y cual fue el valor estimado en el
// valor X dado
//////////////////////////////////////////////////////
function [sRespuesta] = MejorRegresion(dArregloX, dArregloY, dXPorEstimar)
  if length(dArregloX) <> length(dArregloY)
    sRespuesta = 'Los conjuntos deben ser del mismo tamaño'
    return
  end
  dSST = CalcularSST(dArregloY)
  sMejorModelo = "lineal"
  [dMejorY, dMejorR2] = RegresionLineal(dArregloX, dArregloY, dXPorEstimar, dSST)
  [dY, dR2] = RegresionCuadratica(dArregloX, dArregloY, dXPorEstimar, dSST)
  if dR2 > dMejorR2
    dMejorR2 = dR2
    dMejorY = dY
    sMejorModelo = "cuadratico"
  end
  dSST = CalcularSSTLn(dArregloY)
  [dY, dR2] = RegresionExponencial(dArregloX, dArregloY, dXPorEstimar, dSST)
  if dR2 > dMejorR2
    dMejorR2 = dR2
    dMejorY = dY
    sMejorModelo = "exponencial"
  end
  [dY, dR2] = RegresionPotencial(dArregloX, dArregloY, dXPorEstimar, dSST)
  if dR2 > dMejorR2
    dMejorR2 = dR2
    dMejorY = dY
    sMejorModelo = "potencial"
  end
  sRespuesta = "El mejor modelo es el " + sMejorModelo + " con r2 = " + string(dMejorR2)
  sRespuesta = sRespuesta + ". Usando el mejor modelo el valor estimado para x = " + string(dXPorEstimar) + " es: " + string(dMejorY)
endfunction

//////////
// Callbacks are defined as below. Please do not delete the comments as it will be used in coming version
//////////

//////////////////////////////////////////////////////
//  Calcula_callback
//
//  Función que trae la información de los componentes
//  gráficos y posteriormente calcula la mejor regresion
//  para poder mostrarselo al usuario
//
//   Parametros:
//      handles   Es el objeto que sirve para
//                controlar toda la parte gráfica del
//                programa
/////////////////////////////////////////////////////
function Calcula_callback(handles)
  global iXSize
  sMatriz = matrix(handles.Matrix_X_Y.String, iXSize)
  sMatriz(1, :) = []
  sMatriz(:, 1) = []
  dX = strtod(sMatriz(:, 1))
  dY = strtod(sMatriz(:, 2))
  dXPorEstimar = strtod(handles.X_por_estimar.String)
  sRespuesta = MejorRegresion(dX, dY, dXPorEstimar)
  handles.Resultado.String = sRespuesta
endfunction

//////////////////////////////////////////////////////
//  Incrementa_Renglon_X
//
//  Funcion que permite aumentar el numero de
//  renglones para poder agregar otro dato
//
//   Parametros:
//      handles   Es el objeto que sirve para
//                controlar toda la parte gráfica del
//                programa
/////////////////////////////////////////////////////
function Incrementa_Renglon_X(handles)
  global iXSize
  sMatriz = matrix(handles.Matrix_X_Y.String, iXSize)
  sMatrizCeros = string(zeros(1, iXSize(2)))
  sMatrizCeros(1) = ""
  sMatriz = [sMatriz; sMatrizCeros]
  handles.Matrix_X_Y.String = sMatriz
  iXSize(1) = iXSize(1) + 1
endfunction

//////////////////////////////////////////////////////
//  Borra_Renglon_X
//
//  Funcion que permite disminuir el numero de
//  renglones para poder agregar otro dato
//
//   Parametros:
//      handles   Es el objeto que sirve para
//                controlar toda la parte gráfica del
//                programa
/////////////////////////////////////////////////////
function Borra_Renglon_X(handles)
  global iXSize
  if iXSize(1) == 2 then return; end
  sMatriz = matrix(handles.Matrix_X_Y.String, iXSize)
  sMatriz(iXSize(1), :) = []
  handles.Matrix_X_Y.String = sMatriz
  iXSize(1) = iXSize(1) - 1
endfunction
