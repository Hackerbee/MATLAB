
function varargout = funcplot(varargin)
% FUNCPLOT MATLAB code for funcplot.fig
%      FUNCPLOT, by itself, creates a new FUNCPLOT or raises the existing
%      singleton*.
%
%      H = FUNCPLOT returns the handle to a new FUNCPLOT or the handle to
%      the existing singleton*.
%
%      FUNCPLOT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FUNCPLOT.M with the given input arguments.
%
%      FUNCPLOT('Property','Value',...) creates a new FUNCPLOT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before funcplot_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to funcplot_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help funcplot

% Last Modified by GUIDE v2.5 10-Feb-2016 16:26:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @funcplot_OpeningFcn, ...
                   'gui_OutputFcn',  @funcplot_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT

% Global variable access function definitions starts

% Global value handling functions for sine
function setGsin(val)
global fsin
fsin = val;

function r = getGsin
global fsin
r = fsin;
% End of function declaration for sine


% Global value handling functions for cosine
function setGcos(val)
global fcos
fcos = val;

function r = getGcos
global fcos
r = fcos;
% End of function declaration for cosin


% Global value handling functions for tangent
function setGtan(val)
global ftan
ftan = val;

function r = getGtan
global ftan
r = ftan;
% End of function declaration for tangent


% Global value handling functions for cotangent
function setGcot(val)
global fcot
fcot = val;

function r = getGcot
global fcot
r = fcot;
% End of function declaration for cotangent


% Global value handling functions for secant
function setGsec(val)
global fsec
fsec = val;

function r = getGsec
global fsec
r = fsec;
% End of function declaration for secant


% Global value handling functions for cosecant
function setGcsc(val)
global fcsc
fcsc = val;

function r = getGcsc
global fcsc
r = fcsc;
% End of function declaration for cosecant

% Global variable access function definitions ends

