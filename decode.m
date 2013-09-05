function res = decode(img)
    [l, m] = size(img);
    txt = [];
    for i=1:1:l
        temp_char = [];
        for j=1:1:8
            temp_pixel = img(i, j);
            pixel_bin = dec2bin(temp_pixel, 8);
            temp_char = [temp_char pixel_bin(8)];
        end
        if bin2dec(temp_char) == '\'
            break
        else
            txt(i) = bin2dec(temp_char);
        end
    end
    res = char(txt);
end