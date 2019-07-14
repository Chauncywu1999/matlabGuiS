function varargout = oppp(varargin)
% OPPP MATLAB code for oppp.fig
%      OPPP, by itself, creates a new OPPP or raises the existing
%      singleton*.
%
%      H = OPPP returns the handle to a new OPPP or the handle to
%      the existing singleton*.
%
%      OPPP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OPPP.M with the given input arguments.
%
%      OPPP('Property','Value',...) creates a new OPPP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before oppp_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to oppp_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help oppp

% Last Modified by GUIDE v2.5 21-May-2019 08:11:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @oppp_OpeningFcn, ...
                   'gui_OutputFcn',  @oppp_OutputFcn, ...
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


% --- Executes just before oppp is made visible.
function oppp_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to oppp (see VARARGIN)

% Choose default command line output for oppp
handles.output = hObject;

global MINy MAXy
global newRow1;
global max_length;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes oppp wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = oppp_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global max_length;
data=get(handles.uitable1,'data');
model=size(data);
if char(data(1,1))~='0'
    max_length=model(1,1);
else
    max_length=0;
end
data(max_length,:)=[];
set(handles.uitable1,'data',data);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global newRow1;
global max_length;

data=get(handles.uitable1,'data');
model=size(data);
if char(data(1,1))~='0'
    max_length=model(1,1);
else
    max_length=0;
end
handles.max_length=max_length;

if char(data(1,1))~='0'
    new1Row1=max_length+1;
else
    new1Row1=1;
end

x1=0.0;
x2=0.0;
x3=0.0;
x4=0.0;
new1Row2=str2double(get(handles.edit2,'string'));
new1Row3=str2double(get(handles.edit3,'string'));
new1Row4=str2double(get(handles.edit4,'string'));
new1Row5=x1;
new1Row6=x2;
new1Row7=x3;
new1Row8=x4;
%define the input matrix and the actual length of array
%use the test value to get the real results
handles.data=data;
guidata(hObject,handles);
olddata=data;
newrow = [new1Row1 new1Row2 new1Row3 new1Row4 new1Row5 new1Row6 new1Row7 new1Row8];
%judge that if the oldArray is empty or not
if char(data(1,1))~='0'
    newdata = [olddata;newrow];
    set(handles.uitable1,'data',newdata);
else
    newdata=newrow;
    set(handles.uitable1,'data',newdata);
end

newdata1=get(handles.uitable1,'data');
newRow1=newdata1(new1Row1,2:5);
handles.newRow1=newRow1;


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, pathname, filterindex]=uigetfile({'*.xls';'*.xlsx'},'mytitle',...
                     'C:\Users\Chauncywu\Desktop\stoneGuiDesign\matlabGuiLibrary');
data=xlsread(filename);
set(handles.uitable1,'data',data);


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[data,~,raw]=xlsread('finish.xlsx');

x=data(:,2:5);
y=data(:,6:8);
%Data normalization
MINx=min(x);
MAXx=max(x);
global MINy MAXy
MINy=min(y);
MAXy=max(y);

[input,~]=mapminmax(x',0,1);
[output,~]=mapminmax(y',0,1);

net=newff(input,output,[50,3],{'tansig','purelin'},'traingdm');


net.trainParam.show=100;                  
net.trainParam.mem_reduc=1;
net.trainParam.mc=0.8;                 
net.trainParam.Ir=0.9;              
net.trainParam.epochs=10000;           
net.trainParam.goal=0.00001;                
net.trainParam.max_fail=100;

%train the net
net=train(net,input,output);


% nh=sim(net,input);

%load net
global net1
net1=net;

popsize=10;
iterations=200;

global xmin xmax
xmin=[4000,0,0.2,0];
xmax=[8000,2000,1,0.6];

global ymin ymax
ymin=[0,0,4.2];
ymax=[5.211,0.099,20];


global popmin popmax
for k=1:4
    popmin(1,k)=(xmin(k)-MINx(k))/(MAXx(k)-MINx(k));
    popmax(1,k)=(xmax(k)-MINx(k))/(MAXx(k)-MINx(k));
end


for j=1:popsize
    judge=0;
    while judge==0
        pop(j,:)=popmin+(popmax-popmin)*rand;
        judge=test(pop(j,:));
        fitness(j,1)=fun(pop(j,:));
    end
end


[bestfitness,bestindex]=min(fitness);
zbest=pop(bestindex,:);  
gbest=pop;              
fitnessgbest=fitness;       
fitnesszbest=bestfitness;  


Fit(1)=fitnesszbest;


for iter=1:iterations
    disp(['第',num2str(iter),'/',num2str(iterations),'次迭代'])
  
    crosspop=cross(pop);

    mutatepop=mutate(crosspop);
    
    pop=mutatepop;
 
    for j=1:popsize
        fitness(j,1)=fun(pop(j,:));
    end

    for j=1:popsize
        
   
        if fitness(j)<fitnessgbest(j)
            gbest(j,:)=pop(j,:);            
            fitnessgbest(j)=fitness(j);   
        end
        
        if fitness(j)<fitnesszbest
            zbest=pop(j,:);                
            fitnesszbest=fitness(j);  
        end
    end
   
    Fit(1+iter)=fitnesszbest;
    
    
end


bestx=zbest.*(MAXx-MINx)+MINx;
disp(['最优的x：',num2str(bestx)])

besty=calculate(zbest');
disp(['最优的y：',num2str(besty)])

disp(['目标函数最小值：',num2str(fitnesszbest)])

figure(1)
plot(Fit,'linewidth',2)


% --- Executes during object creation, after setting all properties.
function text5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