% --- Executes just before funcplot is made visible.
function funcplot_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to funcplot (see VARARGIN)
hold on;
grid on;
grid minor;
setGsin(0);
setGcos(0);
setGcsc(0);
setGsec(0);
setGtan(0);
setGcot(0);
set(gca,'XMinorGrid','on');
set(gca,'YMinorGrid','on');
xmax = str2num(get(handles.xx,'String'));
xmin = str2num(get(handles.xm,'String'));
ymax = str2num(get(handles.yx,'String'));
ymin = str2num(get(handles.ym,'String'));
axis([xmin xmax ymin ymax]);
disp(get(handles.axes1));
% Choose default command line output for funcplot
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes funcplot wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = funcplot_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function ym_Callback(hObject, eventdata, handles)
y = get(handles.axes1,'Ylim');
y(1) = str2num(get(handles.ym,'String'));
set(handles.axes1,'Ylim',y);
refreshdata(handles.axes1);
% hObject    handle to ym (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ym as text
%        str2double(get(hObject,'String')) returns contents of ym as a double


% --- Executes during object creation, after setting all properties.
function ym_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ym (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yx_Callback(hObject, eventdata, handles)
y = get(handles.axes1,'Ylim');
y(2) = str2num(get(handles.yx,'String'));
set(handles.axes1,'Ylim',y);
refreshdata(handles.axes1);
% hObject    handle to yx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yx as text
%        str2double(get(hObject,'String')) returns contents of yx as a double


% --- Executes during object creation, after setting all properties.
function yx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xm_Callback(hObject, eventdata, handles)
x = get(handles.axes1,'Xlim');
x(1) = str2num(get(handles.xm,'String'));
set(handles.axes1,'Xlim',x);
refreshdata(handles.axes1);
% hObject    handle to xm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xm as text
%        str2double(get(hObject,'String')) returns contents of xm as a double


% --- Executes during object creation, after setting all properties.
function xm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xx_Callback(hObject, eventdata, handles)
x = get(handles.axes1,'Xlim');
x(2) = str2num(get(handles.xx,'String'));
set(handles.axes1,'Xlim',x);
refreshdata(handles.axes1);
% hObject    handle to xx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xx as text
%        str2double(get(hObject,'String')) returns contents of xx as a double


% --- Executes during object creation, after setting all properties.
function xx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in sine.
function sine_Callback(hObject, eventdata, handles)
xmax = str2num(get(handles.xx,'String'));
xmin = str2num(get(handles.xm,'String'));
ymax = str2num(get(handles.yx,'String'));
ymin = str2num(get(handles.ym,'String'));
x = linspace(xmin,xmax,1000);
f = getGsin;
hsin = plot(x,sin(x));
hsin.Tag = 'Sine';
axis([xmin xmax ymin ymax]);
if f == 0
    setGsin(1);
else
    Hmatch = findobj(allchild(handles.axes1),'Tag','Sine');
    delete(Hmatch);
    setGsin(0);
end

% hObject    handle to sine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in cosine.
function cosine_Callback(hObject, eventdata, handles)
xmax = str2num(get(handles.xx,'String'));
xmin = str2num(get(handles.xm,'String'));
ymax = str2num(get(handles.yx,'String'));
ymin = str2num(get(handles.ym,'String'));
x = linspace(xmin,xmax,1000);
f = getGcos;
hcos = plot(x,cos(x));
hcos.Tag = 'Cosine';
axis([xmin xmax ymin ymax]);
if f == 0
    setGcos(1);
else
    Hmatch = findobj(allchild(handles.axes1),'Tag','Cosine');
    delete(Hmatch);
    setGcos(0);
end

% hObject    handle to cosine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in cosecant.
function cosecant_Callback(hObject, eventdata, handles)
xmax = str2num(get(handles.xx,'String'));
xmin = str2num(get(handles.xm,'String'));
ymax = str2num(get(handles.yx,'String'));
ymin = str2num(get(handles.ym,'String'));
x = linspace(xmin,xmax,1000);
f = getGcsc;
hcsc = plot(x,csc(x));
hcsc.Tag = 'Cosecant';
axis([xmin xmax ymin ymax]);
if f == 0
    setGcsc(1);
else
    Hmatch = findobj(allchild(handles.axes1),'Tag','Cosecant');
    delete(Hmatch);
    setGcsc(0);
end

% hObject    handle to cosecant (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in secant.
function secant_Callback(hObject, eventdata, handles)
xmax = str2num(get(handles.xx,'String'));
xmin = str2num(get(handles.xm,'String'));
ymax = str2num(get(handles.yx,'String'));
ymin = str2num(get(handles.ym,'String'));
x = linspace(xmin,xmax,1000);
f = getGsec;
hsec = plot(x,sec(x));
hsec.Tag = 'Secant';
axis([xmin xmax ymin ymax]);
if f == 0
    setGsec(1);
else
    Hmatch = findobj(allchild(handles.axes1),'Tag','Secant');
    delete(Hmatch);
    setGsec(0);
end

% hObject    handle to secant (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in tangent.
function tangent_Callback(hObject, eventdata, handles)
xmax = str2num(get(handles.xx,'String'));
xmin = str2num(get(handles.xm,'String'));
ymax = str2num(get(handles.yx,'String'));
ymin = str2num(get(handles.ym,'String'));
x = linspace(xmin,xmax,1000);
f = getGtan;
htan = plot(x,tan(x));
htan.Tag = 'Tangent';
axis([xmin xmax ymin ymax]);
if f == 0
    setGtan(1);
else
    Hmatch = findobj(allchild(handles.axes1),'Tag','Tangent');
    delete(Hmatch);
    setGtan(0);
end

% hObject    handle to tangent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in cotangent.
function cotangent_Callback(hObject, eventdata, handles)
xmax = str2num(get(handles.xx,'String'));
xmin = str2num(get(handles.xm,'String'));
ymax = str2num(get(handles.yx,'String'));
ymin = str2num(get(handles.ym,'String'));
x = linspace(xmin,xmax,1000);
f = getGcot;
hcot = plot(x,cot(x));
hcot.Tag = 'Cotangent';
axis([xmin xmax ymin ymax]);
if f == 0
    setGcot(1);
else
    Hmatch = findobj(allchild(handles.axes1),'Tag','Cotangent');
    delete(Hmatch);
    setGcot(0);
end

% hObject    handle to cotangent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
