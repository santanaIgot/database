SELECT * FROM DADO_DE_VENDAS
    WHERE ORDERNUMBER = 10107
        AND quantityordered = 27;
        
        
set SERVEROUTPUT ON;
DECLARE 
    DADOS_TABELA DADO_DE_VENDAS.quantityordered%TYPE;
    
BEGIN 
    SELECT quantityordered INTO DADOS_TABELA FROM DADO_DE_VENDAS 
            WHERE ORDERNUMBER = 10107
                AND quantityordered = 27;
        
        dbms_output.put_line(DADOS_TABELA);
        
END;


set SERVEROUTPUT ON;
DECLARE 
    VARIAVEL1 NUMBER;
    VARIAVEL2 DADO_DE_VENDAS.quantityordered%TYPE;
    VARIAVEL3 DADO_DE_VENDAS.ORDERNUMBER%TYPE;
   
    
BEGIN 
    SELECT quantityordered,quantityordered,ORDERNUMBER 
    INTO VARIAVEL1,VARIAVEL2,VARIAVEL3 
    FROM DADO_DE_VENDAS 
            WHERE ORDERNUMBER = 10107
                AND quantityordered = 27;
        
        dbms_output.put_line(VARIAVEL|| '' || VARIAVEL2 || '' || VARIAVEL3);
        
END;


---------------------------------------------------------
CREATE TABLE ALUNO(RM VARCHAR(30),
                   ALUNO VARCHAR2(50));
                   
                   
                   
SELECT * FROM ALUNO;




set SERVEROUTPUT ON;
DECLARE
    RM VARCHAR(30);
    NOME_ALUNO VARCHAR(50);
    
BEGIN
    SELECT ALUNO INTO NOME_ALUNO FROM ALUNO  WHERE RM = '95003' ; 

     dbms_output.put_line( 'O NOME ALUNO DE' || RM || 'É' || NOME_ALUNO);
END;

------------------------------------------------------------------------------

set SERVEROUTPUT ON;
DECLARE
    RM VARCHAR(30) := 'IGOR';
    NOME_ALUNO VARCHAR(30):= '95003';
    
BEGIN
    UPDATE ALUNO SET ALUNO = NOME_ALUNO WHERE RM = RM;

END;

    
------------------------------DELETAR ALUNO 95003---------------------------








