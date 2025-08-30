project('bluetest', 'vala', version: '0.1.0', meson_version: '>= 0.61')

gnome = import('gnome')   # <— обязательно

app_id = 'org.gnome.Example'

gtk4_dep = dependency('gtk4', version: '>=4.12')
adw_dep  = dependency('libadwaita-1', version: '>=1.4')

# blueprint-compiler
bp = find_program('blueprint-compiler', required: true)

# Компиляция .blp -> .ui в builddir
blp_src_dir = join_paths(meson.project_source_root(), 'data', 'ui')
ui_builddir = join_paths(meson.project_build_root(), 'data', 'ui', 'compiled')

blp_files = files('data/ui/main_window.blp')

bp_targets = custom_target(
  'blueprints',
  input: blp_files,
  output: ['main_window.ui'],   # список .ui, по одному на каждый input
  command: [bp, 'batch-compile', ui_builddir, blp_src_dir, '@INPUT@'],
  build_by_default: true
)

# GResource — подключаем уже скомпилированный .ui из builddir
gresource_xml = files('src/bluetest.gresource.xml')

resources = gnome.compile_resources(
  'bluetest-resources',
  gresource_xml,
  source_dir: meson.project_build_root(),  # базовый путь для <file> в .gresource.xml
  c_name: 'bluetest',
  dependencies: bp_targets
)

src = files(
  'src/main.vala',
  'src/window.vala',
)

executable(
  'bluetest',
  src,
  resources,
  dependencies: [gtk4_dep, adw_dep],
  vala_args: [
    '--target-glib=2.74',
    '--pkg=gtk4',
    '--pkg=libadwaita-1',
  ],
  install: true
)
