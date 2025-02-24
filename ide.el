;;; Package --- Summary
;;; Commentary:
;;; It sets cmake-ide variables

;;; Code:
(let-alist projects
  (if (eq .FFJSON 't)
      (progn (message "FFJSON already loaded"))
    (progn
      (setq projects '((FFJSON . 't)))
      (setq CMakeProject "FFJSON")

      (setq cmake-ide-build-dir
            (concat ide-project-dir
                    "/build/Linux/x86_64/debug/"))
      (setq cmake-ide-build-pool-dir cmake-ide-build-dir)
      (make-directory cmake-ide-build-dir t)
      (setq cmake-ide-cmake-args
            (concat "-D_DEBUG=1 -DCMAKE_BUILD_TYPE=Debug "
	                 "-DCMAKE_EXPORT_COMPILE_COMMANDS=1 "
                    "-DBUILD_TESTING=1"))
      (setq MakeThreadCount 6)
      (setq DebugTarget "TestFFJSON")
      (setq TargetArguments "")
      (message "FFJSON emacs project loaded."))))

(provide 'FFJSON)
;;; ide.el ends here
