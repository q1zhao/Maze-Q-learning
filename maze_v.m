function varargout = maze_v(varargin)
% MAZE_V MATLAB code for maze_v.fig
%      MAZE_V, by itself, creates a new MAZE_V or raises the existing
%      singleton*.
%
%      H = MAZE_V returns the handle to a new MAZE_V or the handle to
%      the existing singleton*.
%
%      MAZE_V('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAZE_V.M with the given input arguments.
%
%      MAZE_V('Property','Value',...) creates a new MAZE_V or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before maze_v_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to maze_v_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help maze_v

% Last Modified by GUIDE v2.5 21-Jun-2018 21:59:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @maze_v_OpeningFcn, ...
                   'gui_OutputFcn',  @maze_v_OutputFcn, ...
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


% --- Executes just before maze_v is made visible.
function maze_v_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to maze_v (see VARARGIN)

% Choose default command line output for maze_v
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes maze_v wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = maze_v_OutputFcn(hObject, eventdata, handles) 
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
handles.s1 = str2num(get(handles.edit1,'String')); 
handles.s2 = str2num(get(handles.edit2,'String')); 
handles.e1 = str2num(get(handles.edit3,'String')); 
handles.e2 = str2num(get(handles.edit4,'String')); 
[results,position] = maze_small(handles.s1,handles.s2,handles.e1,handles.e2);
set(handles.edit5,'String',results);
% if ~isempty(position)
% %     axes(handles.axes1)
%      for i=1:size(position,1)-1
%          plot([position(i,2)+0.5,position(i+1,2)+0.5],[position(i,1)+0.5,position(i+1,1)+0.5],'-r','linewidth',2);
%         hold on;
%      end
%     hold off
% end
guidata(hObject, handles);

function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.s1 = str2num(get(handles.edit1,'String')); 
handles.s2 = str2num(get(handles.edit2,'String')); 
hold on
plot(handles.s2+0.5,handles.s1+0.5,'p','MarkerSize',20,'MarkerFaceColor','y')
guidata(hObject, handles);

function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.e1 = str2num(get(handles.edit3,'String')); 
handles.e2 = str2num(get(handles.edit4,'String')); 
hold on
plot(handles.e2+0.5,handles.e1+0.5,'p','MarkerSize',20,'MarkerFaceColor','r')
guidata(hObject, handles);



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


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles) %#ok<DEFNU>
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
axes(hObject)
load C
lx=29;ly=52;E=-1000;
index(:,1) = col(repmat((1:lx)',1,ly));
index(:,2) = repmat((1:ly)',lx,1);
C(1,1)=0;C(end,2)=0;
% recovery maze
imagesc(zeros(lx+1,ly+1));
hold on
i1 = find(C(:,1)==E);
for i = 1:numel(i1)
    ix = index(i1(i),1);
    iy = index(i1(i),2);
    plot([iy,iy+1],[ix,ix],'-k','linewidth',2)
    hold on
end

i2 = find(C(:,2)==E);
for i = 1:numel(i2)
    ix = index(i2(i),1);
    iy = index(i2(i),2);
    plot([iy,iy+1],[ix+1,ix+1],'-k','linewidth',2)
    hold on
end
i3 = find(C(:,3)==E);
for i = 1:numel(i3)
    ix = index(i3(i),1);
    iy = index(i3(i),2);
    plot([iy,iy],[ix,ix+1],'-k','linewidth',2)
    hold on
end
i4 = find(C(:,4)==E);
for i = 1:numel(i4)
    ix = index(i4(i),1);
    iy = index(i4(i),2);
    plot([iy+1,iy+1],[ix,ix+1],'-k','linewidth',2)
    hold on
end
xlim([0.8 53.2])
ylim([0.8 30.2])
axis off
hold off
axis off
guidata(hObject,handles)
% Hint: place code in OpeningFcn to populate axes1
