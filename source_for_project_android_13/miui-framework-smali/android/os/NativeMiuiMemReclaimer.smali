.class public Landroid/os/NativeMiuiMemReclaimer;
.super Ljava/lang/Object;
.source "NativeMiuiMemReclaimer.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MiuiMemoryService"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 15
    const-string v0, "MiuiMemoryService"

    :try_start_2
    const-string v1, "miui_runtime"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 16
    const-string v1, "Load libmiui_runtime"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_c} :catch_d

    .line 19
    goto :goto_13

    .line 17
    :catch_d
    move-exception v1

    .line 18
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "can\'t loadLibrary libmiui_runtime"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_13
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native blacklist compactProcess(II)V
.end method
