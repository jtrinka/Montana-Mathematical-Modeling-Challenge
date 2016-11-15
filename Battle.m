F = xlsread('moke.xlsx')
c = 1;
for n = 1:size(F,1)
   plot(F(n,1),F(n,2),'*')
   axis([1,10,1,10])
   pause(.1)
end

%%

for n = 1:1999
    
   plot([F(n,1),F(n,2)],[F(n+1,1),F(n+1,2)])
   axis([1,10,1,10])
   pause(.1)
   hold on 
end

%%

clear; clc;
xdata = xlsread('Data.xlsx','A1:A2000');
ydata = xlsread('Data.xlsx','B1:B2000');
pvdata = xlsread('Data.xlsx','C1:C2000');
G = [randi([1,10]),randi([1,10])]
L = [randi([1,10]),randi([1,10])]

MokeCenter = [randi([1,10]),randi([1,10])]
% G = [4,4];
% L = [2,4];

mokepoint(1)=pvdata(1);
placehold = 2;
MoketotG=0;
MoketotL = 0;
p = .2


for j=1:1:100
for i=placehold:1:length(ydata)
    
   if ydata(i)==ydata(placehold) 
    
       mokepoint = [mokepoint,pvdata(i)];
       
       Mokecellarray{j} = mokepoint;
       
   elseif ydata(placehold)~=ydata(i)
       mokepoint=[];
       placehold=i;
       break;
       
   end
       
       
   %MokeSharePoint{i} =  
    
    
    
    
end

end

A = [1:100];
 A = A(randperm(length(A)))

Randommoke = zeros(10,10)

 for n=1:96




if rem(((n)+3)/4,1) == 0
for i = A(1:25)
char('test')
Randommoke(i) = Mokecellarray{i}(randi([1 numel(Mokecellarray{i})]));
end
elseif rem(((n)+1)/4,1) == 0 || rem(((n))/4,1) == 0
for i = A(1:25)
char('test1')
Randommoke(i) = 0;
end
end


if rem(((n)+2)/4,1) == 0
for i = A(26:50)
    Randommoke(i) = Mokecellarray{i}(randi([1 numel(Mokecellarray{i})]));
end
elseif rem(((n))/4,1) == 0 || rem(((n)+3)/4,1) == 0
for i = A(26:50)
Randommoke(i) = 0;
end
end

if rem(((n)+1)/4,1) == 0
for i = A(51:75) 
    Randommoke(i) = Mokecellarray{i}(randi([1 numel(Mokecellarray{i})]));
end
elseif rem(((n)+3)/4,1) == 0 || rem(((n)+2)/4,1) == 0
for i = A(51:75)
Randommoke(i) = 0;
end
end

if rem(((n))/4,1) == 0
for i = A(76:100) 
    Randommoke(i) = Mokecellarray{i}(randi([1 numel(Mokecellarray{i})]));
end
elseif rem(((n)+2)/4,1) == 0 || rem(((n)+1)/4,1) == 0
for i = A(76:100)
Randommoke(i) = 0;
end
end
% Randommoke(i)=Mokecellarray{i}(randi([1 numel(Mokecellarray{i})]));

Randommoke1=reshape(Randommoke,10,10);
MokeRand=Randommoke1';

%DomainMat = randi([0 1], 10,10);
%MokeRand = Randommoke1.*DomainMat;


    scatter(G(1,1),G(1,2),150,'bo')
        hold on
    scatter(L(1,1),L(1,2),150,'g*')
    scatter(MokeCenter(1,1),MokeCenter(1,2),150,'filled','d')
    legend(['Trainer Gary''s Score ' num2str(MoketotG)],['Trainer Larry''s Score ' num2str(MoketotL)],'MokeStop')
    grid on
    axis([0,11,0,11])
    xticklabels({'','0','715','1,430','2,145','2,860','3,575','4,290','5,005','5,7020','6,435'})
    yticklabels({'','0','715','1,430','2,145','2,860','3,575','4,290','5,005','5,7020','6,435'})
      xlabel('Horizontal Distance (m)')
    ylabel('Vertical Distance (m)')
    title('Mokemon Simulation')
    hold off
    for h = 1:10
        for y = 1:10
    text(h,y,num2str(MokeRand(h,y)))
        end
    end
    pause(p)






    
    if G(1) == 1 && G(2) == 1
