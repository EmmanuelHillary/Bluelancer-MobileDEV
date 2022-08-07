# Bluelancer-MobileDEV

## Contribution Guide (Example)

### Fork this repository
This creates a copy of this repository and saves it to your own personal Github account

![scr1](https://raw.githubusercontent.com/EmmanuelHillary/Bluelancer-Frontend/main/readme/Screenshot%20(24)_LI.jpg)

You can name the fork whatever you want, it does not affect this repository.
Then click on Create fork

![scr3](https://raw.githubusercontent.com/EmmanuelHillary/Bluelancer-Frontend/main/readme/Screenshot%20(46)_LI.jpg)

### Clone to your PC
Once the fork has been created in your account, clone the forked repository to your local machine or PC by following the steps below:
1. Select the Code dropdown
2. Copy the link

![scr4](https://raw.githubusercontent.com/EmmanuelHillary/Bluelancer-Frontend/main/readme/Screenshot%20(47)_LI.jpg)

3. If you're using Github Desktop, skip to Step 4, for CMD or any other terminal, run the following in the directory of your choice:
    * ``` git clone [the-link-you-just-copied] [name-the-repo-or-leave-this-blank] ```
    
    ![image](https://raw.githubusercontent.com/EmmanuelHillary/Bluelancer-Frontend/main/readme/Screenshot%20(48).png)

4. For Github Desktop
    * Open your Github Desktop app
    * Click File (it's by the top-right corner)
    * Select the 'Clone repository' option
    
    ![scr5](https://raw.githubusercontent.com/EmmanuelHillary/Bluelancer-Frontend/main/readme/Screenshot%20(49)_LI.jpg)
    
    * From the list of available repositories, select the one that is in this format [your-github-username]/[the-forked-repo-you-are-cloning].
    * Please do not select the MAIN/Original repository.
    
    ![scr6-wrong](https://raw.githubusercontent.com/EmmanuelHillary/Bluelancer-Frontend/main/readme/Screenshot%20(50)_LI.jpg)
    
    * Only select the forked repository that exists in your account.
    * Choose where to store it on your system and then click 'Clone'.
    
    ![scr6-correct](https://raw.githubusercontent.com/EmmanuelHillary/Bluelancer-Frontend/main/readme/Screenshot%20(52)_LI.jpg)
    
    * A pop-up should appear. Then select the option below
    
    ![scr7](https://raw.githubusercontent.com/EmmanuelHillary/Bluelancer-Frontend/main/readme/Screenshot%20(53)_LI.jpg)
    
### Awesome 👍. You just created a fork and clone it to your PC.

### Next: Adding your contributions
Navigate to location where you cloned the repository and open it.<br/>
<span style="color: red">NOTE: the repository folder might already contain contributions (folders) from other members of the team</br>
Please do not edit or delete them, kindly follow the next step below to know how to add your contribution.</span></br>
After successfully forking and cloning the repository, you now need to add the files you just created.</br>
In other for the repository to be easily accessible by others, we have decided that each contribution should be in </br>
form of a folder and the name of the folder should be a brief description of what you worked on e.g landing_page, <br/> navigation_bar, footer_section etc. <br/>
Inside the folder you created, you should then add the files (HTML and/or CSS) for the part you worked on.</br>

![scr8](https://raw.githubusercontent.com/EmmanuelHillary/Bluelancer-Frontend/main/readme/Screenshot%20(54)_LI.jpg)
![image](https://raw.githubusercontent.com/EmmanuelHillary/Bluelancer-Frontend/main/readme/Screenshot%20(55).png)

### Commit your changes and push to Github
To commit and push your contribution, follow the steps below:
1. If you're using Github Desktop, skip to Step 2. For CMD, do the following:
    * Navigate to the base directory of the repo and not your folder directory

    ![image](https://raw.githubusercontent.com/EmmanuelHillary/Bluelancer-Frontend/main/readme/Screenshot%20(56)_LI.jpg)
    ![image](https://raw.githubusercontent.com/EmmanuelHillary/Bluelancer-Frontend/main/readme/Screenshot%20(57).png)
    ![image](https://raw.githubusercontent.com/EmmanuelHillary/Bluelancer-Frontend/main/readme/Screenshot%20(58)_LI.jpg)

    * Then run the following commands:
        * ``` git add . ```
        * ``` git commit -m "your-commit-message" ```
        * ``` git push ```

2. For Github Desktop app, do the following:
    * select all the files you added or modified
    * add your commit message
    * click 'Commit to main'

        ![scr11](https://raw.githubusercontent.com/EmmanuelHillary/Bluelancer-Frontend/main/readme/Screenshot%20(59)_LI.jpg)

    * then click 'Push origin'

        ![scr12](https://raw.githubusercontent.com/EmmanuelHillary/Bluelancer-Frontend/main/readme/Screenshot%20(60)_LI.jpg)

Now we have our contributions pushed to our forked repository. Weldone 👍

### Creating a Pull Request (PR)
The hard part is over now, just a few more steps and we would be done with this.</br>
After successfully pushing your contribution, go to Github and open your forked <br/>
repository and you should your changes should reflect 👇 (this is just a sample)


![scr13](https://raw.githubusercontent.com/EmmanuelHillary/Bluelancer-Frontend/main/readme/Screenshot%20(61)_LI.jpg)

Next, we need to <strong>create a pull request</strong>, that is linked to the issue/task we were assigned.<br/>
<span style="color: red">NOTE: If you were not assigned any task/issue directly from the Github Projects,</br>
Please contact the team lead or administrative personnel to assign you one before creating your PR.</br>
This is very important.</span><br/>
To create a PR and link your task/issue, follow the steps:
* Select Contribute and click on 'Open Pull Request'

    ![scr14](https://raw.githubusercontent.com/EmmanuelHillary/Bluelancer-Frontend/main/readme/Screenshot%20(62)_LI.jpg)

* Make sure the following are correct:
    * a => the main repository you cloned from (zuri-training/team18_cms_frontend)
    * b => the 'main' branch of the main repository you cloned from 
    * c => your own forked repository
    * d => the 'main' branch of your owned forked repository

        ![scr15](https://raw.githubusercontent.com/EmmanuelHillary/Bluelancer-Frontend/main/readme/Screenshot%20(63)_LI.jpg)

* In the comment box, do the following:
    1. Type in 'Resolves #' and this should display a drop-down of the availbale issues.
       - From this drop-down, select the issue/task assigned to you
    3. Then click 'Create pull request'

And there you have it. You have successfully added your contribution <br/>
Kindly notify the team lead or any other administrative member to review </br>
and merge your Pull Request.</br>


