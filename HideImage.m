function img = HideImage(img1, img2)
    s = size(img2);
    size_img2 = dec2bin(s, 16);
    i = 1;
    j = 1;
    [l m] = size(size_img2);
    while i <= l
        while j <= m
            temp_bit = size_img2(i, j);
            temp_pixel = dec2bin(img1(i, j), 8);
            temp_pixel(8) = temp_bit;
            j = j+1;
        end
        i = i+1;
    end
    img = img1;
end