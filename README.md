# bardo 
Sistemas desenvolvido para o 8° período do curso de Sistemas de Informação, onde visava criar um software para suprir um real problema. Vimos que a compania de agua do rio grande do norte tinha um deposito cujo o mesmo nao tinha nenhum controle sobre seu estoque e solicitaçoes de materiais e ferramentas. Para solucionar essa dor criamos um sistema para melhor controle do gerenciamento e solicitações de materiais e pedidos de ferramentas. Foi utilizado o framework adianti 7+, php7.4, mysql.

### requisitos para rodar o projeto. 
- apache2
- php
- mysql

### instalação

- Clone o repositorio
```
git clone https://github.com/ItaloNCcosta/bardo.git
```

- Crie um database com o nome de sua preferencia.

- Como o framework não utiliza o sistema de migrate, esta disponivel um dump das tabelas do DB na pasta artefatos

- Altere as configurações de banco de dados em app\config nos arquivos de comunication, database, log, permission, sample.ini
