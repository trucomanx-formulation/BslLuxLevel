function [LUX VAL ERR NN]=histograma_bsi(E1,D1,NSAMPLES,POINT)



    NLIN=size(E1,1);
    NCOL=size(E1,2);

    VAL2=cell(1,255);

    MINL=min(POINT(:,1));
    MINC=min(POINT(:,2));

    MAXL=max(POINT(:,1));
    MAXC=max(POINT(:,2));


    for II=MINL:MAXL
    for JJ=MINC:MAXC
        in = inpolygon (II, JJ, POINT(:,1), POINT(:,2));
        if in
            ID=round(E1(II,JJ))+1;
            VAL2{ID}(end+1)=D1(II,JJ);
        end
    end
    fprintf('Working histograma_bsi line %3d of %3d\r',II,MAXL);
    end
    disp('');


    N=0;
    nn=zeros(1,255);
    for II=2:255
        nn(II)=length(VAL2{II});
        if nn(II)>=NSAMPLES
            N=N+1;
        end
    end

    if(N==0)
        disp(['Maximo numero de elementos:' num2str(max(nn)) ] );
        disp(['Valor de limear:' num2str(NSAMPLES)] );
        error('Numero de elementos LUX igual a 0')
    end

    LUX=zeros(1,N);
    VAL=zeros(1,N);
    ERR=zeros(1,N);
    NN =zeros(1,N);

    JJ=1;
    for II=2:255
        nn=length(VAL2{II});
        if nn>=NSAMPLES
            LUX(JJ)=II-1;
            NN(JJ)=nn;
            VAL(JJ)=mean(VAL2{II});
            ERR(JJ)=std(VAL2{II});
            JJ=JJ+1;
        end
    end



end
