import "../stylesheets/application"

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")
import "bootstrap"

import 'bootstrap/js/src/tooltip'
import 'bootstrap/js/src/alert'

import './main'

window.$ = window.jQuery = $ // make $ available in console for debugging


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
