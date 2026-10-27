.class public abstract Lcom/android/server/display/utils/DebugUtils;
.super Ljava/lang/Object;
.source "DebugUtils.java"


# static fields
.field public static final DEBUG_ALL:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    const-string v0, "DisplayManager_All"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/utils/DebugUtils;->DEBUG_ALL:Z

    return-void
.end method

.method public static isDebuggable(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x3

    .line 34
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_e

    sget-boolean p0, Lcom/android/server/display/utils/DebugUtils;->DEBUG_ALL:Z

    if-eqz p0, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x1

    return p0
.end method
