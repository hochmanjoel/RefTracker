const { environment } = require('@rails/webpacker')
const webpack = require('webpack')
<<<<<<< HEAD
environment.plugins.prepend('Provide',
new webpack.ProvidePlugin({
  $: 'jquery/src/jquery',
  jQuery: 'jquery/src/jquery'
=======

environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
>>>>>>> 09206d15a5bfaf49fbbeeeb930491cb02ac263c7
  })
)

module.exports = environment
