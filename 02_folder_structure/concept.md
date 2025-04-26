# Linux File System Structure

## Main Directories

| Directory   | Description                                                                                     |
|-------------|-------------------------------------------------------------------------------------------------|
| `/`         | Primary hierarchy root and root directory of the entire file system hierarchy.                 |
| `/bin`      | Essential command binaries for all users (e.g., `cat`, `ls`, `cp`).                            |
| `/boot`     | Boot loader files (e.g., kernels, `initrd`).                                                   |
| `/dev`      | Device files (e.g., `/dev/null`, `/dev/disk0`, `/dev/sda1`, `/dev/tty`, `/dev/random`).         |
| `/etc`      | Host-specific system-wide configuration files.                                                 |
| `/home`     | Users' home directories, containing saved files and personal settings.                         |
| `/lib`      | Libraries essential for the binaries in `/bin` and `/sbin`.                                    |
| `/mnt`      | Temporarily mounted filesystems.                                                               |
| `/media`    | Mount points for removable media such as CD-ROMs.                                              |
| `/opt`      | Add-on application software packages.                                                          |
| `/proc`     | Virtual filesystem providing process and kernel information as files.                          |
| `/root`     | Home directory for the root user.                                                              |
| `/run`      | Run-time variable data (e.g., information about running daemons, logged-in users).             |
| `/sbin`     | Essential system binaries (e.g., `fsck`, `init`, `route`).                                     |
| `/srv`      | Site-specific data served by this system (e.g., web server data, FTP data).                    |
| `/sys`      | Information about devices, drivers, and kernel features.                                       |
| `/tmp`      | Temporary files, often not preserved between system reboots.                                   |
| `/usr`      | Secondary hierarchy for read-only user data; contains most multi-user utilities and applications. |
| `/var`      | Variable files, such as logs, caches, and spool files.                                         |

## Subdirectories under `/etc`

| Directory      | Description                                                                                   |
|----------------|-----------------------------------------------------------------------------------------------|
| `/etc/opt`     | Configuration files for add-on packages stored in `/opt`.                                    |
| `/etc/sgml`    | Configuration files for SGML processing software.                                            |
| `/etc/X11`     | Configuration files for the X Window System, version 11.                                     |
| `/etc/xml`     | Configuration files for XML processing software.                                             |

## Subdirectories under `/usr`

| Directory          | Description                                                                                 |
|--------------------|---------------------------------------------------------------------------------------------|
| `/usr/bin`         | Non-essential command binaries (not needed in single-user mode).                           |
| `/usr/include`     | Standard include files.                                                                     |
| `/usr/lib`         | Libraries for the binaries in `/usr/bin` and `/usr/sbin`.                                   |
| `/usr/libexec`     | Binaries run by other programs, not meant for direct execution by users (optional).         |
| `/usr/local`       | Tertiary hierarchy for local data specific to this host. Contains subdirectories like `bin`, `lib`, etc. |
| `/usr/sbin`        | Non-essential system binaries (e.g., daemons for network services).                         |
| `/usr/share`       | Architecture-independent data.                                                              |
| `/usr/src`         | Source code (e.g., kernel source code and headers).                                         |
| `/usr/X11R6`       | X Window System, Version 11, Release 6 (optional, up to FHS-2.3).                           |

## Subdirectories under `/var`

| Directory         | Description                                                                                 |
|-------------------|---------------------------------------------------------------------------------------------|
| `/var/cache`      | Application cache data.                                                                     |
| `/var/lib`        | Persistent state information (e.g., databases, packaging metadata).                         |
| `/var/lock`       | Lock files tracking resources in use.                                                       |
| `/var/log`        | Log files (e.g., system logs).                                                              |
| `/var/mail`       | Mailbox files (may also be located in `/var/spool/mail`).                                   |
| `/var/opt`        | Variable data for add-on packages stored in `/opt`.                                         |
| `/var/run`        | Run-time system information since the last boot (replaced by `/run` in FHS 3.0).            |
| `/var/spool`      | Spool for tasks waiting to be processed (e.g., print queues).                               |
| `/var/tmp`        | Temporary files to be preserved between reboots.                                            |

## Notes
- `/var/run` has been replaced by `/run` in FHS 3.0. Systems should provide a symbolic link for backward compatibility.
- `/var/spool/mail` is a deprecated location for users' mailboxes.
