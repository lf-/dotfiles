(define (script-fu-quicksave-selection
            image
            drawable
            images-dir
            filename-prefix
        )
  (define (find-filename-for images-dir filename-prefix count)
    (let* (
        (filename (string-append images-dir "/" filename-prefix (number->string count) ".tif"))
      )
      (if (file-exists? filename)
        (find-filename-for images-dir filename-prefix (+ count 1))
        filename
      )
    )
  )
  (let*
    (
     (new-img 0)
     (filename (find-filename-for images-dir filename-prefix 1))
    )
    (gimp-context-push)
    (gimp-context-set-defaults)
    (gimp-image-undo-disable image)

    ; the gist of how we are doing this is that we are pasting into a new image
    ; and then immediately yeeting it into a file.

    ; comparing to TRUE (1) instead of #t
    (if (= (car (gimp-selection-is-empty image)) TRUE)
      (
        ; empty selection, fill from entire image (though this seems kinda sus
        ; but whatever)
        (gimp-image-select-item image CHANNEL-OP-REPLACE drawable)
      )
      ()
    )

    ; have a selection, copy it!
    (gimp-edit-copy drawable)

    ; new image!
    (set! new-img (car (gimp-edit-paste-as-new-image)))

    (file-tiff-save
      RUN-NONINTERACTIVE
      new-img
      (car (gimp-image-get-active-drawable new-img))
      filename
      filename
      ; LZW
      1
    )

    (gimp-image-undo-enable image)
    (gimp-context-pop)
  )
)

(script-fu-register "script-fu-quicksave-selection"
    "Quic_ksave Selection..."
    "Save the selection into a directory as a TIFF file, say, for chopping up film strips"
    "Jade Lovelace"
    "Jade Lovelace"
    "October 22, 2024"
    ""
    SF-IMAGE "Image" 0
    ; Presumably the selection?
    SF-DRAWABLE "Drawable" 0
    SF-DIRNAME "Images directory" "/tmp/test"
    SF-STRING "Filename prefix, e.g. uko800_" "uko800_"
)

(script-fu-menu-register "script-fu-quicksave-selection" "<Image>/File")
