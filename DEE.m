%diffiusion equation explicit
k=input('k=');
x_0=input('x_0=');x_n=input('x_n=');
t_0=input('t_0=');t_n=input('t_n=');
deltax=input('h=');r=input('r=');deltat=r.*((deltax).^2).*k;
border_1=input('Q(x=0)=');border_2=input('Q(x=x_n)=');
initial=input('Q(t=0)=');
m=((t_n-t_0)./deltat);n=((x_n-x_0)./deltax);
m=ceil(m)+1;n=ceil(n)+1;
Q=zeros(m,n);
Q(2:m,1)=border_1;Q(2:m,n)=border_2;
Q(1,2:n-1)=initial;
Q(1,1)=(border_1+initial)./2;Q(1,n)=(border_2+initial)./2;
for i=1:m-1
    for j=2:n-1       
Q(i+1,j)=r.*Q(i,j+1)-(2.*r-1).*Q(i,j)+r.*Q(i,j-1);
    end 
end
disp(Q)

