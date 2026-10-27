.class public Lmiui/contentcatcher/InterceptorFactory;
.super Ljava/lang/Object;
.source "InterceptorFactory.java"


# static fields
.field private static final blacklist CONTENT_CATCHER_PACKAGE_NAME:Ljava/lang/String; = "com.miui.contentcatcher"

.field private static final blacklist CONTENT_INJECTOR_CLASS_NAME:Ljava/lang/String; = "com.miui.contentcatcher.Interceptor"

.field private static final blacklist DBG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "InterceptorFactory"

.field private static volatile blacklist mPackageInfo:Landroid/content/pm/PackageInfo;

.field private static final blacklist mPackageInfoLock:Ljava/lang/Object;

.field private static volatile blacklist sInterceptorClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    sput-boolean v0, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lmiui/contentcatcher/InterceptorFactory;->sInterceptorClazz:Ljava/lang/Class;

    .line 27
    sput-object v0, Lmiui/contentcatcher/InterceptorFactory;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/contentcatcher/InterceptorFactory;->mPackageInfoLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist createInterceptor(Landroid/app/Activity;)Lmiui/contentcatcher/IInterceptor;
    .registers 11
    .param p0, "activity"    # Landroid/app/Activity;

    .line 36
    const-string v0, "InterceptorFactory"

    const/4 v1, 0x0

    .line 38
    .local v1, "contentInjector":Lmiui/contentcatcher/IInterceptor;
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 39
    .local v2, "start":J
    invoke-static {}, Lmiui/contentcatcher/InterceptorFactory;->initInterceptorClass()Ljava/lang/Class;

    move-result-object v4

    .line 40
    .local v4, "injectorClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    if-nez v4, :cond_f

    .line 41
    return-object v5

    .line 43
    :cond_f
    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/app/Activity;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 44
    .local v7, "injectorConstructor":Ljava/lang/reflect/Constructor;
    if-nez v7, :cond_1e

    .line 45
    return-object v5

    .line 47
    :cond_1e
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v5

    if-nez v5, :cond_27

    .line 48
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 50
    :cond_27
    new-array v5, v6, [Ljava/lang/Object;

    aput-object p0, v5, v9

    invoke-virtual {v7, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/contentcatcher/IInterceptor;

    move-object v1, v5

    .line 51
    sget-boolean v5, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    if-eqz v5, :cond_8e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createInterceptor took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_57} :catch_84
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_57} :catch_79
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_57} :catch_6e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_57} :catch_63
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_57} :catch_58

    goto :goto_8e

    .line 60
    .end local v2    # "start":J
    .end local v4    # "injectorClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "injectorConstructor":Ljava/lang/reflect/Constructor;
    :catch_58
    move-exception v2

    .line 61
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    if-eqz v3, :cond_8f

    const-string v3, "Exception"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8f

    .line 58
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_63
    move-exception v2

    .line 59
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    sget-boolean v3, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    if-eqz v3, :cond_8e

    const-string v3, "NoSuchMethodException"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8e

    .line 56
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_6e
    move-exception v2

    .line 57
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-boolean v3, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    if-eqz v3, :cond_8e

    const-string v3, "InvocationTargetException"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8e

    .line 54
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_79
    move-exception v2

    .line 55
    .local v2, "e":Ljava/lang/IllegalAccessException;
    sget-boolean v3, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    if-eqz v3, :cond_8e

    const-string v3, "IllegalAccessException"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8e

    .line 52
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_84
    move-exception v2

    .line 53
    .local v2, "e":Ljava/lang/InstantiationException;
    sget-boolean v3, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    if-eqz v3, :cond_8e

    const-string v3, "InstantiationException"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :cond_8e
    :goto_8e
    nop

    .line 63
    :cond_8f
    :goto_8f
    return-object v1
.end method

