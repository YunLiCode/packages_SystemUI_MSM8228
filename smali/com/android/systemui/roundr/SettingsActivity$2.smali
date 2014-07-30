.class Lcom/android/systemui/roundr/SettingsActivity$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/roundr/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/roundr/SettingsActivity;

.field private final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/systemui/roundr/SettingsActivity;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/roundr/SettingsActivity$2;->this$0:Lcom/android/systemui/roundr/SettingsActivity;

    iput-object p2, p0, Lcom/android/systemui/roundr/SettingsActivity$2;->val$prefs:Landroid/content/SharedPreferences;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/roundr/SettingsActivity$2;)Lcom/android/systemui/roundr/SettingsActivity;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/roundr/SettingsActivity$2;->this$0:Lcom/android/systemui/roundr/SettingsActivity;

    return-object v0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 49
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 50
    .local v0, "isChecked":Z
    if-eqz v0, :cond_1

    .line 51
    iget-object v1, p0, Lcom/android/systemui/roundr/SettingsActivity$2;->val$prefs:Landroid/content/SharedPreferences;

    const-string v2, "overlap"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/android/systemui/roundr/SettingsActivity$2;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "flags"

    const v3, 0x80100

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 61
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/systemui/roundr/SettingsActivity$2$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/roundr/SettingsActivity$2$1;-><init>(Lcom/android/systemui/roundr/SettingsActivity$2;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 76
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 77
    return v4

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/roundr/SettingsActivity$2;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "flags"

    const v3, 0x40120

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/roundr/SettingsActivity$2;->val$prefs:Landroid/content/SharedPreferences;

    const-string v2, "overlap"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    iget-object v1, p0, Lcom/android/systemui/roundr/SettingsActivity$2;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "flags"

    const/high16 v3, 0x80000

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 59
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/roundr/SettingsActivity$2;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "flags"

    const v3, 0x40020

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
