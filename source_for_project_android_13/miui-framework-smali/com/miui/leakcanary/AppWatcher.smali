.class public Lcom/miui/leakcanary/AppWatcher;
.super Ljava/lang/Object;
.source "AppWatcher.java"


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist PERSIST_LEAKCANARY_ENABLE:Ljava/lang/String; = "persist.sys.stability.leakcanary.enable"

.field public static final blacklist TAG:Ljava/lang/String; = "AppWatcher"

.field private static blacklist isInstalled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    sget-boolean v0, Lmiui/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/miui/leakcanary/AppWatcher;->DEBUG:Z

    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/leakcanary/AppWatcher;->isInstalled:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getObjectWatcher()Lcom/miui/leakcanary/ObjectWatcher;
    .registers 1

    .line 72
    invoke-static {}, Lcom/miui/leakcanary/ObjectWatcher;->getInstance()Lcom/miui/leakcanary/ObjectWatcher;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist init(Landroid/app/Application;)V
    .registers 4
    .param p0, "application"    # Landroid/app/Application;

    .line 29
    :try_start_0
    invoke-static {}, Lcom/miui/leakcanary/AppWatcher;->isLeakcanaryEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 30
    invoke-static {p0}, Lcom/miui/leakcanary/AppWatcher;->install(Landroid/app/Application;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 34
    :cond_9
    goto :goto_16

    .line 32
    :catch_a
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/miui/leakcanary/AppWatcher;->DEBUG:Z

    if-eqz v1, :cond_16

    const-string v1, "AppWatcher"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_16
    :goto_16
    return-void
.end method

.method public static blacklist install(Landroid/app/Application;)V
    .registers 6
    .param p0, "application"    # Landroid/app/Application;

    .line 38
    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "AppWatcher"

    if-nez v0, :cond_1a

    .line 39
    sget-boolean v0, Lcom/miui/leakcanary/AppWatcher;->DEBUG:Z

    if-eqz v0, :cond_19

    const-string v0, "Should be called from the main process."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_19
    return-void

    .line 42
    :cond_1a
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v0, v2, :cond_32

    .line 43
    sget-boolean v0, Lcom/miui/leakcanary/AppWatcher;->DEBUG:Z

    if-eqz v0, :cond_31

    const-string v0, "Should be called from the main thread."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_31
    return-void

    .line 46
    :cond_32
    invoke-static {}, Lcom/miui/leakcanary/HeapDumpTrigger;->supportForkDump()Z

    move-result v0

    if-nez v0, :cond_42

    .line 47
    sget-boolean v0, Lcom/miui/leakcanary/AppWatcher;->DEBUG:Z

    if-eqz v0, :cond_41

    const-string v0, "Not support fork dump hprof."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_41
    return-void

    .line 50
    :cond_42
    sget-boolean v0, Lcom/miui/leakcanary/AppWatcher;->isInstalled:Z

    if-eqz v0, :cond_50

    .line 51
    sget-boolean v0, Lcom/miui/leakcanary/AppWatcher;->DEBUG:Z

    if-eqz v0, :cond_4f

    const-string v0, "AppWatcher already installed."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_4f
    return-void

    .line 54
    :cond_50
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/leakcanary/AppWatcher;->isInstalled:Z

    .line 56
    new-instance v0, Lcom/miui/leakcanary/HeapDumpTrigger;

    invoke-direct {v0, p0}, Lcom/miui/leakcanary/HeapDumpTrigger;-><init>(Landroid/app/Application;)V

    .line 57
    .local v0, "trigger":Lcom/miui/leakcanary/HeapDumpTrigger;
    new-instance v1, Lcom/miui/leakcanary/VisibilityTracker;

    invoke-direct {v1, p0}, Lcom/miui/leakcanary/VisibilityTracker;-><init>(Landroid/app/Application;)V

    .line 58
    .local v1, "tracker":Lcom/miui/leakcanary/VisibilityTracker;
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/miui/leakcanary/AppWatcher$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/miui/leakcanary/AppWatcher$$ExternalSyntheticLambda0;-><init>(Lcom/miui/leakcanary/HeapDumpTrigger;)V

    invoke-virtual {v1, v2}, Lcom/miui/leakcanary/VisibilityTracker;->registerVisibilityListener(Lcom/miui/leakcanary/OnVisibilityChangedListener;)V

    .line 61
    :try_start_68
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v2, "watchers":Ljava/util/List;, "Ljava/util/List<Lcom/miui/leakcanary/InstallableWatcher;>;"
    new-instance v3, Lcom/miui/leakcanary/ActivityWatcher;

    invoke-direct {v3, p0}, Lcom/miui/leakcanary/ActivityWatcher;-><init>(Landroid/app/Application;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_79
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_89

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/leakcanary/InstallableWatcher;

    .line 64
    .local v4, "watcher":Lcom/miui/leakcanary/InstallableWatcher;
    invoke-interface {v4}, Lcom/miui/leakcanary/InstallableWatcher;->install()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_88} :catch_8a

    .line 65
    .end local v4    # "watcher":Lcom/miui/leakcanary/InstallableWatcher;
    goto :goto_79

    .line 68
    .end local v2    # "watchers":Ljava/util/List;, "Ljava/util/List<Lcom/miui/leakcanary/InstallableWatcher;>;"
    :cond_89
    goto :goto_8b

    .line 66
    :catch_8a
    move-exception v2

    .line 69
    :goto_8b
    return-void
.end method

.method public static blacklist isInstalled()Z
    .registers 1

    .line 24
    sget-boolean v0, Lcom/miui/leakcanary/AppWatcher;->isInstalled:Z

    return v0
.end method

.method public static blacklist isLeakcanaryEnabled()Z
    .registers 4

    .line 76
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v1, "AppWatcher"

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 77
    sget-boolean v0, Lcom/miui/leakcanary/AppWatcher;->DEBUG:Z

    if-eqz v0, :cond_10

    const-string v0, "leakcanary only supports china mainland."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_10
    return v2

    .line 80
    :cond_11
    invoke-static {}, Lmiui/mqsas/scout/ScoutUtils;->isUnReleased()Z

    move-result v0

    if-nez v0, :cond_21

    .line 81
    sget-boolean v0, Lcom/miui/leakcanary/AppWatcher;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "leakcanary only supports unreleased device."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_20
    return v2

    .line 84
    :cond_21
    invoke-static {}, Lmiui/mqsas/sdk/ApplicationInfoStorage;->getInstance()Lmiui/mqsas/sdk/ApplicationInfoStorage;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/mqsas/sdk/ApplicationInfoStorage;->getIsSystem()Z

    move-result v0

    if-nez v0, :cond_35

    .line 85
    sget-boolean v0, Lcom/miui/leakcanary/AppWatcher;->DEBUG:Z

    if-eqz v0, :cond_34

    const-string v0, "leakcanary only supports system apps."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_34
    return v2

    .line 88
    :cond_35
    const-string v0, "persist.sys.stability.leakcanary.enable"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_48

    .line 89
    sget-boolean v0, Lcom/miui/leakcanary/AppWatcher;->DEBUG:Z

    if-eqz v0, :cond_47

    const-string v0, "leakcanary not enabled."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_47
    return v2

    .line 92
    :cond_48
    return v3
.end method
