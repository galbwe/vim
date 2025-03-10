# script that creates a backup of
import os
import glob
import shutil
from datetime import datetime, timezone
from pathlib import Path

if __name__ == "__main__":
    home_dir = Path.home()
    vimrc_filename = ".vimrc"

    # if the vimrc file exists in the home directory, create a backup
    filepath = os.path.join(home_dir, vimrc_filename)
    if os.path.isfile(filepath):
        ts = int(datetime.utcnow().timestamp())
        copy_filename = f".vimrc.bak.{ts}"
        dest_filepath = os.path.join(home_dir, copy_filename)
        shutil.copyfile(filepath, dest_filepath)

        # copy the vimrc file from this repo to the vimrc file in the home directory
        repo_file = "vimrc"
        repo_dir = Path.cwd()
        repo_vimrc_filepath = os.path.join(repo_dir, repo_file)
        shutil.copyfile(repo_file, filepath)

        # clean up extra backups if there are more than 10
        pattern = ".vimrc.bak.*"
        backup_files = glob.glob(os.path.join(home_dir, pattern))
        if len(backup_files) > 10:
            sorted_files = sorted(backup_files, reverse=True)
            for file in sorted_files[10:]:
                Path(file).unlink()

