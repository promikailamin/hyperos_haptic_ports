.class final Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "HighBrightnessModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/HighBrightnessModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mLowPowerModeSetting:Landroid/net/Uri;

.field private mStarted:Z

.field final synthetic this$0:Lcom/android/server/display/HighBrightnessModeController;


# direct methods
.method constructor <init>(Lcom/android/server/display/HighBrightnessModeController;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 786
    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 787
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 783
    const-string/jumbo p1, "low_power_level_state"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    .line 788
    return-void
.end method

.method private isLowPowerMode()Z
    .registers 4

    .line 829
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v0}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmContext(Lcom/android/server/display/HighBrightnessModeController;)Landroid/content/Context;

    move-result-object v0

    .line 830
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 829
    const-string/jumbo v1, "low_power_level_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_15

    const/4 v2, 0x1

    :cond_15
    return v2
.end method

.method private updateLowPower()V
    .registers 3

    .line 813
    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->isLowPowerMode()Z

    move-result v0

    .line 814
    .local v0, "isLowPowerMode":Z
    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v1}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmIsBlockedByLowPowerMode(Lcom/android/server/display/HighBrightnessModeController;)Z

    move-result v1

    if-ne v0, v1, :cond_d

    .line 815
    return-void

    .line 820
    :cond_d
    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v1, v0}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fputmIsBlockedByLowPowerMode(Lcom/android/server/display/HighBrightnessModeController;Z)V

    .line 822
    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v1}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$mupdateHbmMode(Lcom/android/server/display/HighBrightnessModeController;)V

    .line 823
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 792
    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->updateLowPower()V

    .line 793
    return-void
.end method

.method startObserving()V
    .registers 5

    .line 796
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->mStarted:Z

    if-nez v0, :cond_1b

    .line 797
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v0}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmContext(Lcom/android/server/display/HighBrightnessModeController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 799
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->mStarted:Z

    .line 800
    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->updateLowPower()V

    .line 802
    :cond_1b
    return-void
.end method

.method stopObserving()V
    .registers 3

    .line 805
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fputmIsBlockedByLowPowerMode(Lcom/android/server/display/HighBrightnessModeController;Z)V

    .line 806
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->mStarted:Z

    if-eqz v0, :cond_19

    .line 807
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v0}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmContext(Lcom/android/server/display/HighBrightnessModeController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 808
    iput-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->mStarted:Z

    .line 810
    :cond_19
    return-void
.end method
