.class public Lcom/android/server/display/DisplayDebugConfig;
.super Ljava/lang/Object;
.source "DisplayDebugConfig.java"


# static fields
.field public static DEBUG_ABC:Z

.field public static DEBUG_CF:Z

.field public static DEBUG_DMS:Z

.field public static DEBUG_DPC:Z

.field public static DEBUG_DPS:Z

.field public static DEBUG_LDA:Z

.field public static DEBUG_SC:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateDisplayDebug()V
    .registers 4

    .line 27
    const-string v0, "debug.miui.display.dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 28
    .local v0, "debug":I
    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_e

    move v2, v3

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_f
    sput-boolean v2, Lcom/android/server/display/DisplayDebugConfig;->DEBUG_CF:Z

    .line 29
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_17

    move v2, v3

    goto :goto_18

    :cond_17
    move v2, v1

    :goto_18
    sput-boolean v2, Lcom/android/server/display/DisplayDebugConfig;->DEBUG_DMS:Z

    .line 30
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_20

    move v2, v3

    goto :goto_21

    :cond_20
    move v2, v1

    :goto_21
    sput-boolean v2, Lcom/android/server/display/DisplayDebugConfig;->DEBUG_DPS:Z

    .line 31
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_29

    move v2, v3

    goto :goto_2a

    :cond_29
    move v2, v1

    :goto_2a
    sput-boolean v2, Lcom/android/server/display/DisplayDebugConfig;->DEBUG_LDA:Z

    .line 32
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_32

    move v2, v3

    goto :goto_33

    :cond_32
    move v2, v1

    :goto_33
    sput-boolean v2, Lcom/android/server/display/DisplayDebugConfig;->DEBUG_DPC:Z

    .line 33
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_3b

    move v2, v3

    goto :goto_3c

    :cond_3b
    move v2, v1

    :goto_3c
    sput-boolean v2, Lcom/android/server/display/DisplayDebugConfig;->DEBUG_ABC:Z

    .line 34
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_43

    move v1, v3

    :cond_43
    sput-boolean v1, Lcom/android/server/display/DisplayDebugConfig;->DEBUG_SC:Z

    .line 35
    return-void
.end method
