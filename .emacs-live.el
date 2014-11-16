;; Load core packs
(live-use-packs '(stable/foundation-pack
                  stable/lang-pack
                  stable/git-pack
                  stable/power-pack
                  stable/org-pack
                  stable/clojure-pack
                  stable/bindings-pack))

;; Load custom packs
(live-add-packs '(~/.live-packs/install-packages-pack))
(live-add-packs '(~/.live-packs/aaa-pack))
(live-add-packs '(~/.live-packs/ruby-pack))
