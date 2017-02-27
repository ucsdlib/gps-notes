# OSF Demo for GPS 2017

##### Lesson adapted from:
Jolene Esposito OSF-Curriculum

csoderberg OSF-Curriculum


# Lesson 3: Documenting as you go

Learning objectives:

* Understand how to effectively document **during the process**
 * Uploading files
 * Version control on the OSF


* Understanding the importance of certain lifecycle points
 * Creating Registrations
 * GUIDs/DOIs

## Registrations (Overview)
There are also specific points in a projects life that may be particularly important and that we may want to freeze and always be able to go back to. For example, what the project looked like just before we started data collection (often called a pre-registration), or what the project looked like when it was accepted for publication are two points that we may want to easily be able to get back to, or easily share with others.

One way to keep track of these important points is to **create registrations**.

A **registration** creates a frozen snapshot of a project, or section of a project, that can never be deleted or changed.

 Basically, it’s a **permanent, read-only copy of that part of the project.**

### ***Lecture Note:***
 **Only show how you go about registering a project.**

 **Do not follow along** with this section, as registrations are **not reversible.**

### Demo Registrations
* First thing is to click on the **registration** tab on the top of the project.

* **Note that this will register the part of the project you’re currently in, and all components and folders nested within this part of the project.**

* There are a few different **registration templates** that you can choose from that will allow you to fill in some information about the registration you are making.

* If you are unsure, choose the **Open-ended Registration** and this will give you the ability to provide some information about why you are registering the project. This is important, as you can have multiple registrations of a project and this section will allow you to tell them apart.

* There are **two options** for how you want to release your registrations.
 * make them **public immediately**, which means anyone will be able to see them

 * you can **place an embargo** on the registration.  
   * If you choose to embargo, the project will be immediately registered, but the registration will not be made public until after the embargo date that you specify. You can embargo registrations for up to four years, but after that they must become public.

#### ***Note about Embargoes***

Why might you want to set an embargo date?

If you are doing a preregistration, and your study hasn’t happened yet, you may want to embargo the registration so that participants and/or RAs cannot discover what you’re hypotheses are in order to preserve blinding in your study. Some researchers are also afraid of being ‘scooped’ and so they may not want to release their study protocol before the study is completed. If you are doing a a registration after a study has finished, you may also need the embargo feature because the journal you submitted to may have an embargo period. All these are valid reasons, which is why we give the option of either embargoes or immediate public release for registrations.

If you choose the embargo feature, an email will be sent to all the administrators on the project, asking if they want to cancel the registration, since you can’t undo registrations or change embargo dates after the fact. **If any of the admins cancels the registration within 48 hours, the registration does not occur.** If they all either approve it, or ignore the email, the registration goes through and the embargo period is set.



### After registration is completed

A few things to notice about the registration.

* Firstly, the registration GUID is different from the projects, so you can easily use the links to send people to either the project, or the registration, whichever is more appropriate.

For this registration, I chose to make it public immediately.

Just like the actual project and registration have different GUIDs, they also have different privacy settings.

Even though the registration is public, the actual project is still private, and I can make changes to that project which non-contributors will not be able to see. Since this is a public registration, you’ll notice that you can request a DOI/ARK ID for the registration. Especially if you are registering at the end of a project, the journal you a submitting to may require a DOI, and so registering the project is the way to get a DOI for the contents.

* For embargoed registrations, once the embargo ends and they become public, you can obtain a DOI for them.

---

# Files and Version Control
Now we want to start actually working on our project.

We had previously uploaded our materials when we set up the storage, but now we need to make sure we upload our data.

You always want to **keep a copy of our complete, raw data file.** Even if we end up doing a lot of data cleaning, or only using a subset of the datafile for our analyses, we want to keep a raw, untouched version of the data file to make sure we can always create our analyses from start to finish.

---

## ***Activity***
**Upload raw data file and data dictionary.**

* Name the data file accordingly and upload it to the appropriate section of you project.

* We also want to upload the data dictionary so we’ll always know what our variable names actually mean.


---
so now we have the static version of all these different files, but in real research, things often change over time. We need a way to easily track those changes. This tracking of different versions of a file is usually called **version control**. Often times people have their own ad-hoc version control procedures which can be confusing.

Poor version control can make finding files and recreating experiments/analyses very difficult, because in a few months it may take days for you to figure out, if you can at all, exactly what protocol was used, or exactly which analysis file was used to produce the results in the paper you submitted.

We want to make sure this doesn’t happen to us.

There are some programming languages out there that are specifically built for version control, many of you may have heard of **Git and Github**, and those are great, but they can prove to be a barrier to adoption of good version control methods for people who either don’t have the time or motivation to learn how to use them.

The OSF has **built in version control** in an accessible way to help lower that barrier.


Version control on the OSF works in a few different ways.

* **For text files:** You can edit directly on the site and save the new versions. This is a possible with the wiki, and for anything that will render as a plain text file. So, if I go to the R script I uploaded, you’ll notice an ‘edit’ button in the top right corner. I can click on that, and edit this script directly on the OSF, and the edits will be saved as a new version, the same thing with the wiki.

* **For non-text files:** the procedure is a little different. You’ll open the file on your personal computer, and make any changes that you want. Then **save the file with the exact same name on your computer.** So, on your computer, you’ve just **over-written** the older version of the file. Now, go to the OSF and upload the file with the **same name to the same component**, once the file is uploaded you can click on that file and see that there are now 2 versions of the file, and you can toggle between them.

Now that I’ve shown the ways version control works on the system, I want you to edit your projects.

## ***Activity***
**update wiki to reflect analyses done & clearly comment analysis scripts**

Go into the wiki and update it so that it reflects that analyses you actually performed. One of you who didn’t run the analyses, please look at the analysis script that was uploaded, and edit it to make sure that it is clearly commented. How you do this will depend on the exact way in which the file was uploaded. If you don’t know how to comment in the particular language the analysis was done, ask the person who did the analyses.

---

## ***Activity***
**update wiki to include navigational README for the project**
The final thing we want to do is make sure that we give our future selves and, potentially, other people information about how to navigate our project.

What are our files, where can we find things, if information is missing or private, why?

 Basically, we want to create a **README** for the project.

 We’ve already done a bit of this by putting information about the research question for the project in the wiki. But, we also want to add information there, and/or in the wikis of our subcomponents about what files are there and how to navigate through the project.

---
