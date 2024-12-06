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

## Usando o strace para ver as chamadas do sistema
* usando um arquivo compilado do c++
* Usar o seguinte comando
    > $strace -c ./hello

![image](https://github.com/user-attachments/assets/90ad3264-540f-4c0c-96c8-0b0059d7e622)


* Usar o strace modo completo
  > $strace ./hello
  
  > O modo completo exibe todas as informações de execução do programa


# Assembly tipo GNU x NASM
  * GAS (GNU Assembler) - AT&T Syntax: Em GAS, os comentários começam com #.

  * Exemplo de GAS:
```asm

movl %eax, %ebx    # Move o conteúdo de %eax para %ebx
```
* NASM (Intel Syntax): Em NASM, os comentários começam com ;.

* Exemplo de NASM:
```asm
mov ebx, eax       ; Move o conteúdo de eax para ebx
```


# Adicionar o suporte 32 bits ao Linux Ubuntu

* Instalar as seguintes bibliotecas
  > sudo apt update
  > sudo apt install binutils gcc-multilib 
  > sudo apt install libc6:i386

* Navegar no diretório nano /usr/include/asm/unistd.h
* * Se existir o diretório com o arquivo unistd.h está correto a adição da biblioteca!
