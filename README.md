# Fawn
This repository is to recreate the Machine of HackTheBox Starting Point's Fawn.

## Steps to Run the Machine

1. Clone the repository
```
git clone https://github.com/Rao-Pranava/Fawn.git
```

2. Move into the Directory
```
cd Fawn
```

3. Run the `Make` file.
```
make All
```

## Commands to run the Docker file Manually

```
sudo docker build -t ftp .
```
```
sudo docker run -d -p 20-21:20-21 -p 65500-65515:65500-65515 --rm --hostname CP-Labs --name ftp ftp
```