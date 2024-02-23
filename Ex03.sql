SET SERVEROUTPUT ON;

DECLARE
    valor_dolar NUMBER := 45; -- Valor em dólares
    cambio NUMBER := 5.50; -- Valor do câmbio em reais por dólar
    
    valor_reais NUMBER; -- Valor em reais
    
BEGIN
    valor_reais := valor_dolar * cambio;
    
    DBMS_OUTPUT.PUT_LINE('O valor em reais de $45 é: R$' || TO_CHAR(valor_reais, '999.99'));
END;


--EX 2
DECLARE
    novo_sal NUMBER;
    slaario NUMBER := 1200;
    taxa NUMBER := 0.25;
BEGIN

    novo_sal := slaario *taxa;
    DBMS_OUTPUT.PUT_LINE('O novo salário mínimo será de: R$' || TO_CHAR(novo_sal, '9999.99'));
END;




--IF AND ELSE
DECLARE 
   sexo_cliente CHAR(1) := 'm';
   genero VARCHAR(20);
   
BEGIN
    IF sexo_cliente = 'M ' OR sexo_cliente = 'm ' THEN
        genero:= 'masculino';
    ELSIF sexo_cliente = 'F' OR sexo_cliente = 'f' THEN
        genero:= ' feminino';
    ELSE 
        genero:= 'outros';
    END IF;
        DBMS_OUTPUT.PUT_LINE('O sexo do cliente é: ' || genero);
END;






    