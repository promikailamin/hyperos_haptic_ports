.class public abstract Lcom/android/server/vibrator/VibratorDebugUtils;
.super Ljava/lang/Object;
.source "VibratorDebugUtils.java"


# direct methods
.method public static isDebuggable(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x3

    .line 35
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_12

    const-string p0, "Vibrator_All"

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p0, 0x0

    return p0

    :cond_12
    :goto_12
    const/4 p0, 0x1

    return p0
.end method
