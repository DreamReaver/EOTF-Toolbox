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
        set(hObject,'String', num2str(maxL - 1));
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
        set(hObject,'String', num2str(minL + 1));
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

gamma = str2double(get(handles.edit1_gamma,'String'));
RefL = str2double(get(handles.edit2_ref_L,'String'));
minL = str2double(get(handles.edit3_min_L,'String'));
maxL = str2double(get(handles.edit4_max_L,'String'));

Cval =[minL,maxL];
%*********************** PQ OETF ******************************
PQV = PQ_OETF(Cval, bitDepth); % 亮度反推的PQ码值（左右区间端点）
PQLE = PQV(2) - PQV(1) + 1; % PQ码值区间长度
PercPQ = PQLE / 2 ^ bitDepth * 100; % 百分比

%********************** Gamma **********************
% Normalization in [0,1]
if (maxL > RefL)
    Cval(2) = RefL;
end
NormL = Cval / RefL; % 亮度值除以参考亮度，标准化
midre = NormL .^ (1/gamma);
N = (2 ^ bitDepth - 1) .* midre;
GAMV = floor(N); % Gamma码值
GamLE = GAMV(2)-GAMV(1)+1; % Gamma区间长度
PercGam = GamLE/2^bitDepth*100; % 百分比

axes(handles.axes1);
cla reset;
axis auto;

%********************Plot figure***************** 
% 反推区间内PQ全部亮度
CoPQ = PQV(1):PQV(2);
LValue = PQ_EOTF(CoPQ, bitDepth);
MinStepPQ = LValue(2) - LValue(1);
MaxStepPQ = LValue(end) - LValue(end-1);
plot(CoPQ,LValue,'g-','LineWidth',2);
hold on;
% 反推区间内Gamma全部亮度
Cogam = GAMV(1):GAMV(2);
midre = Cogam ./ (2 ^ bitDepth - 1);
midre2 = midre .^ gamma;
LValue = RefL * midre2;
MinStepGamma = LValue(2) - LValue(1);
MaxStepGamma = LValue(end) - LValue(end-1);
plot(Cogam,LValue,'r-','LineWidth',2);
hold off;

xlabel(['Code Value (' num2str(bitDepth) ' bits)']);
ylabel('Luminance (nits)');
axis([min(PQV(1),GAMV(1)) max(PQV(2),GAMV(2)) minL maxL]);
legend('PQ','Gamma');
grid on;


newData = [PQV(1),GAMV(1);
    MinStepPQ, MinStepGamma;
    PQV(2),GAMV(2);
    MaxStepPQ, MaxStepGamma;
    PQLE, GamLE;
    PercPQ, PercGam];
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