%     char('N1')
                if MokeRand(G(1)+1,G(2)) > MokeRand(G(1),G(2)+1) %looking right
                    G(1) = G(1)+1;
                elseif MokeRand(G(1),G(2)+1) > MokeRand(G(1)+1,G(2)) %looking up
                    G(2) = G(2)+1;
                else
                    x = randi([1,2]);

   if x == 1
       
      G = [G(1)+1,G(2)];
      
   elseif x == 2
       
      G = [G(1),G(2)+1];
   
   
     end 
                end
                
    elseif G(1) == 10 && G(2) == 10
%     char('N2')
                if MokeRand(G(1)-1,G(2)) > MokeRand(G(1),G(2)-1) %looking left
                    G(1) = G(1)-1;
                elseif MokeRand(G(1),G(2)-1) > MokeRand(G(1)-1,G(2))%looking down
                    G(2) = G(2)-1;
                else
                    
                    x = randi([1,2]);

  
   if x == 1
       
      G = [G(1)-1,G(2)];
      
   elseif x == 2
       
      G = [G(1),G(2)-1];
   
     end 
                    
                end
    elseif G(1) == 1 && G(2) == 10
%         char('N3')
                if MokeRand(G(1)+1,G(2)) > MokeRand(G(1),G(2)-1) %looking right
                    G(1) = G(1)+1;
                elseif MokeRand(G(1),G(2)-1) > MokeRand(G(1)+1,G(2))%looking down
                    G(2) = G(2)-1;
                else
                    
                    x = randi([1,2]);

   if x == 1
       
      G = [G(1)+1,G(2)];
  
   elseif x == 2
       
      G = [G(1),G(2)-1];
   
     end 
                    
                end
        
        
    elseif G(1) == 10 && G(2) == 1
%         char('N4')
        
                if MokeRand(G(1)-1,G(2)) > MokeRand(G(1),G(2)+1) %looking left
                    G(1) = G(1)-1;
                elseif MokeRand(G(1),G(2)+1) > MokeRand(G(1)-1,G(2))%looking up
                    G(2) = G(2)+1;
                else
                    
                    x = randi([1,2]);

  
   if x == 1
       
      G = [G(1)-1,G(2)];
      
   elseif x == 2
       
      G = [G(1),G(2)+1];

   
     end 
                    
                    
                end
                
                
    elseif G(1) == 1
%         char('N5')
                if MokeRand(G(1)+1,G(2)) > MokeRand(G(1),G(2)+1) &&...
            MokeRand(G(1)+1,G(2)) > MokeRand(G(1),G(2)-1) %looking right
    G(1) = G(1)+ 1;
        elseif MokeRand(G(1),G(2)+1) > MokeRand(G(1),G(2)-1) &&...
            MokeRand(G(1),G(2)+1) > MokeRand(G(1)+1,G(2))%looking up
          G(2) = G(2) +1;
        elseif MokeRand(G(1),G(2)-1) > MokeRand(G(1),G(2)+1) &&...
            MokeRand(G(1),G(2)-1) > MokeRand(G(1)+1,G(2)) %looking down
          G(2) = G(2)- 1;
                else
            
                    
                    x = randi([1,3]);

   if x == 1
       
      G = [G(1)+1,G(2)];

      
   elseif x == 2
       
      G = [G(1),G(2)+1];
   elseif x == 3
       
      G = [G(1),G(2)-1];
   
     end 
    
        end
        
    elseif G(2) == 1
