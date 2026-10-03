LED COLOR STUDIO - EASIEST WAY TO BUILD (no installs, ~3 minutes)
=================================================================
1. Make a free account at github.com and click "New repository".
   Name it anything, set it to Public, click "Create repository".
2. Click "uploading an existing file". Drag in the CONTENTS of this
   folder: the "source" folder, "Makefile", and the ".github" folder.
   (If .github is hidden on your computer, see step 2b.)
   Click "Commit changes".
2b. If .github didn't upload: click "Add file" > "Create new file",
   type  .github/workflows/build.yml  as the name, paste the contents
   of build.yml from this folder, and commit.
3. Click the "Actions" tab. A build starts automatically (about 1 min).
   Wait for the green checkmark.
4. Click the finished run, scroll to "Artifacts", download
   "LED-Color-Studio". Unzip it to get ledcolor.3dsx.

INSTALL ON YOUR 3DS
===================
Copy ledcolor.3dsx to the  /3ds/  folder on your SD card.
Open the Homebrew Launcher and start "LED Color Studio".
(Needs custom firmware like Luma3DS + Homebrew Launcher.)

OPTIONAL: BUILD ON YOUR OWN PC
==============================
Install devkitPro (https://devkitpro.org/wiki/Getting_Started), choose
the 3DS development group, open its terminal in this folder, run: make
