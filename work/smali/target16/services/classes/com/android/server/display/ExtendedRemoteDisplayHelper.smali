.class public abstract Lcom/android/server/display/ExtendedRemoteDisplayHelper;
.super Ljava/lang/Object;
.source "ExtendedRemoteDisplayHelper.java"


# static fields
.field public static sExtRemoteDisplayClass:Ljava/lang/Class;

.field public static sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;

.field public static sExtRemoteDisplayListen:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 66
    const-string v0, "dispose"

    const-string/jumbo v1, "listen"

    const-string v2, "com.qualcomm.wfd.ExtendedRemoteDisplay"

    const-string v3, "ExtendedRemoteDisplayHelper"

    :try_start_9
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_10

    goto :goto_27

    .line 74
    :catchall_10
    :try_start_10
    new-instance v4, Ldalvik/system/PathClassLoader;

    const-string v5, "/system_ext/framework/WfdCommon.jar"

    .line 75
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 76
    invoke-virtual {v4, v2}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_22

    goto :goto_27

    .line 78
    :catchall_22
    const-string v2, "ExtendedRemoteDisplay: not available"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_27
    sget-object v2, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;

    if-eqz v2, :cond_78

    .line 84
    const-string v2, "ExtendedRemoteDisplay: is available, finding methods"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    .line 86
    new-array v2, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x1

    const-class v6, Landroid/media/RemoteDisplay$Listener;

    aput-object v6, v2, v4

    const/4 v4, 0x2

    const-class v6, Landroid/os/Handler;

    aput-object v6, v2, v4

    const/4 v4, 0x3

    const-class v6, Landroid/content/Context;

    aput-object v6, v2, v4

    .line 89
    :try_start_47
    sget-object v4, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;

    .line 90
    invoke-virtual {v4, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayListen:Ljava/lang/reflect/Method;
    :try_end_4f
    .catchall {:try_start_47 .. :try_end_4f} :catchall_50

    goto :goto_5e

    .line 93
    :catchall_50
    :try_start_50
    sget-object v4, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;

    .line 94
    invoke-virtual {v4, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayListen:Ljava/lang/reflect/Method;
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_59

    goto :goto_5e

    .line 96
    :catchall_59
    const-string v1, "ExtendedRemoteDisplay.listen: not available"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_5e
    new-array v1, v5, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 102
    :try_start_61
    sget-object v2, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;

    .line 103
    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;
    :try_end_69
    .catchall {:try_start_61 .. :try_end_69} :catchall_6a

    goto :goto_78

    .line 106
    :catchall_6a
    :try_start_6a
    sget-object v2, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;

    .line 107
    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;
    :try_end_72
    .catchall {:try_start_6a .. :try_end_72} :catchall_73

    goto :goto_78

    .line 109
    :catchall_73
    const-string v0, "ExtendedRemoteDisplay.dispose: not available"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    :goto_78
    return-void
.end method

.method public static dispose(Ljava/lang/Object;)V
    .registers 4

    .line 155
    const-string v0, "ExtendedRemoteDisplayHelper"

    :try_start_2
    sget-object v1, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_8} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    goto :goto_d

    :catch_b
    move-exception p0

    goto :goto_13

    .line 167
    :goto_d
    const-string v1, "ExtendedRemoteDisplay.dispose: IllegalAccessException"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 157
    :goto_13
    const-string v1, "ExtendedRemoteDisplay.dispose: InvocationTargetException"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 159
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_2d

    .line 161
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_27

    .line 162
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 164
    :cond_27
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 160
    :cond_2d
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
.end method

.method public static isAvailable()Z
    .registers 1

    .line 175
    sget-object v0, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayListen:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public static listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Landroid/content/Context;)Ljava/lang/Object;
    .registers 8

    .line 125
    const-string v0, "ExtendedRemoteDisplayHelper"

    .line 128
    sget-object v1, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayListen:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-eqz v1, :cond_3b

    sget-object v3, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_3b

    .line 130
    :try_start_b
    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_13} :catch_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    goto :goto_18

    :catch_16
    move-exception p0

    goto :goto_1e

    .line 143
    :goto_18
    const-string p1, "ExtendedRemoteDisplay.listen: IllegalAccessException"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b

    .line 133
    :goto_1e
    const-string p1, "ExtendedRemoteDisplay.listen: InvocationTargetException"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 135
    instance-of p2, p1, Ljava/lang/RuntimeException;

    if-nez p2, :cond_38

    .line 137
    instance-of p2, p1, Ljava/lang/Error;

    if-eqz p2, :cond_32

    .line 138
    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 140
    :cond_32
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 136
    :cond_38
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    :cond_3b
    :goto_3b
    return-object v2
.end method
