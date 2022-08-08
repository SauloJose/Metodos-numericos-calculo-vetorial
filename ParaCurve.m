%Desenha pontos no plano.
function [PA,PF]=ParaCurve(fx,fy,passo,Vin,Vf)
  %xf : Função para a coordendada x
  %yf: Função para a coordenada y
  %Vin: Valor inicial
  %Vf: Valor final
  %PA: Primeiro

  %Matriz dos parâmetros
  T=Vin:passo:Vf;


  n=((Vf-Vin)/passo)+1;
  X=[];
  Y=[];
  for i=1:n
    X(i)=fx(T(i));
    Y(i)=fy(T(i));
  endfor


  %Pontos extremos
  PA=[X(1);Y(1)];
  PF=[X(n);Y(n)];

  %Plotando gráfico
  %gráfico da curva
  subplot(2,2,1);
  plot(X,Y,"-r");
  title('CURVA PARAMETRIZADA');
  xlabel('eixo x');
  ylabel('eixo y');
  % valor de Y.
  subplot(2,2,2);
  plot(T,Y,"-g");
  title('Valores de Y');
  xlabel('eixo t');
  ylabel('eixo Y');
  % valor de X.
  subplot(2,2,3);
  plot(X,T,"-b");
  title('Valores de X');
  xlabel('eixo X');
  ylabel('eixo t');




endfunction

