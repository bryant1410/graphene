;;; graphene.el --- Newbie-friendly defaults
;;
;; Copyright (c) @YEAR Robert Dallas Gray
;;
;; Author: Robert Dallas Gray <mail@robertdallasgray.com>
;; URL: https://github.com/rdallasgray/graphene
;; Version: @VERSION
;; Keywords: defaults

;; This file is not part of GNU Emacs.

;;; Commentary:

;@COMMENTARY

;;; License:

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Code:

(eval-after-load 'graphene-look
  '(let ((sys
         (cond ((eq system-type 'darwin) "osx")
               ((eq system-type 'gnu/linux) "linux")
               ((eq system-type 'windows-nt) "windows")
               (t "other"))))
    (require (intern (format "graphene-%s-defaults" sys)))))


  (defgroup graphene nil
    "Graphene custom settings."
    :group 'environment)

  (defcustom graphene-speedbar-auto t
    "Whether graphene should open sr-speedbar when a project is loaded."
    :type 'boolean
    :group 'graphene)

  (defcustom graphene-project-pin-speedbar t
    "Pin the speedbar directory when opening a project."
    :type 'boolean
    :group 'graphene)

  (defcustom graphene-linum-auto t
    "Whether graphene should enable line numbers with prog-modes."
    :type 'boolean
    :group 'graphene)

  (defcustom graphene-autopair-auto t
    "Whether graphene should enable pair matching with prog-modes."
    :type 'boolean
    :group 'graphene)

  (defcustom graphene-autocomplete-auto t
    "Whether graphene should enable autocomplete with prog-modes."
    :type 'boolean
    :group 'graphene)

  (defcustom graphene-parens-auto t
    "Whether graphene should show matching pairs with prog-modes."
    :type 'boolean
    :group 'graphene)

  (defcustom graphene-errors-auto t
    "Whether graphene should highlight errors with prog-modes."
    :type 'boolean
    :group 'graphene)

  (defcustom graphene-prog-mode-hooks
    '(prog-mode-hook
      csharp-mode-hook
      coffee-mode-hook
      css-mode-hook
      sgml-mode-hook
      html-mode-hook)
    "List of hooks to be treated as prog-mode."
    :type 'sexp
    :group 'graphene)

  (defcustom graphene-speedbar-refresh-hooks '(after-save-hook)
    "List of hooks which on being run will cause speedbar to refresh."
    :type 'sexp
    :group 'graphene)

  (defcustom graphene-default-font nil
    "The universal default font."
    :type 'string
    :group 'graphene)

  (defcustom graphene-variable-pitch-font nil
    "The font to use in the variable-pitch face."
    :type 'string
    :group 'graphene)

  (defcustom graphene-fixed-pitch-font nil
    "The font to use in the fixed-pitch face."
    :type 'string
    :group 'graphene)

  (defvar graphene-prog-mode-hook nil
    "A hook to be run on entering a de facto prog mode.")

(require 'graphene-helper-functions)
(require 'graphene-editing)
(require 'graphene-env)
(require 'graphene-speedbar)
(require 'graphene-projects)
(require 'graphene-keys)
(require 'graphene-look)

(provide 'graphene)
