function varargout = gui10(varargin)
% GUI10 MATLAB code for gui10.fig
%      GUI10, by itself, creates a new GUI10 or raises the existing
%      singleton*.
%
%      H = GUI10 returns the handle to a new GUI10 or the handle to
%      the existing singleton*.
%
%      GUI10('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI10.M with the given input arguments.
%
%      GUI10('Property','Value',...) creates a new GUI10 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui10_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui10_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui10

% Last Modified by GUIDE v2.5 14-Nov-2018 23:47:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui10_OpeningFcn, ...
                   'gui_OutputFcn',  @gui10_OutputFcn, ...
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


% --- Executes just before gui10 is made visible.
function gui10_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui10 (see VARARGIN)

% Choose default command line output for gui10
handles.output = hObject;



% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui10 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui10_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%ini_robot
q0=[0 0 0 0 0 0 0];
% q1b=[3*pi .1745 pi/3 pi/2 .5236 pi/1.5 0];
% q1=[.0873 .1745 .3491 .1745 .5236 .8727 0];
% q2=[.0873 0 -.3491 .2618 .8727 1.2217 0];
% q3=[-.1745 -.3491  .5236 .0873 -.1222 .3491 0];
% q4=[.1745 .1745 0 -.1396 .3191 -.5236 0];
% q5=[-.3491 -.3491 -.3491 0 -.0873 0 0];
 
%Iniciar Rbt
L1=Link([0 12.4 0 pi/2 0 -pi/2]);
L2=Link([0 0 0 -pi/2 ]);
L3=Link([0 15.43 0 pi/2 ]);
L4=Link([0 0 0 -pi/2 0 0]);
L5=Link([0 15.925 0 pi/2]);
L6=Link([0 0 0 -pi/2 ]);
L7=Link([0 15.0 0 0 0 pi/2]);
 
% LinkMat=[0 12.4 0 pi/2 0 -pi/2;
%     0 0 0 -pi/2 0 0;
%     0 15.43 0 pi/2 0 0;
%     0 0 0 -pi/2 0 0;
%     0 15.925 0 pi/2 0 0;
%     0 0 0 -pi/2 0 0;
%     0 15 0 0 0 pi/2];
Rbt=SerialLink([L1 L2 L3 L4 L5 L6 L7]);
% Rbt2=SerialLink([L1 L2 L3 L4 L5]);
% Rbt3=SerialLink(LinkMat);
%t=0:.03:2;%Time vector & steps
% traj1=jtraj(q0,q1,t); 
% traj2=jtraj(q1,q2,t);
% traj3=jtraj(q2,q3,t);
% traj4=jtraj(q3,q4,t);
% traj5=jtraj(q4,q5,t);
% traj6=jtraj(q5,q0,t);
%
qsq1=[0.46088 0.37699 0 1.31 0 1.4451 0];
qsq2=[.81681 0.56549 0 1.0681 0 1.2566 0 ];
qsq3=[2.36 0.69115 0 0.848 0 1.4451 0 ];
qsq4=[2.66 0.37699 0 1.31 0 1.4451 0];
qsq5=[pi/2 0.62831 0 1.5708 0 0.94249 0];
qsq6=[0 0.62831 0 1.5708 0 0.94249 0];
 
t=0:.04:2;
sqtraj1=jtraj(q0,qsq1,t); 
sqtraj2=jtraj(qsq1,qsq2,t); 
sqtraj3=jtraj(qsq2,qsq3,t); 
sqtraj4=jtraj(qsq3,qsq4,t);
sqtraj5=jtraj(qsq4,qsq1,t);
sqtraj6=jtraj(qsq1,q0,t);
sqtraj7=jtraj(qsq6,q0,t);
 
hold on
atj=zeros(4,4);
view(-35,40)
xlim([-40,40])
ylim([-40,40])
zlim([0,60])
for i=1:1:51
    atj=Rbt.fkine(sqtraj1(i,:));
    jta=transpose(atj);
    JTA(i,:)=jta(4,1:3);
    jta=JTA;
    plot2(jta(i,:),'r.')
    Rbt.plot(sqtraj1(i,:))
    plot2(JTA,'b')
end
for i=1:1:51
    atj2=Rbt.fkine(sqtraj2(i,:));
    jta2=transpose(atj2);
    JTA2(i,:)=jta2(4,1:3);
    jta2=JTA2;
    plot2(jta2(i,:),'r.')
    Rbt.plot(sqtraj2(i,:))
    plot2(JTA2,'b')
end
for i=1:1:51
    atj3=Rbt.fkine(sqtraj3(i,:));
    jta3=transpose(atj3);
    JTA3(i,:)=jta3(4,1:3);
    jta3=JTA3;
    plot2(jta3(i,:),'r.')
    Rbt.plot(sqtraj3(i,:))
    plot2(JTA3,'b')
end
for i=1:1:51
    atj4=Rbt.fkine(sqtraj4(i,:));
    jta4=transpose(atj4);
    JTA4(i,:)=jta4(4,1:3);
    jta4=JTA4;
    plot2(jta4(i,:),'r.')
    Rbt.plot(sqtraj4(i,:))
    plot2(JTA4,'b')
end
for i=1:1:51
    atj5=Rbt.fkine(sqtraj5(i,:));
    jta5=transpose(atj5);
    JTA5(i,:)=jta5(4,1:3);
    jta5=JTA5;
    plot2(jta5(i,:),'r.')
    Rbt.plot(sqtraj5(i,:))
    plot2(JTA5,'b')
end
for i=1:1:51
    atj6=Rbt.fkine(sqtraj6(i,:));
    jta6=transpose(atj6);
    JTA6(i,:)=jta6(4,1:3);
    jta6=JTA6;
    plot2(jta6(i,:),'r.')
    Rbt.plot(sqtraj6(i,:))
    plot2(JTA6,'b')
end
 for i=1:1:51
    atj7=Rbt.fkine(sqtraj7(i,:));
    jta7=transpose(atj7);
    JTA7(i,:)=jta7(4,1:3);
    jta7=JTA7;
    plot2(jta7(i,:),'r.')
    Rbt.plot(sqtraj7(i,:))
    plot2(JTA7,'b')
end


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
close(gui10);
