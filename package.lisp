(defpackage :closette
  (:use :cl)
  (:shadow :standard-class
           :standard-object
           :slot-value
           :slot-boundp
           :slot-makunbound
           :slot-exists-p
           :class-of
           :class-name
           :defclass
           :find-class
           :method-qualifiers
           :defgeneric
           :ensure-generic-function
           :defmethod
           :add-method
           :remove-method
           :find-method
           :print-object
           :allocate-instance
           :make-instance
           :initialize-instance
           :reinitialize-instance
           :shared-initialize
           :change-class
           :update-instance-for-different-class
           :describe-object
           )
  (:export .
           (defclass defgeneric defmethod
             find-class class-of
             call-next-method next-method-p
          slot-value slot-boundp slot-exists-p slot-makunbound
          make-instance change-class
          initialize-instance reinitialize-instance shared-initialize
          update-instance-for-different-class
          print-object

          standard-object
          standard-class standard-generic-function standard-method
          class-name

          class-direct-superclasses class-direct-slots
          class-precedence-list class-slots class-direct-subclasses
          class-direct-methods
          generic-function-name generic-function-lambda-list
          generic-function-methods generic-function-discriminating-function
          generic-function-method-class
          method-lambda-list method-qualifiers method-specializers method-body
          method-environment method-generic-function method-function
          slot-definition-name slot-definition-initfunction
          slot-definition-initform slot-definition-initargs
          slot-definition-readers slot-definition-writers
          slot-definition-allocation
          ;;
          ;; Class-related metaobject protocol
          ;;
          compute-class-precedence-list compute-slots
          compute-effective-slot-definition
          finalize-inheritance allocate-instance
          slot-value-using-class slot-boundp-using-class
          slot-exists-p-using-class slot-makunbound-using-class
          ;;
          ;; Generic function related metaobject protocol
          ;;
          compute-discriminating-function
          compute-applicable-methods-using-classes method-more-specific-p
          compute-effective-method-function compute-method-function
          apply-methods apply-method
          find-generic-function  ; Necessary artifact of this implementation
          )))
;;; eof