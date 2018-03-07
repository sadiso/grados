%% Read Hyperspectral Imagery with ENVI header
% function HSI = read_HSI(filename);
% Input: filename: path and name of the image file
%        (ENVI header should be the same name as the image with the
%        extention .hdr)
% Output:HSI : a matrix lines x samples x bands

%% Maria C. Torres Madronero 
% reviewed: Mar/4/2012
%%
function HSI = read_HSI(filename)
if sum(filename=='.');
    inx = find(filename=='.');
    name_HSI = filename(1:inx-1);
else
    name_HSI = filename;
end

header = fopen([name_HSI,'.hdr']);
if header < 3
   disp('Error: header not found');
   HSI = []; 
   return;
end

c = fgets(header);
header_data = cell(1,6);
while ischar(c)
    if ~isempty(findstr(c, 'samples'))
        header_data{1} = c;
    elseif ~isempty(findstr(c, 'lines'))
        header_data{2} = c;
    elseif ~isempty(findstr(c, 'bands'))
        header_data{3} = c;
    elseif ~isempty(findstr(c, 'data type'))
        header_data{4} = c;
    elseif ~isempty(findstr(c, 'interleave'))
        header_data{5} = c;
    elseif ~isempty(findstr(c, 'byte order'))
        header_data{6} = c;
    end
    c = fgets(header);
end

%number of samples
k = findstr(header_data{1},'=');
l = length(header_data{1});
samples = str2num(header_data{1}(k+1:l));

%number of lines
k = findstr(header_data{2},'=');
l = length(header_data{2});
lines = str2num(header_data{2}(k+1:l));

%number of bands
k = findstr(header_data{3},'=');
l = length(header_data{3});
bands = str2num(header_data{3}(k+1:l));

%data type
k = findstr(header_data{4},'=');
l = length(header_data{4});
type = str2num(header_data{4}(k+1:l));

%interleave
k = findstr(header_data{5},'=');
l = length(header_data{5});
interleave = header_data{5}(k+1:l);

%byte order
k = findstr(header_data{6},'=');
l = length(header_data{6});
byte = str2num(header_data{6}(k+1:l));

size = [lines,samples,bands];

if ~isempty(findstr(interleave,'bsq'))
    inter = 'bsq';
elseif ~isempty(findstr(interleave,'bil'))
    inter = 'bil';
else
    inter = 'bip';
end

switch type
    case 1 
        precision = 'int8';
    case 2
        precision = 'int16';
    case 3
        precision = 'int32';
    case 4
        precision = 'float';
    case 5
        precision = 'double';
    otherwise
        precision = 'uint16';
end

switch byte
    case 0
        order = 'ieee-le';
    otherwise
        order = 'ieee-be';
end

HSI = multibandread(filename, size, precision, 0, inter, order);
clear c;
fclose(header);
