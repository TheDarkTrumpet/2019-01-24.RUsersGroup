R Users Group (2019/01/24)
==========================

This repo is for the presentation at the R Users Group.

Agenda:
-------

1. Introductions (We have some new people who signed up for this, so we’ll do some brief introductions if new people arrive)
2. Docker Presentation
    1. What is It
    2.  From different perspectives (System Admin, Developer, Researcher, etc) how does it apply to you?
    3.  How does it work
    4.  What benefits does it have over some other solutions.
    5.  Basics of Usage
        1.  Pulling, Running Containers (interactive, daemon modes), Building, and Multiple Containers
3. Open Discussion/Problem Solving
4. Closings

Setup Notes:
------------

If you want to work along with me during this presentation, it's important that you set up your machine beforehand.  To install Docker, please follow the instructions below, depending on your operating system.

**Windows**
https://docs.docker.com/docker-for-windows/install/

**OSX**
https://docs.docker.com/docker-for-mac/install/

**Linux**
https://docs.docker.com/install/linux/docker-ce/ubuntu/

After the base install of Docker is completed, please make sure to run the following commands:

```bash
docker pull ubuntu
docker pull microsoft/dotnet
docker pull thedarktrumpet/rstudiojava
```

Please also note that I recommend pulling down the files in this repository, although that's not strictly necessary.  You can install git from https://git-scm.com/downloads  I strongly recommend if you're writing any code (regardless of the language, including scripting languages) that you get used to using Git.

After installing git, you can clone this repository by opening a terminal (PowerShell, Terminal.app, etc) and copying/pasting the following:

```shell
git clone https://github.com/TheDarkTrumpet/2019-01-24.RUsersGroup.git
cd 2019-01-24.RUsersGroup
```

**Please Note:** If you have any problems setting this up, please feel free to arrive 30 minutes early to the meeting (in person) at the top floor of Public Health.  I can assist you on getting things setup.