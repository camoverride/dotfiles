# branch-prompt

This terminal prompt solves a problem I constantly have: accidentally pushing to work remotes with my personal Github account, or vice-versa. After creating this prompt and associated bash aliases, I haven't had that problem.

Use branch-prompt to create a colorized terminal prompt with the name of the current branch along with the identity of your current Github profile (Home, Work, Other). Also included are aliases for quickly switching between Home and Work Github profiles.

### setup

Append `bash_profile` to your `.bashprofile` and `bashrc` to your `.bashrc`. Edit the appropriate lines to include username/email.

Edit `gitwork.sh` and `githome.sh` to include your work and home username and email. Place them in a local bin file and reference them in your `.bashrc`.

### example

<img width="519" alt="screencap" src="https://user-images.githubusercontent.com/19848374/27571877-72d04d82-5abd-11e7-864f-1d32581ce947.png">

cool!