%     char('N6')
                if MokeRand(G(1)+1,G(2)) > MokeRand(G(1)-1,G(2)) &&...
            MokeRand(G(1)+1,G(2)) > MokeRand(G(1),G(2)+1) %looking right
          G(1) = G(1) +1;
    
        elseif MokeRand(G(1)-1,G(2)) > MokeRand(G(1)+1,G(2)) &&...
            MokeRand(G(1)-1,G(2)) > MokeRand(G(1),G(2)+1) %looking left
  G(1) = G(1) -1;
    
        elseif MokeRand(G(1),G(2)+1) > MokeRand(G(1)+1,G(2)) &&...
            MokeRand(G(1),G(2)+1) > MokeRand(G(1)-1,G(2)) %looking up
         G(2) = G(2)+ 1;
                else
            
            x = randi([1,3]);

   if x == 1
       
      G = [G(1)+1,G(2)];
   elseif x == 2
       
      G = [G(1)-1,G(2)];
      
   elseif x == 3
       
      G = [G(1),G(2)+1];
  
   
     end 
    
        end
        
    elseif G(1) == 10
%         char('N7')
        if MokeRand(G(1)-1,G(2)) > MokeRand(G(1),G(2)+1) &&...
            MokeRand(G(1)-1,G(2)) > MokeRand(G(1),G(2)-1) %looking left
  G(1) = G(1)- 1;
    
        elseif MokeRand(G(1),G(2)+1) > MokeRand(G(1),G(2)-1) &&...
            MokeRand(G(1),G(2)+1) > MokeRand(G(1)-1,G(2)) %looking up
          G(2) = G(2)+ 1;
    
        elseif MokeRand(G(1),G(2)-1) > MokeRand(G(1),G(2)+1) &&...
            MokeRand(G(1),G(2)-1) > MokeRand(G(1)-1,G(2)) %looking down
        G(2) = G(2)-1;
        else
            
            x = randi([1,3]);

   if x == 1
       
      G = [G(1)-1,G(2)];
      
   elseif x == 2
       
      G = [G(1),G(2)+1];
   elseif x == 3
       
      G = [G(1),G(2)-1];
   
     end 
    
        end
        
    elseif G(2) == 10
%         char('N8')
                if MokeRand(G(1)+1,G(2)) > MokeRand(G(1)-1,G(2)) &&...
            MokeRand(G(1)+1,G(2)) > MokeRand(G(1),G(2)-1) %looking right
          G(1)=G(1)+1;
    
        elseif MokeRand(G(1)-1,G(2)) > MokeRand(G(1)+1,G(2)) &&...
            MokeRand(G(1)-1,G(2)) > MokeRand(G(1),G(2)-1) %looking left
        G(1)=G(1)-1;
    
        elseif MokeRand(G(1),G(2)-1) > MokeRand(G(1)+1,G(2)) &&...
            MokeRand(G(1),G(2)-1) > MokeRand(G(1)-1,G(2)) %looking down
        G(2) = G(2)-1;
                else
            
            x = randi([1,3]);

   if x == 1
       
      G = [G(1)+1,G(2)];
   elseif x == 2
       
      G = [G(1)-1,G(2)];
      
   elseif x == 3
       
      G = [G(1),G(2)-1];
   
     end 
    
        end
   
    elseif G(1) > 1 && G(2) > 1 && G(1) < 10 && G(2) < 10
%        char('N9')
        if MokeRand(G(1)+1,G(2)) > MokeRand(G(1)-1,G(2)) &&...
            MokeRand(G(1)+1,G(2)) > MokeRand(G(1),G(2)+1) &&...
            MokeRand(G(1)+1,G(2)) > MokeRand(G(1),G(2)-1) %looking right
%         char('GG1')
    G(1)=G(1)+1;
        elseif MokeRand(G(1)-1,G(2)) > MokeRand(G(1)+1,G(2)) &&...
            MokeRand(G(1)-1,G(2)) > MokeRand(G(1),G(2)+1) &&...
            MokeRand(G(1)-1,G(2)) > MokeRand(G(1),G(2)-1) %looking left
G(1)=G(1)-1;
%     char('GG2')
        elseif MokeRand(G(1),G(2)+1) > MokeRand(G(1),G(2)-1) &&...
            MokeRand(G(1),G(2)+1) > MokeRand(G(1)+1,G(2)) &&...
            MokeRand(G(1),G(2)+1) > MokeRand(G(1)-1,G(2)) %looking up
   G(2)=G(2)+1;
