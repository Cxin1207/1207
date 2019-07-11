function varargout = fire(varargin)
% FIRE M-file for fire.fig
%      FIRE, by itself, creates a new FIRE or raises the existing
%      singleton*.
%
%      H = FIRE returns the handle to a new FIRE or the handle to
%      the existing singleton*.
%
%      FIRE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FIRE.M with the given input arguments.
%
%      FIRE('Property','Value',...) creates a new FIRE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fire_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fire_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fire

% Last Modified by GUIDE v2.5 31-Jan-2015 21:09:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fire_OpeningFcn, ...
                   'gui_OutputFcn',  @fire_OutputFcn, ...
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


% --- Executes just before fire is made visible.
function fire_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fire (see VARARGIN)

% Choose default command line output for fire
handles.output = hObject;
set(handles.edit1,'String','300');
set(handles.edit2,'String','0.000005');
set(handles.edit3,'String','3000');
set(handles.edit5,'String','0.01');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fire wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = fire_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



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


% --------------------------------------------------------------------
function Menuone_Callback(hObject, eventdata, handles)
% hObject    handle to Menuone (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menutwo_Callback(hObject, eventdata, handles)
% hObject    handle to menutwo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function submenuone_Callback(hObject, eventdata, handles)
% hObject    handle to submenuone (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
figure('Name','·ÂÕæÍ¼Ïñ');

% --------------------------------------------------------------------
function submenutwo_Callback(hObject, eventdata, handles)
% hObject    handle to submenutwo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
uigetfile({'*.m';'*.bmp';'*.gif'},'Ñ¡ÔñÎÄ¼ş','MultiSelect','on');
% --------------------------------------------------------------------
function submenuthree_Callback(hObject, eventdata, handles)
% hObject    handle to submenuthree (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
uiputfile({'*.bmp';'*.m''*.gif'},'±£´æÎª');

% --------------------------------------------------------------------
function submenufour_Callback(hObject, eventdata, handles)
% hObject    handle to submenufour (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
uiputfile({'*.bmp';'*.m''*.gif'},'Áí´æÎª');

% --------------------------------------------------------------------
function submenusix_Callback(hObject, eventdata, handles)
% hObject    handle to submenusix (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(gcf);
% --------------------------------------------------------------------
function menuthree_Callback(hObject, eventdata, handles)
% hObject    handle to menuthree (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menufour_Callback(hObject, eventdata, handles)
% hObject    handle to menufour (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menufive_Callback(hObject, eventdata, handles)
% hObject    handle to menufive (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function submenuelenve_Callback(hObject, eventdata, handles)
% hObject    handle to submenuelenve (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
helpdlg('ÉĞÎ´¿ª·¢','°ïÖúÒ³Ãæ');

% --------------------------------------------------------------------
function submenuten_Callback(hObject, eventdata, handles)
% hObject    handle to submenuten (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function submenutwelf_Callback(hObject, eventdata, handles)
% hObject    handle to submenutwelf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function submenueight_Callback(hObject, eventdata, handles)
% hObject    handle to submenueight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
uisetcolor('Ñ¡ÔñÑÕÉ«');

% --------------------------------------------------------------------
function submenunine_Callback(hObject, eventdata, handles)
% hObject    handle to submenunine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function submenuseven_Callback(hObject, eventdata, handles)
% hObject    handle to submenuseven (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pushbutton2_Callback(hObject, eventdata, handles)
% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit1,'String','');
set(handles.edit2,'String','');
set(handles.edit3,'String','');
set(handles.edit5,'String','');
% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n=str2num(get(handles.edit1,'String')); %must be divisible by 4
Plightning=str2num(get(handles.edit2,'String'));
m=str2num(get(handles.edit3,'String'));
Pgrowth=str2num(get(handles.edit5,'String'));
z=zeros(n,n);
o=ones(n,n);
veg=z;
sum=z;
imh = image(cat(3,z,veg*.02,z));
set(imh, 'erasemode', 'none')
% burning -> empty
% green -> burning if one neigbor burning or with prob=f (lightning)
% empty -> green with prob=p (growth)
% veg = {empty=0 burning=1 green=2}
for i=1:m
%nearby fires?
sum = (veg(1:n,[n 1:n-1])==1) + (veg(1:n,[2:n 1])==1) + ...
(veg([n 1:n-1], 1:n)==1) + (veg([2:n 1],1:n)==1) ;
veg = ...
2*(veg==2) - ((veg==2) & (sum>0 | (rand(n,n)<Plightning))) + ...
2*((veg==0) & rand(n,n)<Pgrowth) ;
set(imh, 'cdata', cat(3,(veg==1),(veg==2),z) )
drawnow
end
% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function submenuo_Callback(hObject, eventdata, handles)
% hObject    handle to submenuo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
uisetcolor('Ñ¡ÔñÑÕÉ«');

% --------------------------------------------------------------------
function submenufive_Callback(hObject, eventdata, handles)
% hObject    handle to submenufive (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

printdlg;
% --------------------------------------------------------------------
function submenuw_Callback(hObject, eventdata, handles)
% hObject    handle to submenuw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
uisetfont('Ñ¡Ôñ×ÖÌå');


% --- Executes on mouse press over axes background.
function axes1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(imh);


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over text10.
function text10_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to text10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
H=num2str(h);
set('String','H');



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
