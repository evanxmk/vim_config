# Custom Neovim configuration 
---
![lol](https://github.com/evanxmk/vim_config/blob/master/assets/vim.jpg)

1. Leader key is space 
2. To get the project view within the neovim editor 
```bash
<space> + pv
```
3. To get the project view within the neovim editor with telescope 
```bash
<space> + pf 
```

4. Grep search key within neovim editor 
```bash
<space> + ps 
```

5. Treesitter
  - Makes for a more humane syntax highlighting... allegedly 

6. Undotree
  - this is interesting as it shows you your undo history
```bash
<space> u
```

# For docker development IDE using SSH
I've been trying to figure out how to do container driven development for the longest time, seems like this time I have finally figured out the hacky way on how to do it.
Essentially, to achieve full "docker driven development" for my learning and exploration, I need containers which I can spin up quickly to install certain tools that I want to play with. 
Here are some of the ways I've managed to do it on OSX

Some of the reason to utilise SSH instead of Docker exec include:
1. Persistent shell sessions
2. Modifying environment variables
3. Interactive inputs
4. Access to SSH-related features
5. Performing administrative tasks (not as straightforward using docker exec)


1. Work directory containing the Dockerfile 
```bash
.
├── Dockerfile
└── work
    └── something.txt
```

2. Building the docker image 
```bash
docker build -t my-debian-image .
```

3. Getting docker container to sync with my work directory
```bash
docker run -d -p 2222:22 -v /Users/mk/projects/portable-ide/ide/neovim/work:/work my-debian-image
```
4. SSH into the development container
```bash
sudo ssh root@localhost -p 2222
```

The bahvior on the container actually reflects the behavior of the specified work directory, albeit I have to specify to full path for the damn thing to work. But overall, i'm pretty happy with the result.