%     char('GG3')
        elseif MokeRand(G(1),G(2)-1) > MokeRand(G(1),G(2)+1) &&...
            MokeRand(G(1),G(2)-1) > MokeRand(G(1)+1,G(2)) &&...
            MokeRand(G(1),G(2)-1) > MokeRand(G(1)-1,G(2)) %looking down
      G(2)=G(2)-1;
%       char('GG4')
        else
          
            x = randi([1,4]);

   if x == 1
       
      G = [G(1)+1,G(2)];
   elseif x == 2
       
      G = [G(1)-1,G(2)];
      
   elseif x == 3
       
      G = [G(1),G(2)+1];
   elseif x == 4
       
      G = [G(1),G(2)-1];
   
     end 
            
      
%     char('GG5')
        end
        
        
        
    end
    
    
    %%%%%TRAINER LARRY
    
    
        if L(1) == 1 && L(2) == 1
%     char('N1')
                if MokeRand(L(1)+1,L(2)) > MokeRand(L(1),L(2)+1) %lookinL riLht
                    L(1) = L(1)+1;
                elseif MokeRand(L(1),L(2)+1) > MokeRand(L(1)+1,L(2)) %lookinL up
                    L(2) = L(2)+1;
                else
                    x = randi([1,2]);

   if x == 1
       
      L = [L(1)+1,L(2)];
      
   elseif x == 2
       
      L = [L(1),L(2)+1];
   
   
     end 
                end
                
    elseif L(1) == 10 && L(2) == 10
%     char('N2')
                if MokeRand(L(1)-1,L(2)) > MokeRand(L(1),L(2)-1) %lookinL left
                    L(1) = L(1)-1;
                elseif MokeRand(L(1),L(2)-1) > MokeRand(L(1)-1,L(2))%lookinL down
                    L(2) = L(2)-1;
                else
                    
                    x = randi([1,2]);

  
   if x == 1
       
      L = [L(1)-1,L(2)];
      
   elseif x == 2
       
      L = [L(1),L(2)-1];
   
     end 
                    
                end
    elseif L(1) == 1 && L(2) == 10
%         char('N3')
                if MokeRand(L(1)+1,L(2)) > MokeRand(L(1),L(2)-1) %lookinL riLht
                    L(1) = L(1)+1;
                elseif MokeRand(L(1),L(2)-1) > MokeRand(L(1)+1,L(2))%lookinL down
                    L(2) = L(2)-1;
                else
                    
                    x = randi([1,2]);

   if x == 1
       
      L = [L(1)+1,L(2)];
  
   elseif x == 2
       
      L = [L(1),L(2)-1];
   
     end 
                    
                end
        
        
    elseif L(1) == 10 && L(2) == 1
%         char('N4')
        
                if MokeRand(L(1)-1,L(2)) > MokeRand(L(1),L(2)+1) %lookinL left
                    L(1) = L(1)-1;
                elseif MokeRand(L(1),L(2)+1) > MokeRand(L(1)-1,L(2))%lookinL up
                    L(2) = L(2)+1;
                else
                    
                    x = randi([1,2]);

  
   if x == 1
       
      L = [L(1)-1,L(2)];
      
   elseif x == 2
       
      L = [L(1),L(2)-1];

   
     end 
                    
                    
                end
                
                
    elseif L(1) == 1
%         char('N5')
                if MokeRand(L(1)+1,L(2)) > MokeRand(L(1),L(2)+1) &&...
            MokeRand(L(1)+1,L(2)) > MokeRand(L(1),L(2)-1) %lookinL riLht
    L(1) = L(1)+ 1;
        elseif MokeRand(L(1),L(2)+1) > MokeRand(L(1),L(2)-1) &&...
            MokeRand(L(1),L(2)+1) > MokeRand(L(1)+1,L(2))%lookinL up
          L(2) = L(2) +1;
        elseif MokeRand(L(1),L(2)-1) > MokeRand(L(1),L(2)+1) &&...
            MokeRand(L(1),L(2)-1) > MokeRand(L(1)+1,L(2)) %lookinL down
          L(2) = L(2)- 1;
                else
            
                    
                    x = randi([1,3]);

   if x == 1
       
      L = [L(1)+1,L(2)];

      
   elseif x == 2
       
      L = [L(1),L(2)+1];
   elseif x == 3
       
      L = [L(1),L(2)-1];
   
     end 
    
        end
        
    elseif L(2) == 1
