.class public Landroid/view/ScreenOptimizeObserver;
.super Landroid/database/ContentObserver;
.source "ScreenOptimizeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScreenOptimizeObserver$Callback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ScreenOptimizeObserver"

.field private static final blacklist WCG_MODE:I = 0x1


# instance fields
.field private blacklist mCallback:Landroid/view/ScreenOptimizeObserver$Callback;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mThreadedRenderer:Landroid/view/ThreadedRenderer;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/ScreenOptimizeObserver$Callback;)V
    .registers 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "cb"    # Landroid/view/ScreenOptimizeObserver$Callback;

    .line 28
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 29
    iput-object p1, p0, Landroid/view/ScreenOptimizeObserver;->mContext:Landroid/content/Context;

    .line 30
    iput-object p3, p0, Landroid/view/ScreenOptimizeObserver;->mCallback:Landroid/view/ScreenOptimizeObserver$Callback;

    .line 31
    nop

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 31
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/view/ThreadedRenderer;->create(Landroid/content/Context;ZLjava/lang/String;)Landroid/view/ThreadedRenderer;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ScreenOptimizeObserver;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 33
    iget-object v1, p0, Landroid/view/ScreenOptimizeObserver;->mCallback:Landroid/view/ScreenOptimizeObserver$Callback;

    invoke-virtual {p0}, Landroid/view/ScreenOptimizeObserver;->isWCGEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/view/ScreenOptimizeObserver$Callback;->screenOptimizeSettingsChanged(Landroid/view/ThreadedRenderer;Z)V

    .line 34
    invoke-virtual {p0}, Landroid/view/ScreenOptimizeObserver;->register()V

    .line 35
    return-void
.end method


# virtual methods
.method public blacklist getCallback()Landroid/view/ScreenOptimizeObserver$Callback;
    .registers 2

    .line 40
    iget-object v0, p0, Landroid/view/ScreenOptimizeObserver;->mCallback:Landroid/view/ScreenOptimizeObserver$Callback;

    return-object v0
.end method

.method public blacklist getColorSpaceMode()I
    .registers 4

    .line 77
    iget-object v0, p0, Landroid/view/ScreenOptimizeObserver;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 77
    const-string v1, "color_space_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 79
    .local v0, "mode":I
    return v0
.end method

.method public blacklist getScreenMode()I
    .registers 4

    .line 84
    sget v0, Landroid/provider/MiuiSettings$ScreenEffect;->SCREEN_EFFECT_SUPPORTED:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    .line 86
    const/4 v0, 0x1

    .local v0, "defMode":I
    goto :goto_9

    .line 88
    .end local v0    # "defMode":I
    :cond_8
    const/4 v0, 0x2

    .line 91
    .restart local v0    # "defMode":I
    :goto_9
    iget-object v1, p0, Landroid/view/ScreenOptimizeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_optimize_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 94
    .local v1, "mode":I
    return v1
.end method

.method public blacklist isWCGEnabled()Z
    .registers 5

    .line 62
    sget-boolean v0, Lmiui/os/DeviceFeature;->DISABLE_SUPPORT_WCG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 63
    return v1

    .line 65
    :cond_6
    invoke-virtual {p0}, Landroid/view/ScreenOptimizeObserver;->getScreenMode()I

    move-result v0

    .line 66
    .local v0, "screenMode":I
    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_18

    .line 72
    return v1

    .line 70
    :pswitch_f
    invoke-virtual {p0}, Landroid/view/ScreenOptimizeObserver;->getColorSpaceMode()I

    move-result v3

    if-ne v3, v2, :cond_16

    move v1, v2

    :cond_16
    return v1

    .line 68
    :pswitch_17
    return v2

    :pswitch_data_18
    .packed-switch 0x3
        :pswitch_17
        :pswitch_f
    .end packed-switch
.end method

.method public whitelist onChange(Z)V
    .registers 5
    .param p1, "selfChange"    # Z

    .line 55
    invoke-virtual {p0}, Landroid/view/ScreenOptimizeObserver;->getCallback()Landroid/view/ScreenOptimizeObserver$Callback;

    move-result-object v0

    .line 56
    .local v0, "cb":Landroid/view/ScreenOptimizeObserver$Callback;
    if-eqz v0, :cond_11

    .line 57
    iget-object v1, p0, Landroid/view/ScreenOptimizeObserver;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {p0}, Landroid/view/ScreenOptimizeObserver;->isWCGEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/ScreenOptimizeObserver$Callback;->screenOptimizeSettingsChanged(Landroid/view/ThreadedRenderer;Z)V

    .line 59
    :cond_11
    return-void
.end method

.method public blacklist register()V
    .registers 5

    .line 43
    const-string v0, "ScreenOptimizeObserver"

    const-string v1, "register"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v0, "screen_optimize_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 45
    .local v0, "uri":Landroid/net/Uri;
    const-string v1, "color_space_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 46
    .local v1, "spaceModeUri":Landroid/net/Uri;
    iget-object v2, p0, Landroid/view/ScreenOptimizeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 47
    iget-object v2, p0, Landroid/view/ScreenOptimizeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 48
    return-void
.end method

.method public blacklist setCallback(Landroid/view/ScreenOptimizeObserver$Callback;)V
    .registers 2
    .param p1, "callback"    # Landroid/view/ScreenOptimizeObserver$Callback;

    .line 37
    iput-object p1, p0, Landroid/view/ScreenOptimizeObserver;->mCallback:Landroid/view/ScreenOptimizeObserver$Callback;

    .line 38
    return-void
.end method

.method public blacklist unregister()V
    .registers 3

    .line 50
    const-string v0, "ScreenOptimizeObserver"

    const-string v1, "unregister"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Landroid/view/ScreenOptimizeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 52
    return-void
.end method
