lineseq1 = struct('endpoint1', struct('x', 2, 'y', 4), 'endpoint2', struct('x', 1, 'y', 6));

lineseq2.endpoint1.x = 2;
lineseq2.endpoint1.y = 4;
lineseq2.endpoint2.x = 1;
lineseq2.endpoint2.y = 6;

if isequal(lineseq1, lineseq2)
    disp('lineseq1 equals to lineseq2');
end

lineseq1.endpoint1ß

lineseq1.endpoint1.x
