bluetest_sources = [
  'main.vala',
  'application.vala',
  'window.vala',
]

bluetest_deps = [
  config_dep,
  dependency('gtk4'),
  dependency('libadwaita-1', version: '>= 1.4'),
]

bluetest_sources += gnome.compile_resources('bluetest-resources',
  'bluetest.gresource.xml',
  c_name: 'bluetest'
)

executable('bluetest', bluetest_sources,
  dependencies: bluetest_deps,
  include_directories: config_inc,
       install: true,
)
