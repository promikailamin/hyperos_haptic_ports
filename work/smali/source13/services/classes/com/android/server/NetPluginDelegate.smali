.class public Lcom/android/server/NetPluginDelegate;
.super Ljava/lang/Object;
.source "NetPluginDelegate.java"


# static fields
.field private static final LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "NetPluginDelegate"

.field private static extJarAvail:Z

.field private static tcpBufferManagerObj:Ljava/lang/Object;

.field private static tcpBufferRelay:Ljava/lang/Class;

.field private static vendorPropJarAvail:Z

.field private static vendorPropManagerObj:Ljava/lang/Object;

.field private static vendorPropRelay:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/NetPluginDelegate;->tcpBufferRelay:Ljava/lang/Class;

    .line 50
    sput-object v0, Lcom/android/server/NetPluginDelegate;->tcpBufferManagerObj:Ljava/lang/Object;

    .line 51
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/NetPluginDelegate;->extJarAvail:Z

    .line 53
    sput-object v0, Lcom/android/server/NetPluginDelegate;->vendorPropRelay:Ljava/lang/Class;

    .line 54
    sput-object v0, Lcom/android/server/NetPluginDelegate;->vendorPropManagerObj:Ljava/lang/Object;

    .line 55
    sput-boolean v1, Lcom/android/server/NetPluginDelegate;->vendorPropJarAvail:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get5GTcpBuffers(Ljava/lang/String;Landroid/net/NetworkSpecifier;)Ljava/lang/String;
    .registers 11
    .param p0, "currentTcpBuffer"    # Ljava/lang/String;
    .param p1, "sepcifier"    # Landroid/net/NetworkSpecifier;

    .line 61
    move-object v0, p0

    .line 62
    .local v0, "tcpBuffer":Ljava/lang/String;
    const-string v1, "NetPluginDelegate"

    const-string v2, "get5GTcpBuffers"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sget-boolean v3, Lcom/android/server/NetPluginDelegate;->extJarAvail:Z

    if-eqz v3, :cond_56

    invoke-static {}, Lcom/android/server/NetPluginDelegate;->loadConnExtJar()Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_56

    .line 66
    :cond_13
    const/4 v3, 0x0

    :try_start_14
    sget-object v4, Lcom/android/server/NetPluginDelegate;->tcpBufferRelay:Ljava/lang/Class;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    const-class v7, Landroid/net/NetworkSpecifier;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v4, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sget-object v4, Lcom/android/server/NetPluginDelegate;->tcpBufferManagerObj:Ljava/lang/Object;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v3

    aput-object p1, v5, v8

    .line 67
    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 70
    .local v2, "ret":Ljava/lang/Object;
    if-eqz v2, :cond_3c

    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_3c

    .line 71
    move-object v4, v2

    check-cast v4, Ljava/lang/String;
    :try_end_3b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_14 .. :try_end_3b} :catch_49
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_3b} :catch_49
    .catch Ljava/lang/NoSuchMethodException; {:try_start_14 .. :try_end_3b} :catch_49
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3b} :catch_3d

    move-object v0, v4

    .line 85
    .end local v2    # "ret":Ljava/lang/Object;
    :cond_3c
    :goto_3c
    goto :goto_55

    .line 79
    :catch_3d
    move-exception v2

    .line 81
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "Error calling get5GTcpBuffers Method on extension jar"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    sput-boolean v3, Lcom/android/server/NetPluginDelegate;->extJarAvail:Z

    goto :goto_55

    .line 73
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_49
    move-exception v2

    .line 75
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v4, "Failed to invoke get5GTcpBuffers()"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    sput-boolean v3, Lcom/android/server/NetPluginDelegate;->extJarAvail:Z

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_3c

    .line 86
    :goto_55
    return-object v0

    .line 64
    :cond_56
    :goto_56
    return-object p0
.end method

