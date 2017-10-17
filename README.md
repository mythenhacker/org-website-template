# org-website-template
Template for website with org-mode with stylesheets and multiple file hierarchy.

## Installation

In ~ do

    git clone https://github.com/mythenhacker/org-website-template.git

Open file "\~/org-website-template/org-publish.el" with Emacs and insert its contents into your "\~/.emacs.d/init.el". Then restart Emacs or reload configuration with

    M-x eval-buffer

when init.el loaded.

## Usage

Open file "~/org-website-template/org-files/index.org" in Emacs. Then do

    M-x org-publish RET org-website-template RET

Open file "~/org-website-template/public_html/index.html" in browser.

When clicking the links in index.html, all pages will use the correct stylesheet in "~/org-website-template/public_html/css/stylesheet.css"

To rebuild, change something in any .org-file, then do

    M-x org-publish RET org-website-template RET
