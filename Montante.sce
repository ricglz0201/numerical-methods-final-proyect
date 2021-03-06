clear
clearglobal
///////////////////////////////////////////////////////
//  Montante.sce
//
//  Este programa es la parte gráfica para poder
//  encontrar la solución de una ecuación lineal
//
//   Ricardo   Gonzalez
//   Javier    Santisteban
//   11 / ABR / 19    version 1.0
//////////////////////////////////////////////////////

// Declaro las variables que se necesitaran para la interface
sParams = [" " "" "" ];
sExtra = [" ", " "]';
sZeros  = ["0" "0"]';
sTable = [sParams; [ sExtra sZeros sZeros ]]

// This GUI file is generated by guibuilder version 4.2.1
//////////
f=figure('figure_position',[400,50],'figure_size',[640,480],'auto_resize','on','background',[33],'figure_name','Graphic window number %d','dockable','off','infobar_visible','off','toolbar_visible','off','menubar_visible','off','default_axes','on','visible','off');
//////////
handles.dummy = 0;
handles.Montante=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.4,0.9,0.2,0.035],'Relief','default','SliderStep',[0.01,0.1],'String','Montante','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Montante','Callback','')
handles.Text_Matrix=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.4,0.8304348,0.2,0.0308696],'Relief','default','SliderStep',[0.01,0.1],'String','Matriz','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Text_Matrix','Callback','')
handles.Matriz=uicontrol(f, 'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.2081967,0.45,0.704918,0.3673913],'Relief','default','SliderStep',[0.01,0.1],'String', sTable,'Style','table','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Matriz','Callback','')
handles.aumenta_renglon=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.1295082,0.68,0.0331148,0.0439130],'Relief','default','SliderStep',[0.01,0.1],'String','+','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','aumenta_renglon','Callback','Incrementa_Renglon(handles)')
handles.diminuye_renglon=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.1295082,0.59,0.0316393,0.0439130],'Relief','default','SliderStep',[0.01,0.1],'String','-','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','diminuye_renglon','Callback','Borra_Renglon(handles)')
handles.aumenta_columna=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.76,0.82,0.0331148,0.0439130],'Relief','default','SliderStep',[0.01,0.1],'String','+','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','aumenta_renglon','Callback','Incrementa_Columna(handles)')
handles.diminuye_columna=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.85,0.82,0.0316393,0.0439130],'Relief','default','SliderStep',[0.01,0.1],'String','-','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','diminuye_renglon','Callback','Borra_Columna(handles)')
handles.Calcula=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.45,0.375,0.1,0.0430435],'Relief','default','SliderStep',[0.01,0.1],'String','Calcula','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Calcula','Callback','Calcula_callback(handles)')
handles.Text_Respuesta=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.38,0.24,0.05,0.0308696],'Relief','default','SliderStep',[0.01,0.1],'String','X = ','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Text_Matrix','Callback','')
handles.Respuesta=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.45,0.05,0.3,0.3],'Relief','default','SliderStep',[0.01,0.1],'String','','Style','table','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Resultado','Callback','')


f.visible = "on";

iMatSize = [3 3]

////////////////////////////////////////////////////
// Montante
// Realiza montante sobre una matriz
// Parámetros:
// dMat la matriz a la cual se le va a aplicar montante
// Retorno:
// dX el vector X tras haber realizado Montante
////////////////////////////////////////////////////
function [dX] = Montante(dMat)
  iPrevPiv = 1
  for iRow = 1 : size(dMat, 1)
    for iK = 1 : size(dMat, 1)
      if iRow <> iK
        for iCol = iRow + 1 : size(dMat, 2)
          dMat(iK, iCol) = (dMat(iRow, iRow) * dMat(iK, iCol) - dMat(iK, iRow) * dMat(iRow, iCol)) / iPrevPiv
        end
      end
    end
    iPrevPiv = dMat(iRow, iRow)
  end
  for iRow = 1 : size(dMat, 1) - 1
    dMat(iRow, iRow) = iPrevPiv
  end
  for iRow = 1 : size(dMat, 1)
    dX(iRow) = dMat(iRow, size(dMat, 2)) / iPrevPiv
  end
endfunction

//////////
// Callbacks are defined as below. Please do not delete the comments as it will be used in coming version
//////////

//////////////////////////////////////////////////////
//  Calcula_callback
//
//  Función que trae la información de los componentes
//  gráficos y posteriormente realiza montante para
//  poder mostrarselo al usuario
//
//   Parametros:
//      handles   Es el objeto que sirve para
//                controlar toda la parte gráfica del
//                programa
/////////////////////////////////////////////////////
function Calcula_callback(handles)
  global iMatSize
  sMatriz = matrix(handles.Matriz.String, iMatSize)
  sMatriz(1, :) = []
  sMatriz(:, 1) = []
  dMat = strtod(sMatriz)
  sX = string(Montante(dMat))
  sX = cat(1, [' '], sX)
  disp(sX)
  handles.Respuesta.String = sX
endfunction

//////////////////////////////////////////////////////
//  Incrementa_Renglon
//
//  Funcion agrega un renglón al final de la matriz
//
//   Parametros:
//      handles   Es el objeto que sirve para
//                controlar toda la parte gráfica del
//                programa
/////////////////////////////////////////////////////
function Incrementa_Renglon(handles)
  global iMatSize
  sMatriz = matrix(handles.Matriz.String, iMatSize)
  sMatrizCeros = string(zeros(1, iMatSize(2)))
  sMatrizCeros(1) = ""
  sMatriz = [sMatriz; sMatrizCeros]
  handles.Matriz.String = sMatriz
  iMatSize(1) = iMatSize(1) + 1
endfunction

//////////////////////////////////////////////////////
//  Incrementa_Columna
//
//  Funcion agrega una columna al final de la matriz
//
//   Parametros:
//      handles   Es el objeto que sirve para
//                controlar toda la parte gráfica del
//                programa
/////////////////////////////////////////////////////
function Incrementa_Columna(handles)
  global iMatSize
  sMatriz = matrix(handles.Matriz.String, iMatSize)
  sMatrizCeros = string(zeros(iMatSize(1), 1))
  sMatrizCeros(1) = ""
  sMatriz = cat(2, sMatriz, sMatrizCeros)
  handles.Matriz.String = sMatriz
  iMatSize(2) = iMatSize(2) + 1
endfunction

//////////////////////////////////////////////////////
//  Borra_Renglon
//
//  Funcion borra un renglón al final de la matriz
//
//   Parametros:
//      handles   Es el objeto que sirve para
//                controlar toda la parte gráfica del
//                programa
/////////////////////////////////////////////////////
function Borra_Renglon(handles)
  global iMatSize
  sMatriz = matrix(handles.Matriz.String, iMatSize)
  sMatriz(iMatSize(1), :) = []
  handles.Matriz.String = sMatriz
  iMatSize(1) = iMatSize(1) - 1
endfunction

//////////////////////////////////////////////////////
//  Borra_Columna
//
//  Funcion borra una columna al final de la matriz
//
//   Parametros:
//      handles   Es el objeto que sirve para
//                controlar toda la parte gráfica del
//                programa
/////////////////////////////////////////////////////
function Borra_Columna(handles)
  global iMatSize
  sMatriz = matrix(handles.Matriz.String, iMatSize)
  sMatriz(:, iMatSize(2)) = []
  handles.Matriz.String = sMatriz
  iMatSize(2) = iMatSize(2) - 1
endfunction
