using Gtk;
using Adw;

public class BlueTestApp : Adw.Application {
    public BlueTestApp () {
        Object (application_id: "org.gnome.Example",
                flags: ApplicationFlags.FLAGS_NONE);
    }

    protected override void activate () {
        Adw.init();                // важно для стилей/темы Adwaita
        var win = new MainWindow(this);
        win.present();
    }
}

int main (string[] args) {
    return new BlueTestApp().run(args);
}