%     char('N6')
                if MokeRand(L(1)+1,L(2)) > MokeRand(L(1)-1,L(2)) &&...
            MokeRand(L(1)+1,L(2)) > MokeRand(L(1),L(2)+1) %lookinL riLht
          L(1) = L(1) +1;
    
        elseif MokeRand(L(1)-1,L(2)) > MokeRand(L(1)+1,L(2)) &&...
            MokeRand(L(1)-1,L(2)) > MokeRand(L(1),L(2)+1) %lookinL left
  L(1) = L(1) -1;
    
        elseif MokeRand(L(1),L(2)+1) > MokeRand(L(1)+1,L(2)) &&...
            MokeRand(L(1),L(2)+1) > MokeRand(L(1)-1,L(2)) %lookinL up
         L(2) = L(2)+ 1;
                else
            
            x = randi([1,3]);

   if x == 1
       
      L = [L(1)+1,L(2)];
   elseif x == 2
       
      L = [L(1)-1,L(2)];
      
   elseif x == 3
       
      L = [L(1),L(2)+1];
  
   
     end 
    
        end
        
    elseif L(1) == 10
%         char('N7')
        if MokeRand(L(1)-1,L(2)) > MokeRand(L(1),L(2)+1) &&...
            MokeRand(L(1)-1,L(2)) > MokeRand(L(1),L(2)-1) %lookinL left
  L(1) = L(1)- 1;
    
        elseif MokeRand(L(1),L(2)+1) > MokeRand(L(1),L(2)-1) &&...
            MokeRand(L(1),L(2)+1) > MokeRand(L(1)-1,L(2)) %lookinL up
          L(2) = L(2)+ 1;
    
        elseif MokeRand(L(1),L(2)-1) > MokeRand(L(1),L(2)+1) &&...
            MokeRand(L(1),L(2)-1) > MokeRand(L(1)-1,L(2)) %lookinL down
        L(2) = L(2)-1;
        else
            
            x = randi([1,3]);

   if x == 1
       
      L = [L(1)-1,L(2)];
      
   elseif x == 2
       
      L = [L(1),L(2)+1];
   elseif x == 3
       
      L = [L(1),L(2)-1];
   
     end 
    
        end
        
    elseif L(2) == 10
%         char('N8')
                if MokeRand(L(1)+1,L(2)) > MokeRand(L(1)-1,L(2)) &&...
            MokeRand(L(1)+1,L(2)) > MokeRand(L(1),L(2)-1) %lookinL riLht
          L(1)=L(1)+1;
    
        elseif MokeRand(L(1)-1,L(2)) > MokeRand(L(1)+1,L(2)) &&...
            MokeRand(L(1)-1,L(2)) > MokeRand(L(1),L(2)-1) %lookinL left
        L(1)=L(1)-1;
    
        elseif MokeRand(L(1),L(2)-1) > MokeRand(L(1)+1,L(2)) &&...
            MokeRand(L(1),L(2)-1) > MokeRand(L(1)-1,L(2)) %lookinL down
        L(2) = L(2)-1;
                else
            
            x = randi([1,3]);

   if x == 1
       
      L = [L(1)+1,L(2)];
   elseif x == 2
       
      L = [L(1)-1,L(2)];
      
   elseif x == 3
       
      L = [L(1),L(2)-1];
   
     end 
    
        end
   
    elseif L(1) > 1 && L(2) > 1 && L(1) < 10 && L(2) < 10
%        char('N9')
        if MokeRand(L(1)+1,L(2)) > MokeRand(L(1)-1,L(2)) &&...
            MokeRand(L(1)+1,L(2)) > MokeRand(L(1),L(2)+1) &&...
            MokeRand(L(1)+1,L(2)) > MokeRand(L(1),L(2)-1) %lookinL riLht
