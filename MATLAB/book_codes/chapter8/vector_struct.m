packages1 = struct('item_no',123,'cost',19.99,...
  'price',39.95,'code','g');
packages1(2) = struct('item_no',456,'cost', 5.99,...
  'price',49.99,'code','l');
packages1(3) = struct('item_no',587,'cost',11.11,...
  'price',33.33,'code','w');
disp(packages1)

packages2 = struct('item_no',123,'cost',19.99,...
  'price',39.95,'code','g');
packages2(2) = struct('item_no',456,'cost', 5.99,...
  'price',49.99,'code','l');
packages2(3) = struct('item_no',587,'cost',11.11,...
  'price',33.33,'code','w');

disp(packages2)

if isequal(package1,package2) 
    fprintf('package1 equals to package2\n');
end
