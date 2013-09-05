function res = encode(img, txt)
    txt = [txt, '\'];
    bin_data = dec2bin(txt, 8);
    [l m] = size(bin_data);
    for i=1:1:l
        for j=1:1:m
            temp_pixel = img(i, j);
            pixel_bin = dec2bin(temp_pixel, 8);
            pixel_bin(8) = bin_data(i, j);
            new_pixel = bin2dec(pixel_bin);
            img(i, j) = new_pixel;
        end
    end
    res = img;
end