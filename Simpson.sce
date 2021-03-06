clear
clearglobal
///////////////////////////////////////////////////////
//  Simpson.sce
//
//  Este programa es la parte gráfica para poder
//  encontrar la mejor regresión de una lista de puntos
//  x/y
//
//   Ricardo   Gonzalez
//   Javier    Santisteban
//   11 / ABR / 19    version 1.0
//////////////////////////////////////////////////////

// This GUI file is generated by guibuilder version 4.2.1
//////////
f=figure('figure_position',[400,50],'figure_size',[640,480],'auto_resize','on','background',[33],'figure_name','Graphic window number %d','dockable','off','infobar_visible','off','toolbar_visible','off','menubar_visible','off','default_axes','on','visible','off');
//////////
handles.dummy = 0;
handles.Simpson=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.45,0.85,0.1,0.05],'Relief','default','SliderStep',[0.01,0.1],'String','Simpson','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Simpson','Callback','')
handles.Limite_Inicial=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.1025,0.7055895,0.1225,0.04],'Relief','default','SliderStep',[0.01,0.1],'String','Limite_Inicial','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Limite_Inicial','Callback','')
handles.Input_Limite_Inicial=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.25,0.7052402,0.2,0.04],'Relief','default','SliderStep',[0.01,0.1],'String','Input','Style','edit','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Input_Limite_Inicial','Callback','')
handles.Limite_Final=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.55,0.7020087,0.12,0.04],'Relief','default','SliderStep',[0.01,0.1],'String','Limite_Final','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Limite_Final','Callback','')
handles.Input_Limite_Final=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.7125,0.702,0.1375,0.04],'Relief','default','SliderStep',[0.01,0.1],'String','Input','Style','edit','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Input_Limite_Final','Callback','')
handles.Numero_de_puntos=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.1025,0.6019214,0.2,0.04],'Relief','default','SliderStep',[0.01,0.1],'String','Numero_de_puntos','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Numero_de_puntos','Callback','')
handles.Input_puntos=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.3275,0.6019214,0.1225,0.04],'Relief','default','SliderStep',[0.01,0.1],'String','Input','Style','edit','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Input_puntos','Callback','')
handles.Funcion=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.55,0.6019214,0.075,0.04],'Relief','default','SliderStep',[0.01,0.1],'String','Funcion','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Funcion','Callback','')
handles.Input_Funcion=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.65,0.6019214,0.2,0.04],'Relief','default','SliderStep',[0.01,0.1],'String','Input','Style','edit','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Input_Funcion','Callback','')
handles.Calcula=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.4078125,0.3537118,0.184375,0.0645852],'Relief','default','SliderStep',[0.01,0.1],'String','Calcula','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Calcula','Callback','Calcula_callback(handles)')
handles.Resultado=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Lucida Grande','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0,0.05,1,0.1],'Relief','default','SliderStep',[0.01,0.1],'String','Resultado','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Resultado','Callback','')


f.visible = "on";

//////////////////////////////////////////////////////
//  Area
//
//  Funcion que calcula la integral usando simpson
//
//   Parametros:
//      dA     es el valor del limite inicial
//      dB     es el valor del limite final
//      iN     es el numero de puntos
//   Regresa:
//     dSuma   es el area calculada
/////////////////////////////////////////////////////
function dSuma = Area(dA, dB, iN)
  dSuma = F(dA) + F(dB)
  dSumaOdd = 0
  dSumaEven = 0
  dH = (dB - dA) / iN
  for i = 2 : 2 : iN - 2
    dSumaEven = dSumaEven + F(dA + i * dH)
  end
  dSumaEven = dSumaEven * 2
  for i = 1 : 2 : iN - 1
    dSumaOdd = dSumaOdd + F(dA + i * dH)
  end
  dSumaOdd = dSumaOdd * 4
  dSuma = dSuma + dSumaOdd + dSumaEven
  dSuma = dSuma * dH / 3
endfunction

//////////
// Callbacks are defined as below. Please do not delete the comments as it will be used in coming version
//////////

//////////////////////////////////////////////////////
//  Calcula_callback
//
//  Función que trae la información de los componentes
//  gráficos y posteriormente calcula la integral usando
//  simpsom para poder mostrarselo al usuario
//
//  Parametros:
//    handles   Es el objeto que sirve para
//              controlar toda la parte gráfica del
//              programa
/////////////////////////////////////////////////////
function Calcula_callback(handles)
  dA = strtod(handles.Input_Limite_Inicial.String)
  dB = strtod(handles.Input_Limite_Final.String)
  iN = strtod(handles.Input_puntos.String)
  sFuncion = handles.Input_Funcion.String
  if sFuncion == "" then
    sFuncion = "x"
  end
  deff('[dY] = F(x)', 'dY = ' + sFuncion)
  handles.Resultado.String = string(Area(dA, dB, iN))
endfunction


