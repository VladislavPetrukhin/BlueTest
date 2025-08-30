using Gtk;
using Adw;

[GtkTemplate (ui = "/org/gnome/Example/data/ui/compiled/main_window.ui")]
public class MainWindow : Adw.ApplicationWindow {
    [GtkChild] private unowned Adw.ToolbarView toolbar_view;

    public MainWindow (Adw.Application app) {
        Object (application: app);

        // Создаём HeaderBar и добавляем его сверху программно
        var hb = new Adw.HeaderBar ();
        hb.set_title_widget (new Adw.WindowTitle ("BlueTest", "Hello, Libadwaita + Blueprint"));

        toolbar_view.add_top_bar (hb);
    }
}

