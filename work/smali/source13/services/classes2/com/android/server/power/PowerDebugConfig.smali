.class public Lcom/android/server/power/PowerDebugConfig;
.super Ljava/lang/Object;
.source "PowerDebugConfig.java"


# static fields
.field public static DEBUG_AD:Z

.field public static DEBUG_BSP:Z

.field public static DEBUG_FDD:Z

.field public static DEBUG_LPSC:Z

.field public static DEBUG_NOTIFIER:Z

.field public static DEBUG_PMS:Z

.field public static DEBUG_WCD:Z

.field public static DEBUG_WLL:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updatePowerDebug()V
    .registers 4

    .line 30
    const-string v0, "debug.miui.power.dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 31
    .local v0, "debug":I
    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_e

    move v2, v3

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_f
    sput-boolean v2, Lcom/android/server/power/PowerDebugConfig;->DEBUG_AD:Z

    .line 32
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_17

    move v2, v3

    goto :goto_18

    :cond_17
    move v2, v1

    :goto_18
    sput-boolean v2, Lcom/android/server/power/PowerDebugConfig;->DEBUG_BSP:Z

    .line 33
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_20

    move v2, v3

    goto :goto_21

    :cond_20
    move v2, v1

    :goto_21
    sput-boolean v2, Lcom/android/server/power/PowerDebugConfig;->DEBUG_FDD:Z

    .line 34
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_29

    move v2, v3

    goto :goto_2a

    :cond_29
    move v2, v1

    :goto_2a
    sput-boolean v2, Lcom/android/server/power/PowerDebugConfig;->DEBUG_NOTIFIER:Z

    .line 35
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_32

    move v2, v3

    goto :goto_33

    :cond_32
    move v2, v1

    :goto_33
    sput-boolean v2, Lcom/android/server/power/PowerDebugConfig;->DEBUG_PMS:Z

    .line 36
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_3b

    move v2, v3

    goto :goto_3c

    :cond_3b
    move v2, v1

    :goto_3c
    sput-boolean v2, Lcom/android/server/power/PowerDebugConfig;->DEBUG_WLL:Z

    .line 37
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_44

    move v2, v3

    goto :goto_45

    :cond_44
    move v2, v1

    :goto_45
    sput-boolean v2, Lcom/android/server/power/PowerDebugConfig;->DEBUG_WCD:Z

    .line 38
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_4c

    move v1, v3

    :cond_4c
    sput-boolean v1, Lcom/android/server/power/PowerDebugConfig;->DEBUG_LPSC:Z

    .line 39
    return-void
.end method
