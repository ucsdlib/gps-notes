# OSF Demo for GPS 2017

##### Lesson adapted from:
Jolene Esposito OSF-Curriculum

csoderberg OSF-Curriculum

# Lesson 2: Setting up a collaborative space

Learning objectives:

* Understand how to set up a centralized location for project storage/management.

* Understand the purpose and use of the wiki.

* Understand how the different ways folders and components can be used to organize a project.


## Materials Overview

## ***Activity***
**download materials from [OSF Github repo]**

## Creating a project
* We talked before about the problems that can arise when we either don’t document work, or we try and go and back document work once a study is accepted for publication. This becomes even more challenging when you have multiple collaborators, especially if they are at different institutions, and you have been sending materials back and forth by email.

* What you’ll often end up with is a very distribute network of materials, so you’ll have some things on your computer, some things in dropbox, a bunch of different version of some things going back and forth in various email threads.

* Collaborators perhaps getting out of version sync with each other…this makes it very difficult to try and go back and recreate the workflow or find particular files.

* to solve some of these problems, we’re going to set up a collaborate space for our research study using the OSF to help document and organize our research all in one place for everyone involved in the project.

* Now that you’re all signed in, you should be all be seeing the **project dashboard**.

* A **project** on the site can be anything: a lab group, an organization, a grant, a line of research, an individual experiment, etc.

## ***Activity***
Since we don’t have any projects yet, and we’re only going to be working on one research project, lets just **create a project for that one study.**

* Select a person in your group to create a project.

* click on the **create project** button, and give the project whatever name you like.

You can also give it a short description if you want, but you don’t have to.

* create the project

As the project creator, you should now be seeing something that looks similar to my screen.

* This is the **project overview** page.

Any project you create on the site will start out basically looking like this, and then you can customize it to fit the needs of that particular project or workflow.

The **project overview** page has a few different sections.

* **wiki** is a collaborative editing space that you can use to include important overview information about the project, things like READMEs, abstracts, research questions, outlines, etc.

* **file tree** is how you upload and navigate to files to the system; you can upload basically any type of file that you want, everything from CSVs to word documents, to power points, to image and video files.

* **Component** section is how you add additional structure and nesting to your project

* **citation widget**, which shows you the automatically generated citation for the project

* **GUID** the little 5 letter string at the end of the osf.io url.  This **entire address is a GUID, or a permanent, unique identifier.** This address has been assigned to this project page and will point back to it unless the project is deleted.

## ***Discussion***
**Question: What are collaborators/contributors seeing after typing in GUID of the project the administrator created?**

**Answer:** You should be seeing a screen telling you that you don’t have access to the project.

That’s because all projects on the OSF are set to **private** as a default.
* The administrator/creator is the only contributor on the project because they created it.

* This means that only people who have been added as **contributors** to the project have access to it and can see and/or edit it.


## ***Activity***
Since we want this to be a **collaborative project**, we need to **give the other two members of your teams access to the project.**

* go up to the **contributors tab** and click on that, this is how you can add people as contributors.

In this section each person is given a permission setting for access to the project.

There are three possible settings:
  * **admin** - administrator can do anything to the project and files.  Including changing permissions.

  * **read/write** - have additional capabilities to add and modify files, but they can’t change any of the settings on the project (so for example they can’t add new contributors or change the privacy settings on the project).

  * **read** - contributor can see into the project and can download any files they want, but they will not be able to add any files or modify any content.

## ***Activity***
**add contributors/collaborators to your project.**

* You can decide what level of access you want to give them, but keep in mind that later on both are going to need the ability to upload files.

* Contributors - try the GUID again, you should now be able to see the project page.

* check to make sure everyone is seeing their project page.

* go back to the project overview page.

Notice that all three people are listed as contributors on the project, and that they are all now also listed in the auto generated citation for the project.

## ***Tip***
If for some reason you wanted to give someone access to the project but did not want to give them authorship credit, just acknowledgements, you can do this by going back to the **sharing screen** and **unchecking** the **bibliographic contributor** box next to that person’s name.


# Creating a wiki

Now that you have a project and everyone has access, the first thing to do is start to write down a bit of information about the project, like why we’re doing the project, what our initial research question is, etc.

By documenting this upfront, it will be very easy for us to always go back and see how the project started out, as it evolves over the course of the research lifecycle.

In the OSF, a good place to put this type of information is in the **wiki**.

