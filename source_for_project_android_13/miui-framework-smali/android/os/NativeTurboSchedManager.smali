.class public Landroid/os/NativeTurboSchedManager;
.super Ljava/lang/Object;
.source "NativeTurboSchedManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "NativeTurboSchedManager"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 17
    const-string v0, "NativeTurboSchedManager"

    :try_start_2
    const-string v1, "miui_runtime"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 18
    const-string v1, "Load libmiui_runtime"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_c} :catch_d

    .line 21
    goto :goto_13

    .line 19
    :catch_d
    move-exception v1

    .line 20
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "can\'t loadLibrary libmiui_runtime"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_13
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native blacklist nativeCloseDevice(I)V
.end method

.method public static native blacklist nativeIoctlDevice(II)V
.end method

.method public static native blacklist nativeOpenDevice(Ljava/lang/String;)I
.end method

.method public static native blacklist nativeTaskBoost(III)V
.end method