%         char('LL1')
    L(1)=L(1)+1;
        elseif MokeRand(L(1)-1,L(2)) > MokeRand(L(1)+1,L(2)) &&...
            MokeRand(L(1)-1,L(2)) > MokeRand(L(1),L(2)+1) &&...
            MokeRand(L(1)-1,L(2)) > MokeRand(L(1),L(2)-1) %lookinL left
L(1)=L(1)-1;
%     char('LL2')
        elseif MokeRand(L(1),L(2)+1) > MokeRand(L(1),L(2)-1) &&...
            MokeRand(L(1),L(2)+1) > MokeRand(L(1)+1,L(2)) &&...
            MokeRand(L(1),L(2)+1) > MokeRand(L(1)-1,L(2)) %lookinL up
   L(2)=L(2)+1;
%     char('LL3')
        elseif MokeRand(L(1),L(2)-1) > MokeRand(L(1),L(2)+1) &&...
            MokeRand(L(1),L(2)-1) > MokeRand(L(1)+1,L(2)) &&...
            MokeRand(L(1),L(2)-1) > MokeRand(L(1)-1,L(2)) %lookinL down
      L(2)=L(2)-1;
%       char('LL4')
        else
          
            x = randi([1,4]);

   if x == 1
       
      L = [L(1)+1,L(2)];
   elseif x == 2
       
      L = [L(1)-1,L(2)];
      
   elseif x == 3
       
      L = [L(1),L(2)+1];
   elseif x == 4
       
      L = [L(1),L(2)-1];
   
     end 
            
      
%     char('LL5')
        end
        
        
        
        end
    
        %BATTLE!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    
        if G(1,1) ==L(1,1) && G(1,2)==L(1,2)
            
            
           if MoketotG*randi([1,100])/100>MoketotL*randi([1,100])/100
              MoketotG=MoketotG+10;
              
              L(1,1)=MokeCenter(1,1);
              L(1,2)=MokeCenter(1,2);
              
              
              
                                scatter(G(1,1),G(1,2),150,'bo')
        hold on
    scatter(L(1,1),L(1,2),150,'g*')
    scatter(MokeCenter(1,1),MokeCenter(1,2),150,'filled','d')
    legend('Trainer Gary Wins','Location', 'NorthWest')
    grid on
    axis([0,11,0,11])
      xticklabels({'','0','715','1,430','2,145','2,860','3,575','4,290','5,005','5,7020','6,435'})
    yticklabels({'','0','715','1,430','2,145','2,860','3,575','4,290','5,005','5,7020','6,435'})
    xlabel('Horizontal Distance (m)')
    ylabel('Vertical Distance (m)')
    title('Mokemon Simulation')
    hold off
    for h = 1:10
        for y = 1:10
    text(h,y,num2str(MokeRand(h,y)))
        end
    end
    pause(5)
              
    
    
%               plot(fprintf('G Wins!'))
%                pause(1)
           elseif MoketotL*randi([1,100])/100>MoketotG*randi([1,100])/100
               
                G(1,1)=MokeCenter(1,1);
              G(1,2)=MokeCenter(1,2);
               
              scatter(L(1,1),L(1,2),150,'g*')
                     legend('Trainer Larry Wins','Location', 'NorthWest')
        hold on
    scatter(G(1,1),G(1,2),150,'bo')
    scatter(MokeCenter(1,1),MokeCenter(1,2),150,'filled','d')
    grid on
    axis([0,11,0,11])
    xticklabels({'','0','715','1,430','2,145','2,860','3,575','4,290','5,005','5,7020','6,435'})
    yticklabels({'','0','715','1,430','2,145','2,860','3,575','4,290','5,005','5,7020','6,435'})
      xlabel('Horizontal Distance (m)')
    ylabel('Vertical Distance (m)')
    title('Mokemon Simulation')
    hold off
    for h = 1:10
        for y = 1:10
    text(h,y,num2str(MokeRand(h,y)))
        end
    end
    pause(5)
              
              
              
