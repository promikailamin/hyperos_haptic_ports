.class public abstract Lcom/android/server/accessibility/autoclick/AutoclickLogger;
.super Ljava/lang/Object;
.source "AutoclickLogger.java"


# direct methods
.method public static logAutoclickEnabled()V
    .registers 2

    const/16 v0, 0x42c

    const/4 v1, 0x1

    .line 58
    invoke-static {v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZ)V

    return-void
.end method

.method public static logAutoclickSessionDuration(I)V
    .registers 2

    const/16 v0, 0x42d

    .line 67
    invoke-static {v0, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void
.end method

.method public static logAutoclickSettingsState(JIZZ)V
    .registers 11

    const/16 v0, 0x437

    move-wide v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    .line 85
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIZZ)V

    return-void
.end method

.method public static logSelectedClickType(I)V
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_16

    const/4 v1, 0x2

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-eq p0, v1, :cond_16

    const/4 v1, 0x4

    if-eq p0, v0, :cond_15

    const/4 v0, 0x5

    if-eq p0, v1, :cond_16

    if-eq p0, v0, :cond_13

    const/4 v0, 0x0

    goto :goto_16

    :cond_13
    const/4 v0, 0x6

    goto :goto_16

    :cond_15
    move v0, v1

    :cond_16
    :goto_16
    const/16 p0, 0x42b

    .line 50
    invoke-static {p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void
.end method
