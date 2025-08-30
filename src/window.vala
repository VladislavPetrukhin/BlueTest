using Gtk;
using Adw;

[GtkTemplate (ui = "/org/gnome/Example/data/ui/compiled/main_window.ui")]
public class MainWindow : Adw.ApplicationWindow {
    public MainWindow (Adw.Application app) {
        Object (application: app);
    }
}

