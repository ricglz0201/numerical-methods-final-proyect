clear
clearglobal
///////////////////////////////////////////////////////
//  NewtonInterpolacion.sce
//
//  Este programa es la parte gráfica para poder
//  encontrar la integración de una función
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
f=figure('figure_position',[400,50],'figure_size',[610,482],'auto_resize','on','background',[33],'figure_name','Graphic window number %d','dockable','off','infobar_visible','off','toolbar_visible','off','menubar_visible','off','default_axes','on','visible','off');
//////////
handles.dummy = 0;
handles.newton=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.45,0.9,0.1,0.035],'Relief','default','SliderStep',[0.01,0.1],'String','Newton','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','newton','Callback','')
handles.txt_lista_x=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.4,0.8304348,0.2,0.0308696],'Relief','default','SliderStep',[0.01,0.1],'String','Coordenadas X y Y','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','txt_lista_x','Callback','')
handles.Matrix_X_Y=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.2081967,0.45,0.704918,0.3673913],'Relief','default','SliderStep',[0.01,0.1],'String', sTable,'Style','table','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Matrix_X_Y','Callback','')
handles.aumenta_x=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.1295082,0.68,0.0331148,0.0439130],'Relief','default','SliderStep',[0.01,0.1],'String','+','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','aumenta_x','Callback','Incrementa_Renglon_X(handles)')
handles.disminuye_x=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.1295082,0.59,0.0316393,0.0439130],'Relief','default','SliderStep',[0.01,0.1],'String','-','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','disminuye_x','Callback','Borra_Renglon_X(handles)')
handles.txt_x_por_estimar=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.2868852,0.3739130,0.1631148,0.05],'Relief','default','SliderStep',[0.01,0.1],'String','X por evaluar','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','txt_x_por_estimar','Callback','')
handles.x_por_estimar=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.55,0.3769130,0.1798361,0.04],'Relief','default','SliderStep',[0.01,0.1],'String','','Style','edit','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','x_por_estimar','Callback','')
handles.Calcula=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.45,0.2595652,0.1,0.0430435],'Relief','default','SliderStep',[0.01,0.1],'String','Calcula','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Calcula','Callback','Calcula_callback(handles)')
handles.Resultado=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0,0.05,1,0.1],'Relief','default','SliderStep',[0.01,0.1],'String','Resultado','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Resultado','Callback','')


f.visible = "on";

// Declaro las variables globales que se usaran en las funciones siguientes
iXSize = [3 3]
iYSize = [3 3]

//////////////////////////////////////////////////////
//  NewtonInterpolacion
//
//  Funcion que regresa el vector de coeficientes con
//  el cual se puede evaluar la funcion en cualquier
//  punto dado
//
//   Referencias: https://stackoverflow.com/questions/14823891/newton-s-interpolating-polynomial-python
//   Parametros:
//      dX     son los valores que se encuentran en X
//      dY     son los valores que se encuentran en Y
//   Regresa:
//     dCoff   el vector de coeficientes para evaluar
//             un punto
/////////////////////////////////////////////////////
function [dCoff] = NewtonInterpolacion(dX, dY)
  iN = length(dY)
  dTemp = zeros(iN, iN)
  for iRow = 1 : iN
    dTemp(iRow, 1) = dY(iRow)
  end
  for iJ = 2 : iN
    for iRow = iJ + 1 : iN
      dTemp(iRow, iJ) = (dTemp(iRow, iJ - 1) - dTemp(iRow - 1, iJ - 1)) / (dX(iRow) - dX(iRow - iJ + 1))
    end
  end
  for iRow = 1 : iN
    dCoff(iRow) = dTemp(iRow, iRow)
  end
endfunction

//////////////////////////////////////////////////////
//  Evaluar
//
//  Funcion que usando los puntos de X y el valor de
//  coeficientes obtenidos de dichos puntos, Se calcula
//  el valor en algun punto en x.
//
//   Referencias: https://stackoverflow.com/questions/14823891/newton-s-interpolating-polynomial-python
//   Parametros:
//     dCoff        vector de coeficientes
//     dX           puntos en x de la funcion
//     dXPorEstimar punto en x el cual se va estimar su
//                  valor en la funcion
//   Regresa:
//     dValor       valor que se obtuvode la funcion
/////////////////////////////////////////////////////
function [dValor] = Evaluar(dCoff, dX, dXPorEstimar)
  iN = length(dCoff) - 1
  dValor = dCoff(iN)
  for iRow = iN - 1 : -1 : 1
    dValor = dInter * (dXPorEstimar - dX(iRow)) + dCoff(iRow)
  end
endfunction

//////////
// Callbacks are defined as below. Please do not delete the comments as it will be used in coming version
//////////

//////////////////////////////////////////////////////
//  Calcula_callback
//
//  Función que trae la información de los componentes
//  gráficos y posteriormente calcula la interpolacion
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
  dCoff = NewtonInterpolacion(dX, dY)
  dXPorEstimar = strtod(handles.x_por_estimar.String)
  dEstimado = Evaluar(dCoff, dX, dXPorEstimar)
  sRespuesta = 'El valor en el punto ' + string(dXPorEstimar) + ' es: ' + string(dEstimado)
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
