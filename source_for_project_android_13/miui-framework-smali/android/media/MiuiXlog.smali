.class public Landroid/media/MiuiXlog;
.super Ljava/lang/Object;
.source "MiuiXlog.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MiuiXlog"

.field private static blacklist lib_existent:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 31
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Landroid/media/MiuiXlog;->lib_existent:Z

    .line 32
    const-string v0, "miuixlog"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_9

    .line 36
    goto :goto_14

    .line 33
    :catchall_9
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    sput-boolean v1, Landroid/media/MiuiXlog;->lib_existent:Z

    .line 35
    const-string v1, "MiuiXlog"

    const-string v2, "can not find libmiuixlog.so!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_14
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method private native blacklist native_xlogSend([B)I
.end method


# virtual methods
.method public blacklist miuiXlogSend(Ljava/lang/String;)I
    .registers 7
    .param p1, "str"    # Ljava/lang/String;

    .line 40
    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 41
    .local v0, "msg":[B
    const/4 v1, -0x1

    .line 43
    .local v1, "result":I
    :try_start_5
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_d

    move-object v0, v2

    .line 46
    goto :goto_11

    .line 44
    :catch_d
    move-exception v2

    .line 45
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_11
    sget-boolean v2, Landroid/media/MiuiXlog;->lib_existent:Z

    const-string v3, "MiuiXlog"

    if-eqz v2, :cond_1c

    .line 48
    invoke-direct {p0, v0}, Landroid/media/MiuiXlog;->native_xlogSend([B)I

    move-result v1

    goto :goto_21

    .line 50
    :cond_1c
    const-string v2, "can not find native_xlogSend!!!"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write dev/xlog result is : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return v1
.end method
