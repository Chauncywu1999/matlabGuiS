function varargout = gui5a(varargin)
% GUI5A MATLAB code for gui5a.fig
%      GUI5A, by itself, creates a new GUI5A or raises the existing
%      singleton*.
%
%      H = GUI5A returns the handle to a new GUI5A or the handle to
%      the existing singleton*.
%
%      GUI5A('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI5A.M with the given input arguments.
%
%      GUI5A('Property','Value',...) creates a new GUI5A or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui5a_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui5a_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui5a

% Last Modified by GUIDE v2.5 25-Dec-2018 15:53:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui5a_OpeningFcn, ...
                   'gui_OutputFcn',  @gui5a_OutputFcn, ...
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


% --- Executes just before gui5a is made visible.
function gui5a_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui5a (see VARARGIN)

% Choose default command line output for gui5a
handles.output = hObject;


im=imread('KUKA.jpg');
axes(handles.axes1)
imshow(im)

im=imread('KUKA1.jpg');
axes(handles.axes2)
imshow(im)

im=imread('KUKA2.jpg');
axes(handles.axes3)
imshow(im)

im=imread('KUKA3.jpg');
axes(handles.axes4)
imshow(im)

im=imread('KUKA4.jpg');
axes(handles.axes5)
imshow(im)

im=imread('KUKA5.jpg');
axes(handles.axes6)
imshow(im)

im=imread('KUKA6.jpg');
axes(handles.axes7)
imshow(im)

im=imread('KUKA7.jpg');
axes(handles.axes8)
imshow(im)

im=imread('KUKA8.jpg');
axes(handles.axes9)
imshow(im)

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui5a wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui5a_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im=imread('KUKA10.jpg');
axes(handles.axes1)
imshow(im)

im=imread('YASKAWA1.jpg');
axes(handles.axes2)
imshow(im)

im=imread('YASKAWA2.jpg');
axes(handles.axes3)
imshow(im)

im=imread('YASKAWA3.jpg');
axes(handles.axes4)
imshow(im)

im=imread('YASKAWA4.jpg');
axes(handles.axes5)
imshow(im)

im=imread('YASKAWA5.jpg');
axes(handles.axes6)
imshow(im)

im=imread('YASKAWA6.jpg');
axes(handles.axes7)
imshow(im)

im=imread('YASKAWA7.jpg');
axes(handles.axes8)
imshow(im)

im=imread('YASKAWA8.jpg');
axes(handles.axes9)
imshow(im)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im=imread('YASKAWA9.jpg');
axes(handles.axes1)
imshow(im)

im=imread('YASKAWA10.jpg');
axes(handles.axes2)
imshow(im)

im=imread('YASKAWA11.jpg');
axes(handles.axes3)
imshow(im)

im=imread('YASKAWA12.jpg');
axes(handles.axes4)
imshow(im)

im=imread('YASKAWA13.jpg');
axes(handles.axes5)
imshow(im)

im=imread('YASKAWA14.jpg');
axes(handles.axes6)
imshow(im)

im=imread('YASKAWA15.jpg');
axes(handles.axes7)
imshow(im)

im=imread('YASKAWA16.jpg');
axes(handles.axes8)
imshow(im)

im=imread('FANUC1.jpg');
axes(handles.axes9)
imshow(im)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im=imread('FANUC2.jpg');
axes(handles.axes1)
imshow(im)

im=imread('FANUC3.jpg');
axes(handles.axes2)
imshow(im)

im=imread('FANUC4.jpg');
axes(handles.axes3)
imshow(im)

im=imread('FANUC5.jpg');
axes(handles.axes4)
imshow(im)


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
