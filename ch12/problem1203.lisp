(Defmacro when-nil (trigger result)
  `(when (not ,trigger) ,result))
