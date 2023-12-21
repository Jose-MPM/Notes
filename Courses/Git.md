### Git

- [https://es.stackoverflow.com/questions/392420/c%C3%B3mo-puedo-cambiar-de-ramas-en-git] move between branchs
* instalen zsh y un plugin para que su terminal les diga en todo momento en que rama estan parados.
    
```bash
$ git push origin main
```

* este es el plugin de zsh para que la terminal les de contexto de git https://ohmyz.sh. De todas maneras ya se los puse en el canal de general en slack 

* New branch
```bash
$ git branch <name-of-branch>
```

* Delete branch
```bash
$ git branch -d <name-of-branch>
```

* If its not been fully merged in[totalmente fusionado]
```bash
$ git branch -D <name-of-branch>
```

* To change the branch
```bash
$ git checkout <name-of-branch>
git checkout login-with-spring-security
```

* Merge another branch to active branch
```bash
$ git merge <name-of-branch>
```

* Jalar rama remota:
```bash
git fetch origin unificacion-2i
git fetch origin 
git fetch origin <branch_remote_name>
```
Y luego tienes que hacer checkout a esa rama
```bash
git fetch origin <branch_remote_name>
```

When we switch branches any work that we might have(que podríamos tener) in the staging area or the working directory will come over with us.

* The only side note to that is we can't switch to a new branch if any of the files in our working directory or our staging area would be overwritten.

* Alias in Git
```bash
$ git config --global alias.ch checkout
$ git config --global alias.br branch
$ git config --global alias.co commit
$ git config --global alias.st status
```

# Para firmar los commits como distintos usuarios

Cuando uno empieza a trabajar con git, en algún momento fija su configuración global de nombre y correo

git config --global user.name "Pedro Mendez"
git config --global user.email ola@email.com

La implicancia que tiene esto es que todos los commits que hagas en el equipo quedarán asociados a ese email, a quien se atribuye la autoría del commit.

Es posible configurar un email y nombre distinto para cada repositorio. Si tú te paras en la raíz de tu copia local y pones

git config user.name "Pedro Mendez."
git config user.email olas@email.com