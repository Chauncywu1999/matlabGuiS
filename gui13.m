function varargout = gui13(varargin)
% GUI13 MATLAB code for gui13.fig
%      GUI13, by itself, creates a new GUI13 or raises the existing
%      singleton*.
%
%      H = GUI13 returns the handle to a new GUI13 or the handle to
%      the existing singleton*.
%
%      GUI13('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI13.M with the given input arguments.
%
%      GUI13('Property','Value',...) creates a new GUI13 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui13_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui13_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui13

% Last Modified by GUIDE v2.5 19-Nov-2018 20:00:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui13_OpeningFcn, ...
                   'gui_OutputFcn',  @gui13_OutputFcn, ...
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


% --- Executes just before gui13 is made visible.
function gui13_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui13 (see VARARGIN)

% Choose default command line output for gui13
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui13 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui13_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
