(defun make-matrix (rows columns &optional initial)
  "Create a ROWS by COLUMNS matrix."
  (let ((result (make-vector rows nil))
        (y 0))
    (while (< y rows)
      (aset result y (make-vector columns initial))
      (setq y (+ y 1)))
      result))

(defun matrix-set (matrix row column elt)
  "Given a MATRIX, ROW, and COLUMN, put element ELT there."
  (let ((a (aref matrix row)))
    (aset a column elt)))

(defun matrix-ref (matrix row column)
  "Get the element of MATRIX at ROW and COLUMN."
  (let ((a (aref matrix row)))
    (aref a column)
    )
  )

(defun matrix-columns (matrix)
  "Get number of columns in matrix"
  (length (aref matrix 0)))

(defun matrix-rows (matrix)
  "Get number of rows in matrix"
  (length matrix)
  )

;; (defun make-crossword (size)
;;   "Make a crossword grid with SIZE rows and columns."
;;   (if (zerop (% size 2))
;;              (error "make-crossword: size must be odd."))
;;   (if (< size 3)
;;       (error "make-crossword: size must be 3 or greate."))
;;   (make-matrix size size nil))
