
## AUTOMATE YOUR GIT WORKFLOW 

![git](img/git.jpeg) 

1. Open your terminal conf from `.zshrc` or `.bashrc` 
2. Add this lines given below: 

```bash 
# paste your own username and personal access token
export GIT_USERNAME='<your-username>'
export GIT_ACCESS_TOKEN='<your-personal-token>'

```

3. Create or open your `.gitconfig` file 
4. add this code given below : 

```bash 
[credential]
    helper = "!f() { echo \"username=${GIT_USERNAME}\"; echo \"password=${GIT_ACCESS_TOKEN}\"; }; f"
```

5. restart your terminal 
