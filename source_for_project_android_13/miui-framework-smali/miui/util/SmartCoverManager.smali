.class public Lmiui/util/SmartCoverManager;
.super Ljava/lang/Object;
.source "SmartCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/SmartCoverManager$SettingsObserver;
    }
.end annotation


# static fields
.field private static final blacklist SUPPORT_SMART_COVER:Z

.field private static final blacklist TAG:Ljava/lang/String; = "SmartCoverManager"


# instance fields
.field private volatile blacklist mAfterBooted:Z

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mPowerManager:Landroid/os/PowerManager;

.field private blacklist mSettingsObserver:Lmiui/util/SmartCoverManager$SettingsObserver;

.field private blacklist mSmartCoverLidOpen:Z

.field private volatile blacklist mSmartCoverModeSettings:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mupdateSmartCoverFromSettings(Lmiui/util/SmartCoverManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/util/SmartCoverManager;->updateSmartCoverFromSettings()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 28
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11050075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lmiui/util/SmartCoverManager;->SUPPORT_SMART_COVER:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/util/SmartCoverManager;->mAfterBooted:Z

    .line 35
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    .line 36
    iput v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverModeSettings:I

    return-void
.end method

.method public static blacklist deviceDisableKeysWhenLidClose()Z
    .registers 1

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist registerSmartCoverSettingObserver()V
    .registers 6

    .line 49
    sget-boolean v0, Lmiui/util/SmartCoverManager;->SUPPORT_SMART_COVER:Z

    if-nez v0, :cond_5

    return-void

    .line 50
    :cond_5
    iget-object v0, p0, Lmiui/util/SmartCoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_smart_cover_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lmiui/util/SmartCoverManager;->mSettingsObserver:Lmiui/util/SmartCoverManager$SettingsObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 53
    return-void
.end method

.method private blacklist updateSmartCoverFromSettings()V
    .registers 4

    .line 67
    iget-object v0, p0, Lmiui/util/SmartCoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_smart_cover_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 69
    .local v0, "smartCoverMode":I
    iget v1, p0, Lmiui/util/SmartCoverManager;->mSmartCoverModeSettings:I

    if-ne v1, v0, :cond_12

    return-void

    .line 70
    :cond_12
    iput v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverModeSettings:I

    .line 71
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 101
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 102
    const-string v0, "Smart Cover Mode:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " SUPPORT_SMART_COVER: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lmiui/util/SmartCoverManager;->SUPPORT_SMART_COVER:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSmartCoverLidOpen : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    if-eqz v1, :cond_32

    const-string v1, "open"

    goto :goto_34

    :cond_32
    const-string v1, "close"

    :goto_34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSmartCoverModeSettings : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/util/SmartCoverManager;->mSmartCoverModeSettings:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public blacklist enableLidAfterBoot()V
    .registers 2

    .line 74
    sget-boolean v0, Lmiui/util/SmartCoverManager;->SUPPORT_SMART_COVER:Z

    if-nez v0, :cond_5

    .line 75
    return-void

    .line 77
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/util/SmartCoverManager;->mAfterBooted:Z

    .line 78
    return-void
.end method

.method public blacklist getSmartCoverLidOpen()Z
    .registers 2

    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getSmartCoverMode()I
    .registers 2

    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist init(Landroid/content/Context;Landroid/os/PowerManager;Landroid/os/Handler;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "powerManager"    # Landroid/os/PowerManager;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 39
    iput-object p1, p0, Lmiui/util/SmartCoverManager;->mContext:Landroid/content/Context;

    .line 40
    iput-object p3, p0, Lmiui/util/SmartCoverManager;->mHandler:Landroid/os/Handler;

    .line 41
    new-instance v0, Lmiui/util/SmartCoverManager$SettingsObserver;

    iget-object v1, p0, Lmiui/util/SmartCoverManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lmiui/util/SmartCoverManager$SettingsObserver;-><init>(Lmiui/util/SmartCoverManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lmiui/util/SmartCoverManager;->mSettingsObserver:Lmiui/util/SmartCoverManager$SettingsObserver;

    .line 42
    iput-object p2, p0, Lmiui/util/SmartCoverManager;->mPowerManager:Landroid/os/PowerManager;

    .line 43
    invoke-direct {p0}, Lmiui/util/SmartCoverManager;->registerSmartCoverSettingObserver()V

    .line 44
    iget-object v0, p0, Lmiui/util/SmartCoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_smart_cover_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverModeSettings:I

    .line 46
    return-void
.end method

.method public blacklist notifyLidSwitchChanged(ZZ)V
    .registers 8
    .param p1, "lidOpen"    # Z
    .param p2, "folded"    # Z

    .line 81
    sget-boolean v0, Lmiui/util/SmartCoverManager;->SUPPORT_SMART_COVER:Z

    if-eqz v0, :cond_46

    iget-boolean v0, p0, Lmiui/util/SmartCoverManager;->mAfterBooted:Z

    if-eqz v0, :cond_46

    iget v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverModeSettings:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_46

    sget-boolean v0, Landroid/provider/MiuiSettings$System;->IS_FOLD_DEVICE:Z

    if-eqz v0, :cond_14

    if-nez p2, :cond_14

    goto :goto_46

    .line 87
    :cond_14
    iput-boolean p1, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    .line 88
    iget-object v0, p0, Lmiui/util/SmartCoverManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.SMART_COVER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    const-string v2, "is_smart_cover_open"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 90
    if-nez p1, :cond_38

    .line 91
    iget-object v0, p0, Lmiui/util/SmartCoverManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto :goto_45

    .line 94
    :cond_38
    iget-object v0, p0, Lmiui/util/SmartCoverManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/16 v3, 0x9

    const-string v4, "lid_switch_open"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 97
    :goto_45
    return-void

    .line 84
    :cond_46
    :goto_46
    return-void
.end method

.method public blacklist onUserSwitch(I)V
    .registers 4
    .param p1, "newUserId"    # I

    .line 116
    const-string v0, "SmartCover"

    const-string v1, "Stub."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