.method private static declared-synchronized loadConnExtJar()Z
    .registers 8

    const-class v0, Lcom/android/server/NetPluginDelegate;

    monitor-enter v0

    .line 120
    :try_start_3
    const-string v1, "com.qualcomm.qti.net.connextension.TCPBufferManager"

    .line 121
    .local v1, "realProvider":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/framework/ConnectivityExt.jar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "realProviderPath":Ljava/lang/String;
    sget-object v3, Lcom/android/server/NetPluginDelegate;->tcpBufferRelay:Ljava/lang/Class;

    const/4 v4, 0x1

    if-eqz v3, :cond_2b

    sget-object v3, Lcom/android/server/NetPluginDelegate;->tcpBufferManagerObj:Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_92

    if-eqz v3, :cond_2b

    .line 125
    monitor-exit v0

    return v4

    .line 128
    :cond_2b
    :try_start_2b
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    sput-boolean v3, Lcom/android/server/NetPluginDelegate;->extJarAvail:Z

    .line 129
    const/4 v5, 0x0

    if-nez v3, :cond_42

    .line 130
    const-string v3, "NetPluginDelegate"

    const-string v4, "ConnectivityExt jar file not present"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_2b .. :try_end_40} :catchall_92

    .line 131
    monitor-exit v0

    return v5

    .line 134
    :cond_42
    :try_start_42
    sget-object v3, Lcom/android/server/NetPluginDelegate;->tcpBufferRelay:Ljava/lang/Class;

    if-nez v3, :cond_90

    sget-object v3, Lcom/android/server/NetPluginDelegate;->tcpBufferManagerObj:Ljava/lang/Object;

    if-nez v3, :cond_90

    .line 135
    const-string v3, "NetPluginDelegate"

    const-string/jumbo v6, "loading ConnectivityExt jar"

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_42 .. :try_end_52} :catchall_92

    .line 137
    :try_start_52
    new-instance v3, Ldalvik/system/PathClassLoader;

    .line 138
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v3, v2, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 140
    .local v3, "classLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.qualcomm.qti.net.connextension.TCPBufferManager"

    invoke-virtual {v3, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lcom/android/server/NetPluginDelegate;->tcpBufferRelay:Ljava/lang/Class;

    .line 141
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    sput-object v6, Lcom/android/server/NetPluginDelegate;->tcpBufferManagerObj:Ljava/lang/Object;

    .line 142
    const-string v6, "NetPluginDelegate"

    const-string v7, "ConnectivityExt jar loaded"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Ljava/lang/ClassNotFoundException; {:try_start_52 .. :try_end_70} :catch_81
    .catch Ljava/lang/InstantiationException; {:try_start_52 .. :try_end_70} :catch_81
    .catch Ljava/lang/IllegalAccessException; {:try_start_52 .. :try_end_70} :catch_81
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_70} :catch_71
    .catchall {:try_start_52 .. :try_end_70} :catchall_92

    .line 157
    .end local v3    # "classLoader":Ldalvik/system/PathClassLoader;
    goto :goto_90

    .line 150
    :catch_71
    move-exception v3

    .line 152
    .local v3, "e":Ljava/lang/Exception;
    :try_start_72
    const-string v4, "NetPluginDelegate"

    const-string/jumbo v6, "unable to load ConnectivityExt jar"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    sput-boolean v5, Lcom/android/server/NetPluginDelegate;->extJarAvail:Z
    :try_end_7f
    .catchall {:try_start_72 .. :try_end_7f} :catchall_92

    .line 156
    monitor-exit v0

    return v5

    .line 143
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_81
    move-exception v3

    .line 145
    .local v3, "e":Ljava/lang/ReflectiveOperationException;
    :try_start_82
    const-string v4, "NetPluginDelegate"

    const-string v6, "Failed to find, instantiate or access ConnectivityExt jar "

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v3}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 148
    sput-boolean v5, Lcom/android/server/NetPluginDelegate;->extJarAvail:Z
    :try_end_8e
    .catchall {:try_start_82 .. :try_end_8e} :catchall_92

    .line 149
    monitor-exit v0

    return v5

    .line 159
    .end local v3    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_90
    :goto_90
    monitor-exit v0

    return v4

    .line 119
    .end local v1    # "realProvider":Ljava/lang/String;
    .end local v2    # "realProviderPath":Ljava/lang/String;
    :catchall_92
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static registerHandler(Landroid/os/Handler;)V
    .registers 8
    .param p0, "mHandler"    # Landroid/os/Handler;

    .line 94
    const-string v0, "NetPluginDelegate"

    const-string/jumbo v1, "registerHandler"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-boolean v2, Lcom/android/server/NetPluginDelegate;->extJarAvail:Z

    if-eqz v2, :cond_44

    invoke-static {}, Lcom/android/server/NetPluginDelegate;->loadConnExtJar()Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_44

    .line 97
    :cond_13
    const/4 v2, 0x0

    :try_start_14
    sget-object v3, Lcom/android/server/NetPluginDelegate;->tcpBufferRelay:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/os/Handler;

    aput-object v6, v5, v2

    invoke-virtual {v3, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v3, Lcom/android/server/NetPluginDelegate;->tcpBufferManagerObj:Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_14 .. :try_end_2a} :catch_37
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_2a} :catch_37
    .catch Ljava/lang/NoSuchMethodException; {:try_start_14 .. :try_end_2a} :catch_37
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2a} :catch_2b

    goto :goto_42

    .line 105
    :catch_2b
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Error calling registerHandler Method on extension jar"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    sput-boolean v2, Lcom/android/server/NetPluginDelegate;->extJarAvail:Z

    goto :goto_43

    .line 99
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_37
    move-exception v1

    .line 101
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "Failed to call registerHandler"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    sput-boolean v2, Lcom/android/server/NetPluginDelegate;->extJarAvail:Z

    .line 111
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_42
    nop

    .line 112
    :goto_43
    return-void

    .line 95
    :cond_44
    :goto_44
    return-void
.end method
