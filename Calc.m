function varargout = Calc(varargin)
% CALC MATLAB code for Calc.fig
%      CALC, by itself, creates a new CALC or raises the existing
%      singleton*.
%
%      H = CALC returns the handle to a new CALC or the handle to
%      the existing singleton*.
%
%      CALC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALC.M with the given input arguments.
%
%      CALC('Property','Value',...) creates a new CALC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Calc_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Calc_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Calc

% Last Modified by GUIDE v2.5 05-Feb-2016 10:25:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Calc_OpeningFcn, ...
                   'gui_OutputFcn',  @Calc_OutputFcn, ...
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


% --- Executes just before Calc is made visible.
function Calc_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Calc (see VARARGIN)

% Choose default command line output for Calc
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Calc wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Calc_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbuttonce.
function pushbuttonce_Callback(hObject, eventdata, handles)
set(handles.text,'String','0');
% hObject    handle to pushbuttonce (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton0.
function pushbutton0_Callback(hObject, eventdata, handles)
textstr = get(handles.text,'String');
if strcmp(textstr,'Inf') == 1
    textstr = '0';
end
if textstr == '0'
    set(handles.text,'String',textstr);
else
    textstr = strcat(textstr,'0');
end
set(handles.text,'String',textstr);
% hObject    handle to pushbutton0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbuttoneq.
function pushbuttoneq_Callback(hObject, eventdata, handles)
textstr = get(handles.text,'String');
ans = eval(textstr);
set(handles.text,'String',ans);
% hObject    handle to pushbuttoneq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbuttonplus.
function pushbuttonplus_Callback(hObject, eventdata, handles)
textstr = get(handles.text,'String');
for i = 2:length(textstr)-1
    if textstr(i) == '+' || textstr(i) == '-' || textstr(i) == '*' || textstr(i) == '/'
        textstr = num2str(eval(textstr));
        set(handles.text,'String',textstr);
        break;
    end
end
textstr = get(handles.text,'String');
if textstr(length(textstr)) == '+' || textstr(length(textstr)) == '-' || textstr(length(textstr)) == '*' || textstr(length(textstr)) == '/'
    textstr = strcat(textstr(1:length(textstr)-1),'+');
else
    textstr = strcat(textstr,'+');
end
set(handles.text,'String',textstr);
% hObject    handle to pushbuttonplus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
textstr = get(handles.text,'String');
if strcmp(textstr,'Inf') == 1
    textstr = '0';
end
if textstr == '0'
    textstr = '1';
else
    textstr = strcat(textstr,'1');
end
set(handles.text,'String',textstr);
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
textstr = get(handles.text,'String');
if strcmp(textstr,'Inf') == 1
    textstr = '0';
end
if textstr == '0'
    textstr = '2';
else
    textstr = strcat(textstr,'2');
end
set(handles.text,'String',textstr);
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
textstr = get(handles.text,'String');
if strcmp(textstr,'Inf') == 1
    textstr = '0';
end
if textstr == '0'
    textstr = '3';
else
    textstr = strcat(textstr,'3');
end
set(handles.text,'String',textstr);
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbuttonsub.
function pushbuttonsub_Callback(hObject, eventdata, handles)
textstr = get(handles.text,'String');
for i = 2:length(textstr)-1
    if textstr(i) == '+' || textstr(i) == '-' || textstr(i) == '*' || textstr(i) == '/'
        textstr = num2str(eval(textstr));
        set(handles.text,'String',textstr);
        break;
    end
end
textstr = get(handles.text,'String');
if textstr(length(textstr)) == '+' || textstr(length(textstr)) == '-' || textstr(length(textstr)) == '*' || textstr(length(textstr)) == '/'
    textstr = strcat(textstr(1:length(textstr)-1),'-');
else
    textstr = strcat(textstr,'-');
end
set(handles.text,'String',textstr);
% hObject    handle to pushbuttonsub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
textstr = get(handles.text,'String');
if strcmp(textstr,'Inf') == 1
    textstr = '0';
end
if textstr == '0'
    textstr = '4';
else
    textstr = strcat(textstr,'4');
end
set(handles.text,'String',textstr);
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
textstr = get(handles.text,'String');
if strcmp(textstr,'Inf') == 1
    textstr = '0';
end
if textstr == '0'
    textstr = '5';
else
    textstr = strcat(textstr,'5');
end
set(handles.text,'String',textstr);
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
textstr = get(handles.text,'String');
if strcmp(textstr,'Inf') == 1
    textstr = '0';
end
if textstr == '0'
    textstr = '6';
else
    textstr = strcat(textstr,'6');
end
set(handles.text,'String',textstr);
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbuttonmul.
function pushbuttonmul_Callback(hObject, eventdata, handles)
textstr = get(handles.text,'String');
for i = 2:length(textstr)-1
    if textstr(i) == '+' || textstr(i) == '-' || textstr(i) == '*' || textstr(i) == '/'
        textstr = num2str(eval(textstr));
        set(handles.text,'String',textstr);
        break;
    end
end
textstr = get(handles.text,'String');
if textstr(length(textstr)) == '+' || textstr(length(textstr)) == '-' || textstr(length(textstr)) == '*' || textstr(length(textstr)) == '/'
    textstr = strcat(textstr(1:length(textstr)-1),'*');
else
    textstr = strcat(textstr,'*');
end
set(handles.text,'String',textstr);
% hObject    handle to pushbuttonmul (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
textstr = get(handles.text,'String');
if strcmp(textstr,'Inf') == 1
    textstr = '0';
end
if textstr == '0'
    textstr = '7';
else
    textstr = strcat(textstr,'7');
end
set(handles.text,'String',textstr);
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
textstr = get(handles.text,'String');
if strcmp(textstr,'Inf') == 1
    textstr = '0';
end
if textstr == '0'
    textstr = '8';
else
    textstr = strcat(textstr,'8');
end
set(handles.text,'String',textstr);
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
textstr = get(handles.text,'String');
if strcmp(textstr,'Inf') == 1
    textstr = '0';
end
if textstr == '0'
    textstr = '9';
else
    textstr = strcat(textstr,'9');
end
set(handles.text,'String',textstr);
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbuttondiv.
function pushbuttondiv_Callback(hObject, eventdata, handles)
textstr = get(handles.text,'String');
for i = 2:length(textstr)-1
    if textstr(i) == '+' || textstr(i) == '-' || textstr(i) == '*' || textstr(i) == '/'
        textstr = num2str(eval(textstr));
        set(handles.text,'String',textstr);
        break;
    end
end
textstr = get(handles.text,'String');
if textstr(length(textstr)) == '+' || textstr(length(textstr)) == '-' || textstr(length(textstr)) == '*' || textstr(length(textstr)) == '/'
    textstr = strcat(textstr(1:length(textstr)-1),'/');
else
    textstr = strcat(textstr,'/');
end
set(handles.text,'String',textstr);
% hObject    handle to pushbuttondiv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbuttondot.
function pushbuttondot_Callback(hObject, eventdata, handles)
textstr = get(handles.text,'String');
if textstr(length(textstr)) == '.'
    for i = length(textstr):-1:2
        if textstr(i) == '.'
            for j = i:-1:2
                if textstr(j) == '+' || textstr(j) == '-' || textstr(j) == '*' || textstr(j) == '/'
                    textstr = strcat(textstr,'.');
                    break;
                end
            end
        end
    end
else
    textstr = strcat(textstr,'.');
end
set(handles.text,'String',textstr);
% hObject    handle to pushbuttondot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbuttonco.
function pushbuttonco_Callback(hObject, eventdata, handles)
textstr = get(handles.text,'String');
if strcmp(textstr,'Inf') == 1 || strcmp(textstr,'NaN') == 1
    textstr = '0';
end
textstr = strcat(textstr(1:length(textstr)-1),'');
if length(textstr) == 0
    set(handles.text,'String','0');
else
    set(handles.text,'String',textstr);
end
% hObject    handle to pushbuttonco (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


function text_Callback(hObject, eventdata, handles)
% hObject    handle to text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text as text
%        str2double(get(hObject,'String')) returns contents of text as a double


% --- Executes during object creation, after setting all properties.
function text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
