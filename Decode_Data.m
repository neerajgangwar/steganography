function varargout = Decode_Data(varargin)
% DECODE_DATA M-file for Decode_Data.fig
%      DECODE_DATA, by itself, creates a new DECODE_DATA or raises the existing
%      singleton*.
%
%      H = DECODE_DATA returns the handle to a new DECODE_DATA or the handle to
%      the existing singleton*.
%
%      DECODE_DATA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DECODE_DATA.M with the given input arguments.
%
%      DECODE_DATA('Property','Value',...) creates a new DECODE_DATA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Decode_Data_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Decode_Data_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Decode_Data

% Last Modified by GUIDE v2.5 29-May-2012 12:41:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Decode_Data_OpeningFcn, ...
                   'gui_OutputFcn',  @Decode_Data_OutputFcn, ...
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


% --- Executes just before Decode_Data is made visible.
function Decode_Data_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Decode_Data (see VARARGIN)

% Choose default command line output for Decode_Data
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Decode_Data wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Decode_Data_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit_source_img_Callback(hObject, eventdata, handles)
% hObject    handle to edit_source_img (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_source_img as text
%        str2double(get(hObject,'String')) returns contents of edit_source_img as a double


% --- Executes during object creation, after setting all properties.
function edit_source_img_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_source_img (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in push_done.
function push_done_Callback(hObject, eventdata, handles)
% hObject    handle to push_done (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
source = get(handles.edit_source_img, 'string');
img = imread(source);
data = decode(img);
set(handles.edit_decode, 'string', data);
set(handles.edit_status, 'string', 'DONE !!');

% --- Executes on button press in push_close.
function push_close_Callback(hObject, eventdata, handles)
% hObject    handle to push_close (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close();


function edit_decode_Callback(hObject, eventdata, handles)
% hObject    handle to edit_decode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_decode as text
%        str2double(get(hObject,'String')) returns contents of edit_decode as a double


% --- Executes during object creation, after setting all properties.
function edit_decode_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_decode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function edit_status_Callback(hObject, eventdata, handles)
% hObject    handle to edit_status (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_status as text
%        str2double(get(hObject,'String')) returns contents of edit_status as a double


% --- Executes during object creation, after setting all properties.
function edit_status_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_status (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit_source_img, 'string', '');
set(handles.edit_decode, 'string', '');
set(handles.edit_status, 'string', '');



% --- Executes on button press in push_browse.
function push_browse_Callback(hObject, eventdata, handles)
% hObject    handle to push_browse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename pathname] = uigetfile({'*.jpeg'; '*.png'; '*.bmp'}, 'Select Image');
set(handles.edit_source_img, 'string', [pathname filename]);
