<!---
/*******************************************************************************
// Project name   :
// File name      : Git_getting_started.md
// Created date   : Wednesday 06/28/17
// Author         : Huy Hung Ho
// Last modified  : Wednesday 06/28/17
// Desc           :
*******************************************************************************/
-->
Introduction
============
- Website:  https://daynhauhoc.com/t/pro-git-gioi-thieu-ve-git-va-cach-su-dung-git-cuc-ki-chi-tiet-de-hieu-smile/23271
- Vnese:      https://git-scm.com/book/vi/v1
- Markdown: https://github.com/hocchudong/git-github-for-sysadmin


Features
========

## 1. STARTTING

- 3 states: committed, modified, staged
- 3 directory: working directory, staging area, git directory (repository)
- Check info: git config --list
- Everything committed can undo, but not
- Watch git commit:  git log --pretty=oneline

## 2. BASIC OF GIT

#2.1 Create a repository
- C1:
    Go to avalable project directory
    + git init
- C2:
    git clone git://github.com/heroh396/linux.git my_linux

#2.2 Luu lai su thay doi vao kho chua (repository)
- File in dir have 2 type: tracked or untracked:
    + tracked: file co trong snapshot truoc (maybe unmodified, modified, staged)
    + untracked: ko co trong snapshot, ko co trong stagin area

- Khi tao 1 copy repository, all of file is tracked and unmodified.

- Check state of file: git status

- git add
    + add file to tracked (theo doi), prepare to committed
    + git add folder to add all of files

- ignore:
    + cat .gitignore
        *.[oa]          (ignore file .o (object), .a (achieb) when compiling)
        !list.a         (commit specific file: list.a)
        *~
        log/            (ignore all of file, dir in log/ dir)
        /log            (ignore log dir)

- Watching staged, unstaged:
    + git diff          (very long)

- Fast commit:
    + git commit -a -m 'adder new file'

- Watch git history:
    + git log -5
    + git log -p -2                 (display diff about each commit)
    + git log -p -2 --word-diff     (display diff by text)
    + git log -p -2 --word-diff -U1 (decrease context)
    + git log --pretty=oneline      (watch git basic)
    + see more: https://git-scm.com/book/vi/v1/C%C6%A1-B%E1%BA%A3n-V%E1%BB%81-Git-Xem-L%E1%BB%8Bch-S%E1%BB%AD-Commit

#2.4 Recovery (undo - phuc hoi) **
- Thay doi commit cuoi cung (commit voi cmt cua commit gan day nhat)
    + git commit --amend

- Move file from staged to modified:
    + git reset HEAD <file>

- Undo file: <dangerous>
    + git checkout -- <file>

#2.5 Managing remote (quan ly tu xa)
- Watch host service
    + git remote -v     (many host, but origin is only host I can push)

- Add more repository
    + git remote add [shortname] [url]

- Truy cap info cua ai do ma trong folder chua co
    + git fetch [shortname]

- Truy cap va keo tu may chu git
    + git fetch origin      (keo cac thay doi co trong may chu ve may - khong
      tich hop, dong bo)

- Tao 1 nhanh khac o local de follow nhanh cua nguoi khac, sau do dung:
    + git pull

- Day len git host
    + git push [host-name] [branch-name] (ten may chu, ten nhanh)

- Check info of host server
    + git remote show [host-name]       (maybe origin)

    git remote rename pb paul
    git remote rm paul


#2.6 Tag (danh dau v1.0 v1.3...)
- Check avalable tags
    + git tag
    + git show v1.4
    + git push origin v1.4
    + git push origin --tags (push all of tags)

- Add tag
    + Annotated tag:    git tag -a v1.4 -m 'my version 1.4'
    + Lightweight tag:  git tag v1.4-lw
    + Tag after:        git tag -a v1.2 -m 'version 1.2' 9fceb02    (hash code)

#2.7 Tip
    + source /home/Working/Cloud/github/Linux/Git-conf/git-completion.bash


## 3. BRANCH

#3.1 Branch
- Create new branch
    + git branch testing

- Go to new brach
    + git checkout testing

- Create and go new branch
    + git checkout -b testing

#3.2 Merge
- Merge
    + git checkout master
    + git merge hotfix
    + git branch -d hotfix

- Giai quyet xung dot khi tich hop 2 nhanh khac nhau
    + git merge issual53    <error>
    + git status            <unmerged index.html>
    + vim index.html
    + git status            <check oke>
    + git commit

#3.3 Managing branch
- Check branch
    + git branch
    + git branch -v     (check commit each branch)
    + git branch --merged

- Push branch to host server
    + git push origin testing





TIP
===
- Create SSH key
    + ssh-keygen -t rsa -b 4096 -C "email_cua_ban@example.com"

- Change password (passphrases)
    + ssh-keygen -p

- Remove file out the stage
    + git rm --cached <file>
