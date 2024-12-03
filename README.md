# Linguagem Assembly

## Verificar o Tamanho do Initialized Uninitialized e do executable
* Criar um arquivo cpp
* Escrever algum código
* Compilar: g++ -o nomedoarquivodesaida arquivoAcompilar.cpp
* Usar o comando size para ver as informações
  > $size nomedoarquivodesaida
* Exemplo de saída
![image](https://github.com/user-attachments/assets/8bd13771-3252-48d6-b283-a2f88276d2e1)


## Rodar em segundo plano e ver o processo e achar o endereço do stack

* Executar o arquivo compilado c++
* Usar o seguinte comando
  > $./nomedoprograma &

* Acessar o PID
  > $cat /proc/PID_NUMBER/maps

![image](https://github.com/user-attachments/assets/3fb9bdc0-2799-4bf1-9c44-b8ed9bda3670)