%               fprintf('L Wins!')
               MoketotL=MoketotL+10;
               
           elseif MoketotG*randi([1,100])/100==MoketotL*randi([1,100])/100
               
               z=randi([0,1]);
               
               if z==0
                   
                    MoketotG=MoketotG+10;
              
              L(1,1)=MokeCenter(1,1);
              L(1,2)=MokeCenter(1,2);
              
              
       scatter(G(1,1),G(1,2),150,'bo')
        hold on
    scatter(L(1,1),L(1,2),150,'g*')
    scatter(MokeCenter(1,1),MokeCenter(1,2),150,'filled','d')
    legend('Trainer Gary Wins','Location', 'NorthWest')
    grid on
    axis([0,11,0,11])
   xticklabels({'','0','715','1,430','2,145','2,860','3,575','4,290','5,005','5,7020','6,435'})
   yticklabels({'','0','715','1,430','2,145','2,860','3,575','4,290','5,005','5,7020','6,435'})
      xlabel('Horizontal Distance (m)')
    ylabel('Vertical Distance (m)')
    title('Mokemon Simulation')
    hold off
    for h = 1:10
        for y = 1:10
    text(h,y,num2str(MokeRand(h,y)))
        end
    end
    pause(5)
              
              
               elseif z==1
                  
                  
           G(1,1)=MokeCenter(1,1);
              G(1,2)=MokeCenter(1,2);
               
               MoketotL=MoketotL+10;
               
               
     scatter(L(1,1),L(1,2),150,'g*')
          legend('Trainer Larry Wins','Location', 'NorthWest')
        hold on
    scatter(G(1,1),G(1,2),150,'bo')
    scatter(MokeCenter(1,1),MokeCenter(1,2),150,'filled','d')
    grid on
    axis([0,11,0,11])
    xticklabels({'','0','715','1,430','2,145','2,860','3,575','4,290','5,005','5,7020','6,435'})
    yticklabels({'','0','715','1,430','2,145','2,860','3,575','4,290','5,005','5,7020','6,435'})
    xlabel('Horizontal Distance (m)')
    ylabel('Vertical Distance (m)')
    title('Mokemon Simulation')
    hold off
    for h = 1:10
        for y = 1:10
    text(h,y,num2str(MokeRand(h,y)))
        end
    end
    pause(5)
               
               end
               
              
           end
           
           
           
           
        end
    
    
%   G(n+1,1) = G(n,1)
% G(n+1,2) = G(n,2)
% G(n+1,:) = G(n,:) 


    scatter(G(1,1),G(1,2),150,'bo')
    hold on
    scatter(L(1,1),L(1,2),150,'g*')
    scatter(MokeCenter(1,1),MokeCenter(1,2),'filled','d')
    grid on
    legend(['Trainer Gary''s Score ' num2str(MoketotG)],['Trainer Larry''s Score ' num2str(MoketotL)],'MokeStop')
    axis([0,11,0,11])
    xticklabels({'','0','715','1,430','2,145','2,860','3,575','4,290','5,005','5,7020','6,435'})
    yticklabels({'','0','715','1,430','2,145','2,860','3,575','4,290','5,005','5,7020','6,435'})
    xlabel('Horizontal Distance (m)')
    ylabel('Vertical Distance (m)')
    title('Mokemon Simulation')
    hold off
    for h = 1:10
        for y = 1:10
    text(h,y,num2str(MokeRand(h,y)))
        end
    end
    pause(p)
    
    
    frame = getframe(1);
  im = frame2im(frame);
  [PicA,map] = rgb2ind(im,256);
  
  Animationpic = sprintf('mat_img_%d.png', n) ;
 imwrite(PicA,map, Animationpic, 'png') ;

    
    MovementG(n,:) = [G(1),G(2)];
    MovementL(n,:) = [L(1),L(2)];
    

    MoketotG = MoketotG+MokeRand(G(1),G(2));
    MokeRand(G(1),G(2))=0;
    
    MoketotL = MoketotL+MokeRand(L(1),L(2));
    MokeRand(L(1),L(2))=0;
    
    
    
    
    
    
n;

Randommoke = MokeRand';
Radommoke = reshape(Randommoke,100,1);






end




