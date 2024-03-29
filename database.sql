CREATE TABLE PAIS (ID_PAIS NUMBER GENERATED ALWAYS AS IDENTITY, 
                            NONE VARCHAR(30),
                            PRIMARY KEY(ID_PAIS))
                            
                            
CREATE TABLE ESTADO (ID_ESTADO NUMBER GENERATED ALWAYS AS IDENTITY, 
                            NONE VARCHAR(30),
                            PRIMARY KEY(ID_ESTADO))    
ALTER TABLE ESTADO ADD CONSTRAINT FK_ESTADO
FOREIGN KEY  (ID_PAIS)  REFERENCES PAIS;

CREATE TABLE CIDADE (ID_CIDADE NUMBER GENERATED ALWAYS AS IDENTITY, 
                            NONE VARCHAR(30),
                            ID_ESTADO NUMBER,
                            PRIMARY KEY(ID_ESTADO));
ALTER TABLE CIDADE ADD CONSTRAINT FK_CIDADE
FOREIGN KEY  (ID_ESTADO)  REFERENCES ESTADO;


                            
CREATE TABLE BAIRRO (ID_BAIRRO NUMBER GENERATED ALWAYS AS IDENTITY, 
                            NONE VARCHAR(30),
                            ID_BAIRRO NUMBER,
                            PRIMARY KEY(ID_BAIRRO));
ALTER TABLE BAIRRO ADD CONSTRAINT FK_BAIRRO 
FOREIGN KEY  (ID_CIDADE)  REFERENCES CIDADE;


CREATE TABLE ENDERECO (ID_ENDERECO NUMBER GENERATED ALWAYS AS IDENTITY, 
                            NONE VARCHAR(30),
                            ID_BAIRRO NUMBER,
                            PRIMARY KEY(ID_BAIRRO));
ALTER TABLE ENDERECO ADD CONSTRAINT 
FK_ENDERECO FOREIGN KEY (ID_BAIRRO) REFERENCES BAIRRO;


INSERT INTO pais (
    id_pais,
    pais
)VALUES (
    "toronto"
);



                            
                        