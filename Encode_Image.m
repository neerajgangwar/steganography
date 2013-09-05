function varargout = Encode_Image(varargin)
% ENCODE_IMAGE M-file for Encode_Image.fig
%      ENCODE_IMAGE, by itself, creates a new ENCODE_IMAGE or raises the existing
%      singleton*.
%
%      H = ENCODE_IMAGE returns the handle to a new ENCODE_IMAGE or the handle to
%      the existing singleton*.
%
%      ENCODE_IMAGE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ENCODE_IMAGE.M with the given input arguments.
%
%      ENCODE_IMAGE('Property','Value',...) creates a new ENCODE_IMAGE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Encode_Image_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Encode_Image_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Encode_Image

% Last Modified by GUIDE v2.5 29-May-2012 12:51:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Encode_Image_OpeningFcn, ...
                   'gui_OutputFcn',  @Encode_Image_OutputFcn, ...
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


% --- Executes just before Encode_Image is made visible.
function Encode_Image_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Encode_Image (see VARARGIN)

% Choose default command line output for Encode_Image
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Encode_Image wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Encode_Image_OutputFcn(hObject, eventdata, handles) 
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



function edit_des_img_Callback(hObject, eventdata, handles)
% hObject    handle to edit_des_img (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_des_img as text
%        str2double(get(hObject,'String')) returns contents of edit_des_img as a double


% --- Executes during object creation, after setting all properties.
function edit_des_img_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_des_img (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_txt_Callback(hObject, eventdata, handles)
% hObject    handle to edit_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_txt as text
%        str2double(get(hObject,'String')) returns contents of edit_txt as a double


% --- Executes during object creation, after setting all properties.
function edit_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_txt (see GCBO)
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
destination = get(handles.edit_des_img, 'string');
text = get(handles.edit_txt, 'string');
a = imread(source);
b = encode(a, text);
imwrite(b, destination, 'PNG');
set(handles.edit_status, 'string', 'DONE !!');
Done


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




% --- Executes on button press in push_reset.
function push_reset_Callback(hObject, eventdata, handles)
% hObject    handle to push_reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit_status, 'string', '');
set(handles.edit_source_img, 'string', '');
set(handles.edit_des_img, 'string', '');
set(handles.edit_txt, 'string', '');


% --- Executes on button press in push_close.
function push_close_Callback(hObject, eventdata, handles)
% hObject    handle to push_close (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close();



% --- Executes on button press in push_browse_src.
function push_browse_src_Callback(hObject, eventdata, handles)
% hObject    handle to push_browse_src (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename pathname] = uigetfile({'*.jpeg'; '*.png'; '*.bmp'}, 'Select Image');
set(handles.edit_source_img, 'string', [pathname filename]);

% --- Executes on button press in push_browse_des.
function push_browse_des_Callback(hObject, eventdata, handles)
% hObject    handle to push_browse_des (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename pathname] = uiputfile({'*.jpeg'; '*.png'; '*.bmp'}, 'Destination');
set(handles.edit_des_img, 'string', [pathname filename]);

