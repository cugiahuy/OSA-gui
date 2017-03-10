function varargout = OSA_GUI(varargin)
% OSA_GUI MATLAB code for OSA_GUI.fig
%      OSA_GUI, by itself, creates a new OSA_GUI or raises the existing
%      singleton*.
%
%      H = OSA_GUI returns the handle to a new OSA_GUI or the handle to
%      the existing singleton*.
%
%      OSA_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OSA_GUI.M with the given input arguments.
%
%      OSA_GUI('Property','Value',...) creates a new OSA_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before OSA_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to OSA_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help OSA_GUI

% Last Modified by GUIDE v2.5 16-Dec-2016 16:44:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @OSA_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @OSA_GUI_OutputFcn, ...
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


% --- Executes just before OSA_GUI is made visible.
function OSA_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to OSA_GUI (see VARARGIN)

% Choose default command line output for OSA_GUI
handles.output = hObject;

% Initialise tabs
handles.tabManager = TabManager(hObject);

% Update handles structure
guidata(hObject, handles);

create_serial_object(hObject, eventdata, handles);

% UIWAIT makes OSA_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = OSA_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in x_axis_menu.
function x_axis_menu_Callback(hObject, eventdata, handles)
% hObject    handle to x_axis_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns x_axis_menu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from x_axis_menu


% --- Executes during object creation, after setting all properties.
function x_axis_menu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x_axis_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in y_axis_1_menu.
function y_axis_1_menu_Callback(hObject, eventdata, handles)
% hObject    handle to y_axis_1_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns y_axis_1_menu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from y_axis_1_menu


% --- Executes during object creation, after setting all properties.
function y_axis_1_menu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_axis_1_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in y_axis_2_menu.
function y_axis_2_menu_Callback(hObject, eventdata, handles)
% hObject    handle to y_axis_2_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns y_axis_2_menu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from y_axis_2_menu


% --- Executes during object creation, after setting all properties.
function y_axis_2_menu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_axis_2_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in y_axis_3_menu.
function y_axis_3_menu_Callback(hObject, eventdata, handles)
% hObject    handle to y_axis_3_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns y_axis_3_menu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from y_axis_3_menu


% --- Executes during object creation, after setting all properties.
function y_axis_3_menu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_axis_3_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in num_samples_menu.
function num_samples_menu_Callback(hObject, eventdata, handles)
% hObject    handle to num_samples_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns num_samples_menu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from num_samples_menu


% --- Executes during object creation, after setting all properties.
function num_samples_menu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to num_samples_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in port_menu.
function port_menu_Callback(hObject, eventdata, handles)
% hObject    handle to port_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns port_menu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from port_menu


% --- Executes during object creation, after setting all properties.
function port_menu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to port_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in stream_button.
function stream_button_Callback(hObject, eventdata, handles)
%there are 2 bariable: values and Values[] (for contain values variable)

%declare variable
data = [];          %store all Value
Values = [];        %store value to plot
global obj1 j

%check values of J
if isempty(j) == 1
    j = 0;
end

state_button = get(handles.stream_button, 'String');
% turn off the subplot radio button
set(handles.stop_button,        'Visible','on');
set(handles.subplot_on_off,     'Enable','off');
set(handles.grid_on_off,        'Enable','off');
set(handles.find_coms_button,   'Enable','off');
set(handles.port_menu,          'Enable','off');
set(handles.num_samples_menu,   'Enable','off');
set(handles.baud_rate_menu,     'Enable','off');
% call this once to allow a switch
get(hObject,'Value');

obj1;

if strcmp(obj1.Status,'closed')
   try(fopen(obj1));
        fprintf(['port ' obj1.port ' opened\n'])
        set(handles.stream_info_text,'String',['port ' obj1.port ' streaming'])
   catch
        fprintf(['port ' obj1.port ' not available\n'])
        set(hObject,'Value',0)
        set(handles.stream_info_text,'String',['port ' obj1.port ' unavailable'])
   end
end

