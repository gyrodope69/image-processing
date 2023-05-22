    %zoomin out an imagge

originalImage = imread('boys.tif');
[origImRows, origImColumns,~] = size(originalImage);

newImage = zeros(ceil(origImRows/2), ceil(origImColumns/2),3);
newImRow = 1; newImColumn = 1;

for row = 1:2:origImRows
    for column = 1:2:origImColumns
        newImage(newImRow, newImColumn,:)=originalImage(row, column,:);
        newImColumn = newImColumn+1;
    end
    newImRow = newImRow+1;
    newImColumn = 1;
end

figure; imshow(originalImage);
figure; imshow(newImage/255);