* **wiki** - a real time collaborative editor, so your whole team can work on it at once. It also can be formatted using markdown if you want to get fancy.

You get into the **wiki** by **clicking on the widget**, and then click on the **edit** button in the upper right to open up the editor.

## ***Activity***
**Create wiki with a Research Question and hypothesis.**

* Take a minute to set up a wiki for the project.

* Discuss amongst your group what you are interested in looking at in the dataset I given to you.

* Then collaboratively enter your research question and hypotheses, if you have them, into the wiki.

# Adding organizational structure
Right now our project is pretty flat. It is basically just one big folder with a wiki with some basic content in it.

For most projects, we’ll want to add some structure.

We can add sections to organize related files, for example we might want to organize all our data files together and separate those from files related to protocols or study materials.

You can do this in two ways on the OSF depending on your preference.

**First Way - Components:**
* The primary way to add structure to a project is to add **components**.

* You do this by clicking the **add component** button on the right of the screen.

You can name the component whatever you want (materials, data, protocol, IRB, etc.) and you can also give it a category.

Once the component is created, we can go into it and see that the inside of all components looks just like an empty project; they have their own file trees, wikis, contributor lists, and privacy settings.

**Second Way: - Folders**

**Folders** are another organization option that function a bit differently.
* A folder is literally just a way to group a set of files, nothing more.

* Click on the OSF storage icon and you will notice a **create folder** button will appear.

* A folder will appear which he can then name whatever we want.

**Folders are just about organizing files together**, while **components** are good for setting up large sections of a project.


### Folder organization using the **TIER Protocol 3.0**
One good example of folder organization is adding the **TIER Protocol 3.0** folder structure to the project.  

The TIER Protocol (Teaching Integrity in Empirical Research) provides guidance to students conducting quantitative research to help ensure that their work is transparent and reproducible.

The Specifications of the TIER Protocol give a complete description of the replication documentation that should be preserved with your study when you have finished the project.

This documentation includes:

* The data used for the project.

* Command files, containing code written for your software, that clean and prepare the data as necessary, and then execute the procedures that generate the results reported in your study.

* Various forms of supporting information to help a user understand and make use of your documentation.

http://www.projecttier.org/tier-protocol/specifications/

# ***Tip***
You can also nest components within components.

This allows you to set up areas that have different privacy settings or contributor lists from other sections in the project, which can be important for having fine grained control over access to different parts of a project.


## ***Activity***
**Create project structure using folders/components**

Set up some initial structure for your project.

Think through what are the major categories of file types you’ll have, and whether you might want to have different contributors or public vs. private access setting for them to determine whether you want to set them up as folders or components.

* Use the TIER Protocol 3.0 folder structure.

* Or experiment with setting up components.


# Add-ons

The last thing we’re going to do for this lesson is to add some background literature to the project.

we’re going to take advantage of the OSFs add-on capabilities.

* Add-ons allow you to connect third party services to the OSF so you can continue to use the tools that you like, but connect them so that you, your collaborators, and readers of your work, only have to go to one place to find all aspects of your project.

* If you go to the **settings** page of your project you can see the different add-ons that are available.

***Activity***
**Using one of the storage add-ons.**

I’m going to show it with Google Drive, but if you don’t have a Drive account you can use Box or anything on the list.

* find the files we shared for this lesson.

* Log into into your chosen storage account and create a folder called **demo project** and then upload the files to that folder.

* Now, go to your **OSF project and create a new component** for the files just uploaded.

We don’t have to put the add-on in it’s own component, but this will allow us to keep these PDFs private if we decide we want to make the rest of the project public.

* When you’re inside the new **project component**, go to the **settings tab** and check the Google Drive add-on, or whichever one you are going to use.

This will bring up some information on exactly how this add-on will function.

* Click **confirm**, and then click **apply** below the list of add-ons.

You will then be asked to connect your account.

You’ll be taken to Google Drive where you will have to input your username and password, and will then be asked to allow OSF access to your Google Drive.

* Back at the OSF, you’ll now see a list of all your Google Drive folders in your project.

* **Select whichever folder you want to connect** to your project and click **save.**

* Go back to your project and you will see that the files appear within the demo project component.

What this has done is create a two-way door between the OSF and Google Drive.

Any changes we make to that Google Drive folder will show up in our project, and any changes we make to the materials from the OSF will show up in Google Drive.
