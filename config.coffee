exports.config =
  # See docs at http://brunch.readthedocs.org/en/latest/config.html.
  conventions:
    assets:  /^app\/assets\//
  modules:
    definition: false
    wrapper: false
  paths:
    public: '_public'
  files:
    javascripts:
      joinTo:
        'js/app.js': /^app\//

    stylesheets:
      joinTo:
        'css/app.css': /^app\/styles\//

  server:
    port: 3344
    path: 'server.coffee'