if strcmp(state_button, 'Start') || strcmp(state_button, 'Resume')

    set(hObject,'String','Pause')

    num_samples_choices = cellstr(get(handles.num_samples_menu,'String'));
    num_samples_selection = num_samples_choices{get(handles.num_samples_menu,'Value')};
    too_big = str2num(num_samples_selection);
    flushinput(obj1);
    pause(0.1)

    % which channels will we plot?

    x1 = get(handles.x_axis_menu,'Value')-1;
    y1 = get(handles.y_axis_1_menu,'Value')-1;
    y2 = get(handles.y_axis_2_menu,'Value')-1;
    y3 = get(handles.y_axis_3_menu,'Value')-1;

    num_channels_found = 0;
    values_string = fgetl(obj1);
    for i = 1:20
          [token,values_string] = strtok(values_string);
          if size(token)>0
            values(i) = str2num(token);
            num_channels_found = num_channels_found+1;
          end
    end
    set(handles.channel_info_text,'String',[num2str(num_channels_found) ' channels found'])
    hold off
    cla

    % make sure we are plotting something...
    if num_channels_found == 0
         fprintf('no channels found - incorrect BAUD rate?\n')
         set(hObject,'Value',0)
         pause(1)
    elseif x1==0 || x1>num_channels_found
         set(handles.x_axis_menu,'ForegroundColor',[1 0 0])
         fprintf('must select a valid channel for X-axis\n')
         set(hObject,'Value',0)
         pause(1)
    else
        % if we are, start organizing plots

        % check for the subplot style display
        axes(handles.axes1); % default to axes1
        cla(handles.axes1);
        subplot_state = get(handles.subplot_on_off,'Value');

        if (y1>=1 && y1<=num_channels_found)
             hold on
             if subplot_state
                  G1 = plot(handles.axes2,0,0,'b-');
                  if get(handles.grid_on_off,'Value')
                       grid(handles.axes2,'on');
                  end
             else
                  G1 = plot(handles.axes1,0,0,'b-');
                  if get(handles.grid_on_off,'Value')
                       grid(handles.axes1,'on');
                  end
             end
             set(G1,'XDataSource','Values(:,x1)','YDataSource','Values(:,y1)')
             if get(handles.grid_on_off,'Value')
                  grid on
             end
        elseif y1>num_channels_found
             set(handles.y_axis_1_menu,'ForegroundColor',[1 0 0])
        else
             set(handles.y_axis_1_menu,'ForegroundColor',[0.5 0.5 0.5])
        end

        if (y2>=1 && y2<=num_channels_found)
             hold on
             if subplot_state
                  G2 = plot(handles.axes3,0,0,'r-');
                  if get(handles.grid_on_off,'Value')
                       grid(handles.axes3,'on');
                  end
             else
                  G2 = plot(handles.axes1,0,0,'r-');
                  if get(handles.grid_on_off,'Value')
                       grid(handles.axes1,'on');
                  end
             end
             set(G2,'XDataSource','Values(:,x1)','YDataSource','Values(:,y2)')
             if get(handles.grid_on_off,'Value')
                  grid on
             end
        elseif y2>num_channels_found
             set(handles.y_axis_2_menu,'ForegroundColor',[1 0 0])
        else
             set(handles.y_axis_2_menu,'ForegroundColor',[0.5 0.5 0.5])
        end

        if (y3>=1 && y3<=num_channels_found)
             hold on
             if subplot_state
                  G3 = plot(handles.axes4,0,0,'g-');
                  if get(handles.grid_on_off,'Value')
                       grid(handles.axes4,'on');
                  end
             else
                  G3 = plot(handles.axes1,0,0,'g-');
                  if get(handles.grid_on_off,'Value')
                       grid(handles.axes1,'on');
                  end
             end
             set(G3,'XDataSource','Values(:,x1)','YDataSource','Values(:,y3)')

        elseif y3>num_channels_found
             set(handles.y_axis_3_menu,'ForegroundColor',[1 0 0])
        else
             set(handles.y_axis_3_menu,'ForegroundColor',[0.5 0.5 0.5])
        end

        %monitor_plot = get(handles.monitor_on_off,'Value');
        %insert_location = 1;
        timeout = 10; % time out in seconds
        tic
        while (get(hObject,'Value')==1 && toc<timeout)
             if obj1.BytesAvailable>0                 % run loop if there is data to act on
                  while obj1.BytesAvailable>0        % collect data until the buffer is empty
                       values_string = fgetl(obj1);

                       for i = 1:num_channels_found
                             [token,values_string] = strtok(values_string);
                             if size(token)>0
                               values(i) = str2num(token);
                             end
                       end
                       
                       data = [data;values];
                       if length(data(:,1)) >= 100    
                           j = j + 1;
                           save(['C:\Users\Huy\Google Drive\Research projects\OSA\Matlab GUI\All\Save data\data' num2str(j) '.mat'],'data');
                           data = [];
                       end
                       
                       [rows,columns] = size(Values);

        %                if ~monitor_plot         % scrolling plot
                            if (rows>too_big)
                                 Values = Values(2:end,:);
                            end
                            Values = [Values;values];
        %                end
        %                if monitor_plot          % 'heart monitor' plot
        %                     if (rows>too_big)
        %                          insert_location = insert_location+1;
        %                          if insert_location>too_big
        %                               insert_location = 2;
        %                          end
        %                     Values = [Values(1:insert_location-1,:);
        %                               values; 
        %                               Values((insert_location+1):end,:)];
        %                     else
        %                     Values = [Values;values];
        %                     end
        %                end
                  end
                                               % update all valid plots
                  if (y1>=1 && y1<=num_channels_found)
                     refreshdata(G1,'caller')
                  end
                  if (y2>=1 && y2<=num_channels_found)
                     refreshdata(G2,'caller')
                  end
                  if (y3>=1 && y3<=num_channels_found)
                     refreshdata(G3,'caller')
                  end

                  if ~subplot_state
                  % x axis scaling for single plot
                       if y1>=1 || y2>=1 || y3>=1
                            if length(Values)>1 && (min(Values(:,x1)) ~= max(Values(:,x1)))
                                 xlim(handles.axes1,[min(Values(:,x1)) max(Values(:,x1))])
                            end
                       end
                  else
                       if y1>=1 || y2>=1 || y3>=1
                            if length(Values)>1 && (min(Values(:,x1)) ~= max(Values(:,x1)))
                                 xlim(handles.axes2,[min(Values(:,x1)) max(Values(:,x1))])
                                 xlim(handles.axes3,[min(Values(:,x1)) max(Values(:,x1))])
                                 xlim(handles.axes4,[min(Values(:,x1)) max(Values(:,x1))])
                            end
                       end
                  end

                  tic
                  current_status = get(handles.stream_info_text,'String');
                  if ~strcmp(current_status,['port ' obj1.port ' streaming'])
                       set(handles.stream_info_text,'String',['port ' obj1.port ' streaming'])
                  end
                  pause(0.0001);
             else
                  message = ['port ' obj1.port ' no data in ' num2str(round(toc)) ' sec...'];
                  if toc>1.5 && ~strcmp(current_status,message)
                       set(handles.stream_info_text,'String',message)
                  end
                  pause(0.0001);
             end
        end
        if toc>timeout
             fprintf('Unexpected disconnect\n')
             set(hObject,'Value',0)
        end
    end

    fclose(obj1);
    fprintf(['port ' obj1.port ' closed\n\n'])
    set(handles.stream_info_text,'String',['port ' obj1.port ' closed'])
    set(handles.channel_info_text,'String','# channels found')
    set(handles.x_axis_menu,'ForegroundColor',[0 0 0])
    set(handles.y_axis_1_menu,'ForegroundColor',[0 0 0])
    set(handles.y_axis_2_menu,'ForegroundColor',[0 0 0])
    set(handles.y_axis_3_menu,'ForegroundColor',[0 0 0])

    assignin('base','log',Values);
    assignin('base','data', data);
    set(hObject,'String','Start');
    
