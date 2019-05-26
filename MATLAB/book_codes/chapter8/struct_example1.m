package1 = struct('item_no', 123, 'cost', 19.99,...
    'price', 39.95, 'code', 'g');
disp(package1);
% class(package1)

package2.item_no = 123;
package2.cost = 19.99;
package2.price = 39.95;
package2.code = 'g';

disp(package2)

if isequal(package1,package2)
    disp('package1 equals to package2');
end

newpack = package2;
disp(newpack)
newpack.item_no = 111;
disp(package2);
disp(newpack);