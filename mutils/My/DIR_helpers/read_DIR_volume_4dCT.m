function [vol, spacing] = read_DIR_volume_4dCT(caseN, imgN, basepth)
    cs = num2str(caseN);
    cn = num2str(imgN);
    szs4dct = {[256, 256, 94], ...
               [256, 256, 112], ...
               [256, 256, 104], ...
               [256, 256, 99], ...
               [256, 256, 106], ...
               [512, 512, 128], ...
               [512, 512, 136], ...
               [512, 512, 128], ...
               [512, 512, 128], ...
               [512, 512, 120]};
    sps4dct = {[0.97, 0.97, 2.5], ...
               [1.16, 1.16, 2.5], ...
               [1.15, 1.15, 2.5], ...
               [1.13, 1.13, 2.5], ...
               [1.10, 1.10, 2.5], ...
               [0.97, 0.97, 2.5], ...
               [0.97, 0.97, 2.5], ...
               [0.97, 0.97, 2.5], ...
               [0.97, 0.97, 2.5], ...
               [0.97, 0.97, 2.5]};
    postfix = {'_s.img', ...
               '-ssm.img', ...
               '-ssm.img', ...
               '-ssm.img', ...
               '-ssm.img', ...
               '.img', ...
               '.img', ...
               '.img', ...
               '.img', ...
               '.img'};
    path = [basepth, ...
            '4dCT/Case', cs, 'Pack/Case', cs, 'Pack/Images/case', ...
            cs, '_T', cn, '0', postfix{caseN}];
    vol = read_dir_img(path, szs4dct{caseN});
    spacing = sps4dct{caseN};
end