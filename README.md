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

# COMANDO PARA COMPILAR O ASSEMBLY .s
* GNU assembler 
  > $ as nomedoarquivo.s -o nomedoarquivo.o
* GNU linker
  > $ ld nomedoaquivo.o -o nomedoarquivo

# COMANDO PARA COMPILAR O ASSEMBLY usando GCC
* Alterar a estrutura do assembly para o c enxergar
  * trocar o _start por main
   
* 
```asm
.section .data
    msg: 
            .ascii "Hello World\n"
.section .text
.globl main
main: 
        movl $4, %eax           #syscall number for write syscall
        movl $1, %ebx           #file descriptor for write syscall
        movl $msg, %ecx         #moving buffer pointer to write syscall
        movl $13, %edx          #moving the buffer size in bytes
        int $0x80               #interrupt

        movl $1, %eax           #1 is syscal number for exit syscall
        movl $0, %ebx           #argument for exit syscall
        int $0x80

  ```
* gcc com comando para 32 bits
  > $ gcc -m32 nomedoarquivo.s -o nomedoarquivo
* Executar arquivo compilado
  > $ ./nomedoaquivo
