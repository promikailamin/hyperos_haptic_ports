.class public final Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "HighBrightnessModeController.java"


# instance fields
.field public final mLowPowerModeSetting:Landroid/net/Uri;

.field public mStarted:Z

.field public final synthetic this$0:Lcom/android/server/display/HighBrightnessModeController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/HighBrightnessModeController;Landroid/os/Handler;)V
    .registers 3

    .line 679
    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 680
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 675
    const-string/jumbo p1, "low_power"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final isLowPowerMode()Z
    .registers 3

    .line 719
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {p0}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmContext(Lcom/android/server/display/HighBrightnessModeController;)Landroid/content/Context;

    move-result-object p0

    .line 720
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 719
    const-string/jumbo v0, "low_power"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    return v1
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 685
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->updateLowPower()V

    return-void
.end method

.method public startObserving()V
    .registers 5

    .line 689
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->mStarted:Z

    if-nez v0, :cond_1b

    .line 690
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v0}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmContext(Lcom/android/server/display/HighBrightnessModeController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v0, 0x1

    .line 692
    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->mStarted:Z

    .line 693
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->updateLowPower()V

    :cond_1b
    return-void
.end method

.method public stopObserving()V
    .registers 3

    .line 698
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fputmIsBlockedByLowPowerMode(Lcom/android/server/display/HighBrightnessModeController;Z)V

    .line 699
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->mStarted:Z

    if-eqz v0, :cond_19

    .line 700
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v0}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmContext(Lcom/android/server/display/HighBrightnessModeController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 701
    iput-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->mStarted:Z

    :cond_19
    return-void
.end method

.method public final updateLowPower()V
    .registers 4

    .line 706
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->isLowPowerMode()Z

    move-result v0

    .line 707
    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v1}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmIsBlockedByLowPowerMode(Lcom/android/server/display/HighBrightnessModeController;)Z

    move-result v1

    if-ne v0, v1, :cond_d

    return-void

    .line 710
    :cond_d
    invoke-static {}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 711
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings.Global.LOW_POWER_MODE enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HighBrightnessModeController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_29
    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v1, v0}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fputmIsBlockedByLowPowerMode(Lcom/android/server/display/HighBrightnessModeController;Z)V

    .line 715
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {p0}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$mupdateHbmMode(Lcom/android/server/display/HighBrightnessModeController;)V

    return-void
.end method
