

function buttonPlot
% Create a figure window
fig = uifigure;

% Create a UI axes
ax = uiaxes('Parent',fig,...
            'Units','pixels',...
            'Position', [150, 123, 300, 201]);   

% Create a push button
btn_Mike = uibutton(fig,'push',...
               'Text', 'Mike_sinewave',...
               'Position',[25, 370, 100, 22],...
               'ButtonPushedFcn', @(btn,event) Mike_callback(btn,0, ax));
           
           
           % Create a push button
btn_Mike_2 = uibutton(fig,'push',...
               'Text', 'Mike_coswave',...
               'Position',[25, 320, 100, 22],...
               'ButtonPushedFcn', @(btn,event) Mike_callback(btn,1, ax));

% Create a push button
btn_Dammar = uibutton(fig,'push',...
               'Text', 'Damar_rectwave',...
               'Position',[25, 270, 100, 22],...
               'ButtonPushedFcn', @(btn,event) Dammar_callback(btn,ax));
              
% Justin's Button
btn_Justin = uibutton(fig,'push',...
                 'Text', 'Justin_line',...
                 'Position',[25, 220, 100, 22],...
                 'ButtonPushedFcn', @(btn,event) Justin_callback(btn,0, ax));

% Create Tom's push button
btn_Tom = uibutton(fig,'push',...
               'Text', 'Tom_plot',...
               'Position',[25, 170, 100, 22],...
               'ButtonPushedFcn', @(btn,event) Tom_callback(btn,0, ax));
               
               
btn_Aliyah = uibutton(fig,'push',...
               'Text', 'Aliyah_Plot',...
               'Position',[25, 120, 100, 22],...
               'ButtonPushedFcn', @(btn,event) Aaliyah_callback(btn,3, ax));
               
               % Create a push button
btn_Dhruba = uibutton(fig,'push',...
               'Text', 'Dhruba_Square',...
               'Position',[25, 70, 100, 22],...
               'ButtonPushedFcn', @(btn,event) Dhruba_callback(btn,2, ax));

Popup_Gabby = uidropdown(fig,...
    'Position',[25 20 100 22],...
    'Items',{'lognormal','EMG','Gaussian'},...
    'Value','EMG',...
    'ValueChangedFcn',@(dd,event) Gabby_Dropdwon_Callback(dd,event, ax));
           
end

