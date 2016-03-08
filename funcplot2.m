function varargout = funcplot2(varargin)
% FUNCPLOT2 MATLAB code for funcplot2.fig
%      FUNCPLOT2, by itself, creates a new FUNCPLOT2 or raises the existing
%      singleton*.
%
%      H = FUNCPLOT2 returns the handle to a new FUNCPLOT2 or the handle to
%      the existing singleton*.
%
%      FUNCPLOT2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FUNCPLOT2.M with the given input arguments.
%
%      FUNCPLOT2('Property','Value',...) creates a new FUNCPLOT2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before funcplot2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to funcplot2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help funcplot2

% Last Modified by GUIDE v2.5 05-Mar-2016 16:40:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @funcplot2_OpeningFcn, ...
                   'gui_OutputFcn',  @funcplot2_OutputFcn, ...
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


% --- Executes just before funcplot2 is made visible.
function funcplot2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to funcplot2 (see VARARGIN)
global F1
F1 = 0;
global F2
F2 = 0;
global pf1
pf1 = '';
global pf2
pf2 = '';
hold on;
grid on;
grid minor;
xmax = str2num(get(handles.xx,'String'));
xmin = str2num(get(handles.xm,'String'));
ymax = str2num(get(handles.yx,'String'));
ymin = str2num(get(handles.ym,'String'));
axis([xmin xmax ymin ymax]);
plot([xmin xmax],[0 0],'k');
plot([0 0],[ymin ymax],'k');
% Choose default command line output for funcplot2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes funcplot2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = funcplot2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function xm_Callback(hObject, eventdata, handles)
x = get(handles.axes1,'Xlim');
x(1) = str2num(get(handles.xm,'String'));
set(handles.axes1,'Xlim',x);
plot([x(1) x(2)],[0 0],'k');
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
plot([x(1) x(2)],[0 0],'k');
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



function ym_Callback(hObject, eventdata, handles)
y = get(handles.axes1,'Ylim');
y(1) = str2num(get(handles.ym,'String'));
set(handles.axes1,'Ylim',y);
plot([0 0],[y(1) y(2)],'k');
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
plot([0 0],[y(1) y(2)],'k');
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



function f1_Callback(hObject, eventdata, handles)
% hObject    handle to f1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of f1 as text
%        str2double(get(hObject,'String')) returns contents of f1 as a double


% --- Executes during object creation, after setting all properties.
function f1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function f2_Callback(hObject, eventdata, handles)
% hObject    handle to f2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of f2 as text
%        str2double(get(hObject,'String')) returns contents of f2 as a double


% --- Executes during object creation, after setting all properties.
function f2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --- Executes on button press in f2clear.

function f2clear_Callback(hObject, eventdata, handles)
global F2;
if F2 == 1
    Hmatch = findobj(allchild(handles.axes1),'Tag','F2');
    delete(Hmatch);
    set(handles.f2,'String','');
    F2 = 0;
end
% hObject    handle to f2clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in f2show.
function f2show_Callback(hObject, eventdata, handles)
global F2;
global pf2;
syms x;x = 0;
syms y;y = 0;
xmax = str2num(get(handles.xx,'String'));
xmin = str2num(get(handles.xm,'String'));
ymax = str2num(get(handles.yx,'String'));
ymin = str2num(get(handles.ym,'String'));
x = linspace(-1000,1000,10000);
y = linspace(-1000,1000,10000);
fn2 = get(handles.f2,'String');
fun2 = '';
if strcmp(fn2,'')==1
    x = 0;
    fn2 = 'x*0';
else
    for i = 1:length(fn2)
        if fn2(i) == 'X'
            fn2(i) = 'x';
        elseif fn2(i) == 'Y'
            fn2(i) = 'y';
        end
        if fn2(i) == '^'
            fun2 = strcat(fun2,'.');
        end
        fun2 = strcat(fun2,fn2(i));
    end
end
if strcmp(pf2,fun2)==0
    Hmatch = findobj(allchild(handles.axes1),'Tag','F2');
    delete(Hmatch);
    F2 = 0;
end
if F2 == 0
    Y = eval(fun2);
    f2h = plot(x,Y);
    f2h.Tag = 'F2';
    axis([xmin xmax ymin ymax]);
    F2 = 1;
    pf2 = fun2;
end
% hObject    handle to f2show (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in f1clear.
function f1clear_Callback(hObject, eventdata, handles)
global F1;
if F1 == 1
    Hmatch = findobj(allchild(handles.axes1),'Tag','F1');
    delete(Hmatch);
    set(handles.f1,'String','');
    F1 = 0;
end
% hObject    handle to f1clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in f1show.
function f1show_Callback(hObject, eventdata, handles)
global F1;
global pf1;
syms x;x = 0;
syms y;y = 0;
xmax = str2num(get(handles.xx,'String'));
xmin = str2num(get(handles.xm,'String'));
ymax = str2num(get(handles.yx,'String'));
ymin = str2num(get(handles.ym,'String'));
x = linspace(-1000,1000,10000);
y = linspace(-1000,1000,10000);
fn1 = get(handles.f1,'String');
fun1 = '';
if strcmp(fn1,'')==1
    x = 0;
    fn1 = 'x*0';
else
    for i = 1:length(fn1)
        if fn1(i) == 'X'
            fn1(i) = 'x';
        elseif fn1(i) == 'Y'
            fn1(i) = 'y';
        end
        if fn1(i) == '^'
            fun1 = strcat(fun1,'.');
        end
        fun1 = strcat(fun1,fn1(i));
    end
end
if strcmp(pf1,fun1)==0
    Hmatch = findobj(allchild(handles.axes1),'Tag','F1');
    delete(Hmatch);
    F1 = 0;
end
if F1 == 0
    Y = eval(fun1);
    f1h = plot(x,Y);
    f1h.Tag = 'F1';
    axis([xmin xmax ymin ymax]);
    F1 = 1;
    pf1 = fun1;
end
% hObject    handle to f1show (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)