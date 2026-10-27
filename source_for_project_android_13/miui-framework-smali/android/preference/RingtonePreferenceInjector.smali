.class Landroid/preference/RingtonePreferenceInjector;
.super Ljava/lang/Object;
.source "RingtonePreferenceInjector.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist specifyRingtonePickIntentActivity(Landroid/content/Intent;)V
    .registers 3
    .param p0, "ringtonePickerIntent"    # Landroid/content/Intent;

    .line 9
    const-string v0, "com.android.thememanager"

    const-string v1, "com.android.thememanager.activity.ThemeTabActivity"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    return-void
.end method