.method public static whitelist getInterceptorPackageInfo()Landroid/content/pm/PackageInfo;
    .registers 9

    .line 67
    sget-boolean v0, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    if-eqz v0, :cond_b

    const-string v1, "InterceptorFactory"

    const-string v2, "getInterceptorPackageInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_b
    sget-object v1, Lmiui/contentcatcher/InterceptorFactory;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_74

    .line 69
    sget-object v1, Lmiui/contentcatcher/InterceptorFactory;->mPackageInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_12
    sget-object v2, Lmiui/contentcatcher/InterceptorFactory;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_71

    if-nez v2, :cond_6f

    .line 72
    :try_start_16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 73
    .local v2, "start":J
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v4

    .line 74
    .local v4, "app":Landroid/app/Application;
    invoke-virtual {v4}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_22} :catch_63
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_22} :catch_56
    .catchall {:try_start_16 .. :try_end_22} :catchall_71

    .line 75
    .local v5, "pm":Landroid/content/pm/PackageManager;
    if-nez v5, :cond_27

    .line 76
    const/4 v0, 0x0

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_71

    return-object v0

    .line 78
    :cond_27
    :try_start_27
    const-string v6, "com.miui.contentcatcher"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    sput-object v6, Lmiui/contentcatcher/InterceptorFactory;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 79
    if-eqz v0, :cond_6f

    const-string v0, "InterceptorFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPackageInfo took "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_27 .. :try_end_55} :catch_63
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_55} :catch_56
    .catchall {:try_start_27 .. :try_end_55} :catchall_71

    goto :goto_6f

    .line 82
    .end local v2    # "start":J
    .end local v4    # "app":Landroid/app/Application;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :catch_56
    move-exception v0

    .line 83
    .local v0, "e1":Ljava/lang/Exception;
    :try_start_57
    sget-boolean v2, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    if-eqz v2, :cond_6f

    const-string v2, "InterceptorFactory"

    const-string v3, "Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6f

    .line 80
    .end local v0    # "e1":Ljava/lang/Exception;
    :catch_63
    move-exception v0

    .line 81
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v2, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    if-eqz v2, :cond_6f

    const-string v2, "InterceptorFactory"

    const-string v3, "NameNotFoundException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6f
    :goto_6f
    monitor-exit v1

    goto :goto_74

    :catchall_71
    move-exception v0

    monitor-exit v1
    :try_end_73
    .catchall {:try_start_57 .. :try_end_73} :catchall_71

    throw v0

    .line 88
    :cond_74
    :goto_74
    sget-object v0, Lmiui/contentcatcher/InterceptorFactory;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method private static blacklist initInterceptorClass()Ljava/lang/Class;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 92
    sget-boolean v0, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    if-eqz v0, :cond_b

    const-string v1, "InterceptorFactory"

    const-string v2, "initInterceptorClass"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_b
    sget-object v1, Lmiui/contentcatcher/InterceptorFactory;->sInterceptorClazz:Ljava/lang/Class;

    if-nez v1, :cond_a5

    .line 94
    const-class v1, Lmiui/contentcatcher/InterceptorFactory;

    monitor-enter v1

    .line 95
    :try_start_12
    sget-object v2, Lmiui/contentcatcher/InterceptorFactory;->sInterceptorClazz:Ljava/lang/Class;

    if-nez v2, :cond_a0

    .line 96
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 97
    .local v2, "start":J
    invoke-static {}, Lmiui/contentcatcher/InterceptorFactory;->getInterceptorPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 98
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_a0

    .line 99
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v5
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_a2

    .line 101
    .local v5, "initialApplication":Landroid/app/Application;
    if-eqz v0, :cond_40

    :try_start_26
    const-string v6, "InterceptorFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "packageInfo.packageName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_40
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Landroid/app/Application;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 105
    .local v6, "contentInjectorContext":Landroid/content/Context;
    const-string v7, "com.miui.contentcatcher.Interceptor"

    const/4 v8, 0x1

    .line 106
    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 105
    invoke-static {v7, v8, v9}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lmiui/contentcatcher/InterceptorFactory;->sInterceptorClazz:Ljava/lang/Class;

    .line 107
    if-eqz v0, :cond_a0

    const-string v0, "InterceptorFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initInterceptorClass took "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_79} :catch_94
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_79} :catch_87
    .catch Ljava/lang/Error; {:try_start_26 .. :try_end_79} :catch_7a
    .catchall {:try_start_26 .. :try_end_79} :catchall_a2

    goto :goto_a0

    .line 112
    .end local v6    # "contentInjectorContext":Landroid/content/Context;
    :catch_7a
    move-exception v0

    .line 113
    .local v0, "error":Ljava/lang/Error;
    :try_start_7b
    sget-boolean v6, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    if-eqz v6, :cond_a0

    const-string v6, "InterceptorFactory"

    const-string v7, "Error "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a0

    .line 110
    .end local v0    # "error":Ljava/lang/Error;
    :catch_87
    move-exception v0

    .line 111
    .local v0, "e1":Ljava/lang/Exception;
    sget-boolean v6, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    if-eqz v6, :cond_a0

    const-string v6, "InterceptorFactory"

    const-string v7, "Exception "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a0

    .line 108
    .end local v0    # "e1":Ljava/lang/Exception;
    :catch_94
    move-exception v0

    .line 109
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v6, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    if-eqz v6, :cond_a0

    const-string v6, "InterceptorFactory"

    const-string v7, "NameNotFoundException"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "start":J
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "initialApplication":Landroid/app/Application;
    :cond_a0
    :goto_a0
    monitor-exit v1

    goto :goto_a5

    :catchall_a2
    move-exception v0

    monitor-exit v1
    :try_end_a4
    .catchall {:try_start_7b .. :try_end_a4} :catchall_a2

    throw v0

    .line 119
    :cond_a5
    :goto_a5
    sget-object v0, Lmiui/contentcatcher/InterceptorFactory;->sInterceptorClazz:Ljava/lang/Class;

    return-object v0
.end method
