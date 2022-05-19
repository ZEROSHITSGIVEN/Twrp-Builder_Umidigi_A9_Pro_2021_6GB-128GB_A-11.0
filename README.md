# Recovery Builder using Github Actions #

## What this is ##
--------------------------------------------------------------------------------------------
This script allows you to build your custom recovery without a pc and only using your phone. 

This works with GitHub actions, thank GitHub not me : )

### How to use ###

Here are some useful notes.

1. Fork the repo.

2. Go to actions tab, enable workflows.

3. Go to Settings, then select Deploy keys and select "Add deploy key" button.

4. On your android device, install [Termux](https://github.com/termux/termux-app/releases)

5. Install openssh in Termux and generate ssh keys. (Do not use passphrase for keys)
```
pkg install openssh
ssh-keygen -t ed25519
```
6. Add the keys to your repo. In Termux, use the following commands:
```
cd /data/data/com.termux/files/usr/etc/ssh
cat ssh_host_ed25519_key.pub
```
  Select and copy the key then paste in the box for Key.
  You can name it whatever you choose for the title.

7. Now to add your private ssh key. Back in Termux:
```
cat ssh_host_ed25519_key
```
   Copy the output from Termux.

   In your browser, select *Secrets* under the Security tab.
   Select Actions
   Select New repository secret
   For the New secret name, it should be SSH_PRIVATE_KEY
   Paste the output from ssh_host_ed25519_key into the Value box.
   Then select Add secret.

8. Now we are ready to add the device tree and set the manifests.

   From your cloned repo, navigate to .github/workflows/recovery.yml and select *edit this file*.
   
   Beginning on [line 16](https://github.com/klabit87/Recovery-Builder/blob/adb0b4b5323986185430c52c2642fb34cb87bbf9/.github/workflows/recovery.yml#L16), you must change MANIFEST, DEVICE, DT_LINK, DT_PATH, TARGET, and OUTPUT to accommodate your device.

8. Go to Actions tab again, click Building recovery, select Run workflow, then select run workflow again.

9. After few mins the script will begin.
   Building recovery will take about 1-1.5 hr.

10. Once it is complete, go back to your repo, select *Actions* then select the successful workflow run indicated by the green checkmark.
    At the bottom of the page you will see a file linked called *my-artifact*.
    Download the file then unzip it and you should have your recovery.img or boot.img.


#### Credits ####

Script Made by [Aryan Sinha](https://github.com/techyminati)

Forked from [AndVer0](https://github.com/AndVer0)

Modified by [klabit87](https://github.com/klabit87)

Thanks Github For Running this on Github Actions



Note: I do not encourage misuse of Github Actions! Thanks
