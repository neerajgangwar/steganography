function img = decodeImage(img)
    i = 1;
    j = 1;
    temp = [];
    while i <= 16
        temp_size = [];
        while j <= 16
            temp_size = [temp_size img(i, j)];
            j = j+1;
        end
        temp = [temp temp_size];
        i = i+1;
    end
    img = bin2dec(temp);
end