% Radiator comparison plot

    % Radiator 1
    % Ask for inputs
    prompt = 'Introduce radiator 1 name'; 
    Rad1_name = inputdlg(prompt)
    
    prompt = 'Introduce Radiator 1 performance matrix.\nRows are Mstr MFR [kg/s].\nColumns are Slv Air Speed [m/s].\nFirst row/column are coordinates. Use square brackets like [1 2 3]: ';
    
    A = input(prompt);
    x1 = A(1,2:end);
    y1 = A(2:end,1);
    z1 = A(2:end,2:end);
    
    xlin = linspace(min(x1),max(x1));
    ylin = linspace(min(y1),max(y1));
    [X,Y] = meshgrid(xlin,ylin);
    Z = griddata(x1,y1,z1,X,Y,'cubic');
    figure
    surf(X,Y,Z) 
    axis tight; hold on
    % Plot original points in the 3D plot:
    x1_p3 = repmat(x1,[1 max(size(y1))]);
    y1_p3 = 0;
    for i=1:max(size(y1))
    y1_p3((max(size(x1))*(i-1)+1):max(size(x1))*i,1) = y1(i);
    end
    y1_p3 = y1_p3.';
    z1_p3 = z1(1,:);
    for i=2:max(size(y1))
     z1_p3 = [z1_p3 z1(i,:)];
    end
    plot3(x1_p3,y1_p3,z1_p3,'.','MarkerSize',15)
    hold on
    
    % Radiator 2
    % Ask for inputs   
    prompt = 'Introduce radiator 2 name'; 
    Rad2_name = inputdlg(prompt)
    
    prompt = 'Introduce Radiator 2 performance matrix.\nRows are Mstr MFR [kg/s].\nColumns are Slv Air Speed [m/s].\nFirst row/column are coordinates. Use square brackets like [1 2 3]: ';
    
    A = input(prompt);
    x2 = A(1,2:end);
    y2 = A(2:end,1);
    z2 = A(2:end,2:end);
    
    xlin2 = linspace(min(x2),max(x2));
    ylin2 = linspace(min(y2),max(y2));
    [X2,Y2] = meshgrid(xlin2,ylin2);
    Z2 = griddata(x2,y2,z2,X2,Y2,'cubic');
    surf(X2,Y2,Z2) 
    axis tight; hold on
    % Plot original points in the 3D plot:
    x2_p3 = repmat(x2,[1 max(size(y2))]);
    y2_p3 = 0;
    for i=1:max(size(y2))
    y2_p3((max(size(x2))*(i-1)+1):max(size(x2))*i,1) = y2(i);
    end
    y2_p3 = y2_p3.';
    z2_p3 = z2(1,:);
    for i=2:max(size(y2))
     z2_p3 = [z2_p3 z2(i,:)];
    end
     plot3(x2_p3,y2_p3,z2_p3,'.','MarkerSize',15)
    
    % Radiator 3
    % Ask for inputs   
    prompt = 'Introduce radiator 3 name'; 
    Rad3_name = inputdlg(prompt)
    
    prompt = 'Introduce Radiator 3 performance matrix.\nRows are Mstr MFR [kg/s].\nColumns are Slv Air Speed [m/s].\nFirst row/column are coordinates. Use square brackets like [1 2 3]: ';
    
    A = input(prompt);
    x3 = A(1,2:end);
    y3 = A(2:end,1);
    z3 = A(2:end,2:end);
    
    xlin3 = linspace(min(x3),max(x3));
    ylin3 = linspace(min(y3),max(y3));
    [X3,Y3] = meshgrid(xlin3,ylin3);
    Z3 = griddata(x3,y3,z3,X3,Y3,'cubic');
    surf(X3,Y3,Z3) 
    axis tight; hold on
    % Plot original points in the 3D plot:
    x3_p3 = repmat(x3,[1 max(size(y3))]);
    y3_p3 = 0;
    for i=1:max(size(y3))
    y3_p3((max(size(x3))*(i-1)+1):max(size(x3))*i,1) = y3(i);
    end
    y3_p3 = y3_p3.';
    z3_p3 = z3(1,:);
    for i=2:max(size(y3))
     z3_p3 = [z3_p3 z3(i,:)];
    end
     plot3(x3_p3,y3_p3,z3_p3,'.','MarkerSize',15) 
     
    title('Radiators comparison');
    xlabel('Slv Air Speed (m/s)');
    ylabel('Mstr MFR (kg/s)');
    zlabel('Q/ETD (W/K)');
    legend({'Radiator1',char(Rad1_name),'Radiator2',char(Rad2_name),'Radiator3',char(Rad3_name)});