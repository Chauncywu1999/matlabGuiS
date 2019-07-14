function varargout = gui5c(varargin)
% GUI5C MATLAB code for gui5c.fig
%      GUI5C, by itself, creates a new GUI5C or raises the existing
%      singleton*.
%
%      H = GUI5C returns the handle to a new GUI5C or the handle to
%      the existing singleton*.
%
%      GUI5C('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI5C.M with the given input arguments.
%
%      GUI5C('Property','Value',...) creates a new GUI5C or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui5c_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui5c_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui5c

% Last Modified by GUIDE v2.5 23-Sep-2018 09:48:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui5c_OpeningFcn, ...
                   'gui_OutputFcn',  @gui5c_OutputFcn, ...
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


% --- Executes just before gui5c is made visible.
function gui5c_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui5c (see VARARGIN)

% Choose default command line output for gui5c
handles.output = hObject;

im=imread('ABB1.jpg');
axes(handles.axes1)
imshow(im)

im=imread('KUKA1.jpg');
axes(handles.axes2)
imshow(im)

im=imread('anchuan1.jpg');
axes(handles.axes3)
imshow(im)

im=imread('fanake1.jpg');
axes(handles.axes4)
imshow(im)

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui5c wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui5c_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
