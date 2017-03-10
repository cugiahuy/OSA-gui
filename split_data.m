% Function to receive and split data into correct values
% values: array of data, which are already splitted
% miss_data: the abundant value at the end of string.
% data: input data array
% all_data: miss_data of previous segment
function [values,miss_data] = split_data(data,old_data)
if isempty(data)
    error('Data is empty')
end

data_seg = [];
values = [];

% Change to Hex
data_hex = sprintf('%02x', data); 
% Merge with old abundant data
if ~isempty(old_data)
    data_hex = strcat(old_data,data_hex);
end

% Split and eliminate header "aa55"
C = strsplit(data_hex,'aa55');

% Split
for i = 1:length(C)
    if length(C{i}) == 44
        a = C{i};
        data_seg = [hex2dec(a(1:2)) hex2dec(a(3:8)) hex2dec(a(9:14)) hex2dec(a(15:20)) hex2dec(a(21:26)) hex2dec(a(27:32)) hex2dec(a(33:38)) hex2dec(a(39:42)) hex2dec(a(43:44))];
        values = [values; data_seg];
        data_seg = [];
    end
end

% Get abundant data
if length(C{length(C)}) < 44
    miss_data = C{length(C)};
else
    miss_data = [];
end

end