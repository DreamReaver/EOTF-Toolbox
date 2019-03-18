function varargout = main_window(varargin)
% MAIN_WINDOW MATLAB code for main_window.fig
%      MAIN_WINDOW, by itself, creates a new MAIN_WINDOW or raises the existing
%      singleton*.
%
%      H = MAIN_WINDOW returns the handle to a new MAIN_WINDOW or the handle to
%      the existing singleton*.
%
%      MAIN_WINDOW('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN_WINDOW.M with the given input arguments.
%
%      MAIN_WINDOW('Property','Value',...) creates a new MAIN_WINDOW or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before main_window_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to main_window_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help main_window

% Last Modified by GUIDE v2.5 11-Mar-2019 17:48:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main_window_OpeningFcn, ...
                   'gui_OutputFcn',  @main_window_OutputFcn, ...
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


% --- Executes just before main_window is made visible.
function main_window_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main_window (see VARARGIN)
addpath(genpath(pwd));

pushbutton1_Callback(hObject, eventdata, handles)

% Choose default command line output for main_window
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes main_window wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = main_window_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1_bit_depth.
function popupmenu1_bit_depth_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1_bit_depth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1_bit_depth contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1_bit_depth


% --- Executes during object creation, after setting all properties.
function popupmenu1_bit_depth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1_bit_depth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit1_gamma_Callback(hObject, eventdata, handles)
% hObject    handle to edit1_gamma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1_gamma as text
%        str2double(get(hObject,'String')) returns contents of edit1_gamma as a double
if isempty(get(hObject,'String')) | isnan(str2double(get(hObject,'String')))
    set(hObject,'String', '1.0');
else
    b = str2double(get(hObject,'String'));
    if b < 1
        set(hObject,'String', '1.0');
    elseif b > 3
        set(hObject,'String', '3.0');
    end
end


% --- Executes during object creation, after setting all properties.
function edit1_gamma_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1_gamma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit2_ref_L_Callback(hObject, eventdata, handles)
% hObject    handle to edit2_ref_L (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2_ref_L as text
%        str2double(get(hObject,'String')) returns contents of edit2_ref_L as a double
if isempty(get(hObject,'String')) | isnan(str2double(get(hObject,'String')))
    set(hObject,'String', '100');
else
    b = str2double(get(hObject,'String'));
    if b < 1
        set(hObject,'String', '100');
    elseif b > 10000
        set(hObject,'String', '10000');
    end
end


% --- Executes during object creation, after setting all properties.
function edit2_ref_L_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2_ref_L (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit3_min_L_Callback(hObject, eventdata, handles)
% hObject    handle to edit3_min_L (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3_min_L as text
%        str2double(get(hObject,'String')) returns contents of edit3_min_L as a double
maxL = str2double(get(handles.edit4_max_L,'String'));
if isempty(get(hObject,'String')) | isnan(str2double(get(hObject,'String')))
    set(hObject,'String', '0');
else
    b = str2double(get(hObject,'String'));
    if b < 0
        set(hObject,'String', '0');
    elseif b >= maxL
        set(hObject,'String', num2str(maxL));
    end
end


% --- Executes during object creation, after setting all properties.
function edit3_min_L_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3_min_L (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit4_max_L_Callback(hObject, eventdata, handles)
% hObject    handle to edit4_max_L (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4_max_L as text
%        str2double(get(hObject,'String')) returns contents of edit4_max_L as a double
minL = str2double(get(handles.edit3_min_L,'String'));

if isempty(get(hObject,'String')) | isnan(str2double(get(hObject,'String')))
    set(hObject,'String', get(handles.edit2_ref_L,'String'));
else
    b = str2double(get(hObject,'String'));
    if b <= minL
        set(hObject,'String', num2str(minL));
    elseif b > 10000
        set(hObject,'String', '10000');
    end
end


% --- Executes during object creation, after setting all properties.
function edit4_max_L_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4_max_L (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = get(handles.popupmenu1_bit_depth,'Value');
switch x
    case 1
        bitDepth = 8;
    case 2
        bitDepth = 10;
    case 3
        bitDepth = 12;
end
maxValue = 2 ^ bitDepth - 1;

gamma = str2double(get(handles.edit1_gamma,'String'));
LRef = str2double(get(handles.edit2_ref_L,'String'));
LMin = str2double(get(handles.edit3_min_L,'String'));
LMax = str2double(get(handles.edit4_max_L,'String'));

%*********************** PQ ******************************
PQLEnds =[LMin, LMax]; % PQ左右端点亮度
PQValueEnds = PQ_OETF(PQLEnds, bitDepth); % PQ左右端点码值
PQIntervalLength = PQValueEnds(2) - PQValueEnds(1); % PQ码值区间长度
PQIntervalPerc = PQIntervalLength / maxValue * 100; % PQ码值区间百分比
if PQIntervalLength == 0 % 区间长度为0的情况
    if PQValueEnds(1) == maxValue
        v1 = maxValue - 1;
        v2 = maxValue;
    else
        v1 = PQValueEnds(1);
        v2 = PQValueEnds(1) + 1;
    end
    PQMinStep = PQ_EOTF(v2, bitDepth) - PQ_EOTF(v1, bitDepth);
    PQMaxStep = PQMinStep;
else
    PQValues = PQValueEnds(1):PQValueEnds(2); % 区间内所有码值
    PQ_L = PQ_EOTF(PQValues, bitDepth); % 反推亮度
    PQMinStep = PQ_L(2) - PQ_L(1); % 左端点处亮度步长
    PQMaxStep = PQ_L(end) - PQ_L(end-1); % 右端点处亮度步长
end

%********************** Gamma **********************
GammaLEnds =[LMin, LMax]; % Gamma左右端点亮度
if LMin > LRef
    GammaLEnds(1) = LRef; % 如果最小亮度超过参考亮度，则Gamma最小亮度改为参考值
end
if LMax > LRef
    GammaLEnds(2) = LRef; % 如果最大亮度超过参考亮度，则Gamma最大亮度改为参考值
end
gammaValueEnds = Gamma_OETF(GammaLEnds, bitDepth, gamma, LRef); % Gamma左右端点码值
gammaIntervalLength = gammaValueEnds(2) - gammaValueEnds(1); % Gamma码值区间长度
gammaIntervalPerc = gammaIntervalLength / maxValue * 100; % Gamma码值区间百分比
if gammaIntervalLength == 0 % 区间长度为0的情况
    if gammaValueEnds(1) == maxValue
        gammaMinStep = ...
        Gamma_EOTF(maxValue, bitDepth, gamma, LRef) ...
        - Gamma_EOTF(maxValue - 1, bitDepth, gamma, LRef);
        gammaMaxStep = gammaMinStep;
    elseif gammaValueEnds(1) == 0
        gammaMinStep = ...
        Gamma_EOTF(1, bitDepth, gamma, LRef) ...
        - Gamma_EOTF(0, bitDepth, gamma, LRef);
        gammaMaxStep = gammaMinStep;
    end
else
    gammaValues = gammaValueEnds(1):gammaValueEnds(2); % 区间内所有码值
    Gamma_L = Gamma_EOTF(gammaValues, bitDepth, gamma, LRef); % 反推亮度
    gammaMinStep = Gamma_L(2) - Gamma_L(1); % 左端点处亮度步长
    gammaMaxStep = Gamma_L(end) - Gamma_L(end-1);  % 右端点处亮度步长
end

%********************** 画图 **********************
axes(handles.axes1);
cla reset;
if PQIntervalLength ~= 0 && gammaIntervalLength ~= 0
    plot(PQValues,PQ_L,'g-','LineWidth',2,'DisplayName','PQ');
    hold on;
    plot(gammaValues,Gamma_L,'r-','LineWidth',2,...
        'DisplayName',['Gamma ' get(handles.edit1_gamma,'String')]);
    hold off;
    axis([min(PQValueEnds(1),gammaValueEnds(1)) max(PQValueEnds(2),gammaValueEnds(2)) LMin LMax]);
    xlabel(['Code Value (' num2str(bitDepth) ' bits)']);
    ylabel('Luminance (nits)');
    grid on;
    legend();
elseif PQIntervalLength ~= 0 && gammaIntervalLength == 0
    plot(PQValues,PQ_L,'g-','LineWidth',2,'DisplayName','PQ');
    axis([PQValueEnds(1) PQValueEnds(2) LMin LMax]);
    xlabel(['Code Value (' num2str(bitDepth) ' bits)']);
    ylabel('Luminance (nits)');
    grid on;
    legend();
elseif PQIntervalLength == 0 && gammaIntervalLength ~= 0
    plot(gammaValues,Gamma_L,'r-','LineWidth',2,...
        'DisplayName',['Gamma ' get(handles.edit1_gamma,'String')]);
    axis([gammaValueEnds(1) gammaValueEnds(2) LMin LMax]);
    xlabel(['Code Value (' num2str(bitDepth) ' bits)']);
    ylabel('Luminance (nits)');
    grid on;
    legend();
else
end


newData = [
    PQValueEnds(1),gammaValueEnds(1);
    PQMinStep, gammaMinStep;
    PQValueEnds(2),gammaValueEnds(2);
    PQMaxStep, gammaMaxStep;
    PQIntervalLength, gammaIntervalLength;
    PQIntervalPerc, gammaIntervalPerc
    ];
set(handles.uitable1,'data',newData);


% --- Executes on selection change in popupmenu3_bit_depth.
function popupmenu3_bit_depth_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3_bit_depth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3_bit_depth contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3_bit_depth
set(handles.edit10_R, 'String', '0');
set(handles.edit11_G, 'String', '0');
set(handles.edit12_B, 'String', '0');
set(handles.edit13_X, 'String', '0');
set(handles.edit14_Y, 'String', '0');
set(handles.edit15_Z, 'String', '0');
set(handles.text19_L, 'String', '0.000');


% --- Executes during object creation, after setting all properties.
function popupmenu3_bit_depth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3_bit_depth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit10_R_Callback(hObject, eventdata, handles)
% hObject    handle to edit10_R (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10_R as text
%        str2double(get(hObject,'String')) returns contents of edit10_R as a double
x = get(handles.popupmenu3_bit_depth,'Value');
switch x
    case 1
        bitDepth = 8;
    case 2
        bitDepth = 10;
    case 3
        bitDepth = 12;
end
maxValue = 2 ^ bitDepth - 1;

if isempty(get(hObject,'String')) | isnan(str2double(get(hObject,'String')))
    set(hObject,'String', '0');
else
    b = str2double(get(hObject,'String'));
    if b < 0
        set(hObject,'String', '0');
    elseif b > maxValue
        set(hObject,'String', num2str(maxValue));
    end
end


% --- Executes during object creation, after setting all properties.
function edit10_R_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10_R (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit11_G_Callback(hObject, eventdata, handles)
% hObject    handle to edit11_G (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11_G as text
%        str2double(get(hObject,'String')) returns contents of edit11_G as a double
x = get(handles.popupmenu3_bit_depth,'Value');
switch x
    case 1
        bitDepth = 8;
    case 2
        bitDepth = 10;
    case 3
        bitDepth = 12;
end
maxValue = 2 ^ bitDepth - 1;

if isempty(get(hObject,'String')) | isnan(str2double(get(hObject,'String')))
    set(hObject,'String', '0');
else
    b = str2double(get(hObject,'String'));
    if b < 0
        set(hObject,'String', '0');
    elseif b > maxValue
        set(hObject,'String', num2str(maxValue));
    end
end


% --- Executes during object creation, after setting all properties.
function edit11_G_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11_G (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit12_B_Callback(hObject, eventdata, handles)
% hObject    handle to edit12_B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12_B as text
%        str2double(get(hObject,'String')) returns contents of edit12_B as a double
x = get(handles.popupmenu3_bit_depth,'Value');
switch x
    case 1
        bitDepth = 8;
    case 2
        bitDepth = 10;
    case 3
        bitDepth = 12;
end
maxValue = 2 ^ bitDepth - 1;

if isempty(get(hObject,'String')) | isnan(str2double(get(hObject,'String')))
    set(hObject,'String', '0');
else
    b = str2double(get(hObject,'String'));
    if b < 0
        set(hObject,'String', '0');
    elseif b > maxValue
        set(hObject,'String', num2str(maxValue));
    end
end


% --- Executes during object creation, after setting all properties.
function edit12_B_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12_B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit13_X_Callback(hObject, eventdata, handles)
% hObject    handle to edit13_X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13_X as text
%        str2double(get(hObject,'String')) returns contents of edit13_X as a double
if isempty(get(hObject,'String')) | isnan(str2double(get(hObject,'String')))
    set(hObject,'String', '0');
else
    b = str2double(get(hObject,'String'));
    if b < 0
        set(hObject,'String', '0');
    end
end


% --- Executes during object creation, after setting all properties.
function edit13_X_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13_X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit14_Y_Callback(hObject, eventdata, handles)
% hObject    handle to edit14_Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14_Y as text
%        str2double(get(hObject,'String')) returns contents of edit14_Y as a double
if isempty(get(hObject,'String')) | isnan(str2double(get(hObject,'String')))
    set(hObject,'String', '0');
else
    b = str2double(get(hObject,'String'));
    if b < 0
        set(hObject,'String', '0');
    end
end


% --- Executes during object creation, after setting all properties.
function edit14_Y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14_Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit15_Z_Callback(hObject, eventdata, handles)
% hObject    handle to edit15_Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15_Z as text
%        str2double(get(hObject,'String')) returns contents of edit15_Z as a double
if isempty(get(hObject,'String')) | isnan(str2double(get(hObject,'String')))
    set(hObject,'String', '0');
else
    b = str2double(get(hObject,'String'));
    if b < 0
        set(hObject,'String', '0');
    end
end


% --- Executes during object creation, after setting all properties.
function edit15_Z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15_Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2_right_convert.
function pushbutton2_right_convert_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2_right_convert (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
R = str2double(get(handles.edit10_R, 'String'));
G = str2double(get(handles.edit11_G, 'String'));
B = str2double(get(handles.edit12_B, 'String'));

x = get(handles.popupmenu3_bit_depth,'Value');
switch x
    case 1
        bitDepth = 8;
    case 2
        bitDepth = 10;
    case 3
        bitDepth = 12;
end

list=get(handles.popupmenu7_gamut,'String');
val=get(handles.popupmenu7_gamut,'Value');
gamut = list{val};
list=get(handles.popupmenu9_white_point,'String');
val=get(handles.popupmenu9_white_point,'Value');
whitePoint = list{val};
M = Matrix(gamut, whitePoint);
set(handles.uitable4, 'data', M);
set(handles.uitable5, 'data', inv(M));

[XYZ, L] = RGB_to_XYZ(bitDepth, [R, G, B], M);

set(handles.edit13_X, 'String', num2str(XYZ(1)));
set(handles.edit14_Y, 'String', num2str(XYZ(2)));
set(handles.edit15_Z, 'String', num2str(XYZ(3)));
set(handles.text19_L, 'String', num2str(L, '%.3f'));


% --- Executes on button press in pushbutton3_left_convert.
function pushbutton3_left_convert_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3_left_convert (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

X = str2double(get(handles.edit13_X, 'String'));
Y = str2double(get(handles.edit14_Y, 'String'));
Z = str2double(get(handles.edit15_Z, 'String'));

x = get(handles.popupmenu3_bit_depth,'Value');
switch x
    case 1
        bitDepth = 8;
    case 2
        bitDepth = 10;
    case 3
        bitDepth = 12;
end

list=get(handles.popupmenu7_gamut,'String');
val=get(handles.popupmenu7_gamut,'Value');
gamut = list{val};
list=get(handles.popupmenu9_white_point,'String');
val=get(handles.popupmenu9_white_point,'Value');
whitePoint = list{val};
M = Matrix(gamut, whitePoint);
set(handles.uitable4, 'data', M);
set(handles.uitable5, 'data', inv(M));

RGB = XYZ_to_RGB(bitDepth, [X, Y, Z], inv(M));
L = XYZ_to_Luminance(bitDepth, [X, Y, Z]);

set(handles.edit10_R, 'String', num2str(RGB(1)));
set(handles.edit11_G, 'String', num2str(RGB(2)));
set(handles.edit12_B, 'String', num2str(RGB(3)));
set(handles.text19_L, 'String', num2str(L, '%.3f'));


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu7_gamut.
function popupmenu7_gamut_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu7_gamut (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu7_gamut contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu7_gamut


% --- Executes during object creation, after setting all properties.
function popupmenu7_gamut_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu7_gamut (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu9_white_point.
function popupmenu9_white_point_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu9_white_point (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu9_white_point contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu9_white_point


% --- Executes during object creation, after setting all properties.
function popupmenu9_white_point_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu9_white_point (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu10.
function popupmenu10_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu10 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu10


% --- Executes during object creation, after setting all properties.
function popupmenu10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit16_8_bit_Callback(hObject, eventdata, handles)
% hObject    handle to edit16_8_bit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16_8_bit as text
%        str2double(get(hObject,'String')) returns contents of edit16_8_bit as a double
if isempty(get(hObject,'String')) | isnan(str2double(get(hObject,'String')))
    set(hObject,'String', '0');
    set(handles.edit17_10_bit, 'String', '0');
    set(handles.edit18_12_bit, 'String', '0');
    set(handles.edit19_PQ_Luminance, 'String', '0');
else
    b = str2double(get(hObject,'String'));
    if b < 0
        b = 0;
        set(hObject,'String', '0');
    elseif b > 255
        b = 255;
        set(hObject,'String', '255');
    end
    set(handles.edit17_10_bit, 'String', num2str(b*1023/255));
    set(handles.edit18_12_bit, 'String', num2str(b*4095/255));
    set(handles.edit19_PQ_Luminance, 'String', num2str(PQ_EOTF(b,8)));
end


% --- Executes during object creation, after setting all properties.
function edit16_8_bit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16_8_bit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit17_10_bit_Callback(hObject, eventdata, handles)
% hObject    handle to edit17_10_bit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17_10_bit as text
%        str2double(get(hObject,'String')) returns contents of edit17_10_bit as a double
if isempty(get(hObject,'String')) | isnan(str2double(get(hObject,'String')))
    set(hObject,'String', '0');
    set(handles.edit16_8_bit, 'String', '0');
    set(handles.edit18_12_bit, 'String', '0');
    set(handles.edit19_PQ_Luminance, 'String', '0');
else
    b = str2double(get(hObject,'String'));
    if b < 0
        b = 0;
        set(hObject,'String', '0');
    elseif b > 1023
        b = 1023;
        set(hObject,'String', '1023');
    end
    set(handles.edit16_8_bit, 'String', num2str(b*255/1023));
    set(handles.edit18_12_bit, 'String', num2str(b*4095/1023));
    set(handles.edit19_PQ_Luminance, 'String', num2str(PQ_EOTF(b,10)));
end


% --- Executes during object creation, after setting all properties.
function edit17_10_bit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17_10_bit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit18_12_bit_Callback(hObject, eventdata, handles)
% hObject    handle to edit18_12_bit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18_12_bit as text
%        str2double(get(hObject,'String')) returns contents of edit18_12_bit as a double
if isempty(get(hObject,'String')) | isnan(str2double(get(hObject,'String')))
    set(hObject,'String', '0');
    set(handles.edit16_8_bit, 'String', '0');
    set(handles.edit17_10_bit, 'String', '0');
    set(handles.edit19_PQ_Luminance, 'String', '0');
else
    b = str2double(get(hObject,'String'));
    if b < 0
        b = 0;
        set(hObject,'String', '0');
    elseif b > 4095
        b = 4095;
        set(hObject,'String', '4095');
    end
    set(handles.edit16_8_bit, 'String', num2str(b*255/4095));
    set(handles.edit17_10_bit, 'String', num2str(b*1023/4095));
    set(handles.edit19_PQ_Luminance, 'String', num2str(PQ_EOTF(b,12)));
end


% --- Executes during object creation, after setting all properties.
function edit18_12_bit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18_12_bit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit19_PQ_Luminance_Callback(hObject, eventdata, handles)
% hObject    handle to edit19_PQ_Luminance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19_PQ_Luminance as text
%        str2double(get(hObject,'String')) returns contents of edit19_PQ_Luminance as a double
if isempty(get(hObject,'String')) | isnan(str2double(get(hObject,'String')))
    set(hObject,'String', '0');
    set(handles.edit16_8_bit, 'String', '0');
    set(handles.edit17_10_bit, 'String', '0');
    set(handles.edit18_12_bit, 'String', '0');
else
    b = str2double(get(hObject,'String'));
    if b < 0
        b = 0;
        set(hObject,'String', '0');
    elseif b > 10000
        b = 10000;
        set(hObject,'String', '10000');
    end
    set(handles.edit16_8_bit, 'String', num2str(PQ_OETF(b,8)));
    set(handles.edit17_10_bit, 'String', num2str(PQ_OETF(b,10)));
    set(handles.edit18_12_bit, 'String', num2str(PQ_OETF(b,12)));
end


% --- Executes during object creation, after setting all properties.
function edit19_PQ_Luminance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19_PQ_Luminance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
