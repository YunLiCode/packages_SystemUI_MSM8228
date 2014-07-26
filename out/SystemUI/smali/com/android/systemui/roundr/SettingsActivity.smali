.class public Lcom/android/systemui/roundr/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"


# static fields
.field static mBkService:Landroid/content/Intent;


# instance fields
.field private recLen:I

.field timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/roundr/SettingsActivity;->mBkService:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 19
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/roundr/SettingsActivity;->timer:Ljava/util/Timer;

    .line 20
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/systemui/roundr/SettingsActivity;->recLen:I

    .line 17
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const/high16 v1, 0x7f100000

    invoke-virtual {p0, v1}, Lcom/android/systemui/roundr/SettingsActivity;->addPreferencesFromResource(I)V

    .line 27
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 29
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "enable"

    invoke-virtual {p0, v1}, Lcom/android/systemui/roundr/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/roundr/SettingsActivity$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/roundr/SettingsActivity$1;-><init>(Lcom/android/systemui/roundr/SettingsActivity;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 46
    const-string v1, "overlap2"

    invoke-virtual {p0, v1}, Lcom/android/systemui/roundr/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/roundr/SettingsActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/roundr/SettingsActivity$2;-><init>(Lcom/android/systemui/roundr/SettingsActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 80
    return-void
.end method

.method public refresh()V
    .locals 7

    .prologue
    .line 82
    const-class v1, Lcom/android/systemui/roundr/Corner;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-class v5, Lcom/android/systemui/roundr/Corner;

    const/4 v6, -0x2

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lwei/mark/standout/StandOutWindow;->sendData(Landroid/content/Context;Ljava/lang/Class;IILandroid/os/Bundle;Ljava/lang/Class;I)V

    .line 83
    return-void
.end method

.method public showInstalledAppDetails(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 90
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/systemui/roundr/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 92
    return-void
.end method
