% n^m
clc;clear;
fprintf("高精度计算器_thirteen\n");
fprintf("计算方式为 n^m\n");
% 修改n与m
n=input("请输入n的值:");
m=input("请输入m的值:");
a=1;
jz=[];
jz(1)=a;
for i=1:m
    long=length(jz);
    over=0;
    for j=1:long
        temp=jz(j)*n+over;
        if temp<10
            jz(j)=temp;
            over=0;
        else
            jz(j)=rem(temp,10);
            over=fix(temp/10);
            if j==long
                jz(j+1)=over;
            else
                over=over;
            end
%             jz(j+1)=over;
        end  
    end
end
res='';
for i=1:length(jz)
   res=[res,num2str(jz(i))]; 
end
result=reverse(res);
fprintf("最终结果为：");
disp(result)