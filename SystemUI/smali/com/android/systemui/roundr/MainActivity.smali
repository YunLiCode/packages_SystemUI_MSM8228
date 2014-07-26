.class public Lcom/android/systemui/roundr/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field progress:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 37
    .local v1, "prefs":Landroid/content/SharedPreferences;
    sget-boolean v2, Lcom/android/systemui/roundr/BootReceiver;->boot_up:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/systemui/roundr/Corner;->running:Z

    if-eqz v2, :cond_1

    .line 38
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/systemui/roundr/SettingsActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/systemui/roundr/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 41
    .end local v0    # "i":Landroid/content/Intent;
    :cond_1
    const-string v2, "enable"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42
    const-class v2, Lcom/android/systemui/roundr/Corner;

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lwei/mark/standout/StandOutWindow;->show(Landroid/content/Context;Ljava/lang/Class;I)V

    .line 43
    const-class v2, Lcom/android/systemui/roundr/Corner;

    invoke-static {p0, v2, v4}, Lwei/mark/standout/StandOutWindow;->show(Landroid/content/Context;Ljava/lang/Class;I)V

    .line 44
    const-class v2, Lcom/android/systemui/roundr/Corner;

    const/4 v3, 0x2

    invoke-static {p0, v2, v3}, Lwei/mark/standout/StandOutWindow;->show(Landroid/content/Context;Ljava/lang/Class;I)V

    .line 45
    const-class v2, Lcom/android/systemui/roundr/Corner;

    const/4 v3, 0x3

    invoke-static {p0, v2, v3}, Lwei/mark/standout/StandOutWindow;->show(Landroid/content/Context;Ljava/lang/Class;I)V

    .line 47
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/roundr/MainActivity;->finish()V

    .line 48
    return-void
.end method