elseif strcmp(state_button, 'Pause')
    set(handles.stream_button, 'Resume')

end

set(handles.subplot_on_off,  'Enable','on');
set(handles.grid_on_off,     'Enable','on');
set(handles.find_coms_button,'Enable','on');
set(handles.port_menu,       'Enable','on');
set(handles.num_samples_menu,'Enable','on');
set(handles.baud_rate_menu,  'Enable','on');

% --- Executes on button press in grid_on_off.
function grid_on_off_Callback(hObject, eventdata, handles)
% hObject    handle to grid_on_off (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of grid_on_off


% --- Executes on button press in find_coms_button.
function find_coms_button_Callback(hObject, eventdata, handles)
% hObject    handle to find_coms_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try  % basically I don't want it to crash if you don't have instr toolbox
     
     if ~usejava('jvm')
         error(message('instrument:instrhwinfo:nojvm'));
     end

     % Determine the jar file version.
     jarFileVersion = com.mathworks.toolbox.instrument.Instrument.jarVersion;

          fields = {'AvailableSerialPorts',...
                    'JarFileVersion',...
                    'ObjectConstructorName',...
                    'SerialPorts'};

     try
         s = javaObject('com.mathworks.toolbox.instrument.SerialComm','temp');
         tempOut = hardwareInfo(s);
         dispose(s)
     catch
         tempOut = {{'COM1'}, '', {}, {}}';
     end

     list = cell(tempOut);
     list = list{1};
     [r,c] = size(list);
     if r==0
          list = {'COM1'}; % if there are no ports leave something in the menu
     end
     
     % update the ports menu to only contaim valid COMs
     set(handles.port_menu,'String',list)
     

     create_serial_object(hObject, eventdata, handles);
    
end


% --- Executes on selection change in baud_rate_menu.
function baud_rate_menu_Callback(hObject, eventdata, handles)
% hObject    handle to baud_rate_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns baud_rate_menu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from baud_rate_menu


% --- Executes during object creation, after setting all properties.
function baud_rate_menu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to baud_rate_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in subplot_on_off.
function subplot_on_off_Callback(hObject, eventdata, handles)
% hObject    handle to subplot_on_off (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

cla(handles.axes1);
cla(handles.axes2);
cla(handles.axes3);
cla(handles.axes4);

if get(hObject,'Value')
  set(handles.axes1,'Visible','off');
  set(handles.axes2,'Visible','on');
  set(handles.axes3,'Visible','on');
  set(handles.axes4,'Visible','on');
else
  set(handles.axes1,'Visible','on');
  set(handles.axes2,'Visible','off');
  set(handles.axes3,'Visible','off');
  set(handles.axes4,'Visible','off');
end
% Hint: get(hObject,'Value') returns toggle state of subplot_on_off


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in stop_button.
function stop_button_Callback(hObject, eventdata, handles)
% hObject    handle to stop_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% hObject    handle to stop_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global j

%reset all menu into initial state
set(handles.stream_button,      'String', 'Start');
set(handles.stop_button,        'Visible', 'off');
set(handles.subplot_on_off,     'Enable', 'off');
set(handles.grid_on_off,        'Enable', 'off');
set(handles.find_coms_button,   'Enable', 'on');
set(handles.port_menu,          'Enable', 'on');
set(handles.num_samples_menu,   'Enable', 'on');
set(handles.baud_rate_menu,     'Enable', 'on');

%reset all axes
cla(handles.axes1, 'reset'); 
cla(handles.axes2, 'reset');
cla(handles.axes3, 'reset');
cla(handles.axes4, 'reset');

%save temporary file
values = null(4);
for i = 1 : j
    loadvar = load(['C:\Users\Huy\Google Drive\Research projects\OSA\Matlab GUI\All\Save data\data' num2str(i) '.mat'],'data');
    values = [values;loadvar.data];
    assignin('base','values',values);
end

%delete temporary file 
for i = 1 : j
    delete(['C:\Users\Huy\Google Drive\Research projects\OSA\Matlab GUI\All\Save data\data' num2str(i) '.mat']);
end

%save file
save(['C:\Users\Huy\Google Drive\Research projects\OSA\Matlab GUI\All\Save data\data.mat'],'values');
j = 0;

function create_serial_object(hObject, eventdata, handles)
global obj1
global selection

     contents = cellstr(get(handles.port_menu,'String'));
     selection = contents{get(handles.port_menu,'Value')};

     try
        fclose(instrfind);
        fprintf('closing all existing ports...\n')
     catch
        fprintf('could not find existing Serial ports\n')
     end
     
     obj1 = instrfind('Type', 'serial', 'Port', selection, 'Tag', '');

     % Create the serial port object if it does not exist
     % otherwise use the object that was found.
     if isempty(obj1)
         obj1 = serial(selection);
     else
         fclose(obj1);
         obj1 = obj1(1);
     end

contents2 = cellstr(get(handles.baud_rate_menu,'String'));
BAUD  = str2double(contents2{get(handles.baud_rate_menu,'Value')});
     set(obj1, 'BaudRate', BAUD, 'ReadAsyncMode','continuous');
     set(obj1, 'Terminator','LF');
     set(obj1, 'RequestToSend', 'off');
     set(obj1, 'Timeout', 4);

    fprintf(['serial object created for ' selection ' at ' num2str(BAUD) ' BAUD\n\n']);
