(defsystem "CavemanProject-test"
  :defsystem-depends-on ("prove-asdf")
  :author "Paul Truesdell, II"
  :license ""
  :depends-on ("CavemanProject"
               "prove")
  :components ((:module "tests"
                :components
                ((:test-file "CavemanProject"))))
  :description "Test system for CavemanProject"
  :perform (test-op (op c) (symbol-call :prove-asdf :run-test-system c)))
