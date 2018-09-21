;;; Compiled snippets and support files for `php-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'php-mode
		     '(("while" "while (${condition}) {\n   $0\n}\n" "while (...) {...}" nil nil nil "/home/arnaud/emacsconfig_2/.emacs.d/snippets/php-mode/while" nil nil)
		       ("switch" "switch (${on}) {\n  $0\n  default:\n}" "switch (...) {...}" nil nil nil "/home/arnaud/emacsconfig_2/.emacs.d/snippets/php-mode/switch" nil nil)
		       ("substr" "substr(${string $string}, ${int $start}${[, int $length ]} )" "substr" nil nil nil "/home/arnaud/emacsconfig_2/.emacs.d/snippets/php-mode/substr" nil nil)
		       ("print_r" "print_r(${variable})" "print_r (...)" nil nil nil "/home/arnaud/emacsconfig_2/.emacs.d/snippets/php-mode/print_r" nil nil)
		       ("in_array" "in_array(${mixed $needle}, ${array $haystack}${[, bool $strict = FALSE ]})" "in_array(..., ..., ...)" nil nil nil "/home/arnaud/emacsconfig_2/.emacs.d/snippets/php-mode/in_array" nil nil)
		       ("ifelse" "if(${condition}){\n    ${// qu'est ce qui se passe ici ?}\n}\nelse{\n    $0\n}" "if (...) {...} else { ... }" nil nil nil "/home/arnaud/emacsconfig_2/.emacs.d/snippets/php-mode/ifelse" nil nil)
		       ("if" "if(${condition}){\n    $0\n}" "if" nil nil nil "/home/arnaud/emacsconfig_2/.emacs.d/snippets/php-mode/if" nil nil)
		       ("function" "function ${function_name}(${$args}){\n    $0\n}" "function (...) {...}" nil nil nil "/home/arnaud/emacsconfig_2/.emacs.d/snippets/php-mode/function" nil nil)
		       ("foreach" "foreach (${$variable} as ${$key} => ${$value}) {\n    $0\n}" "foreach (...) {...}" nil nil nil "/home/arnaud/emacsconfig_2/.emacs.d/snippets/php-mode/foreach" nil nil)
		       ("for" "for (${initial}; ${condition}; ${next}) {\n   $0\n}\n" "for (...) {...}" nil nil nil "/home/arnaud/emacsconfig_2/.emacs.d/snippets/php-mode/for" nil nil)
		       ("elseif" "elseif(${condition}){\n    $0\n}\n" "elseif (...) {...}" nil nil nil "/home/arnaud/emacsconfig_2/.emacs.d/snippets/php-mode/elseif" nil nil)
		       ("case" "case ${condition}:\n  $0\n  break;\n" "case ...: ... break;" nil nil nil "/home/arnaud/emacsconfig_2/.emacs.d/snippets/php-mode/case" nil nil)
		       ("arraykv" "array(\n    '$1' => '$2'\n)" "arraykv" nil nil nil "/home/arnaud/emacsconfig_2/.emacs.d/snippets/php-mode/arraykv" nil nil)
		       ("=>" "'$1' => '$2',\n" "=>" nil nil nil "/home/arnaud/emacsconfig_2/.emacs.d/snippets/php-mode/=>" nil nil)))


;;; Do not edit! File generated at Fri Sep 21 23:10:08 2018
