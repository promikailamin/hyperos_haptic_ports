.class public Lmiui/app/MiuiMultiWinSplitManager;
.super Ljava/lang/Object;
.source "MiuiMultiWinSplitManager.java"


# static fields
.field private static final blacklist IActivityTaskManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lmiui/app/IMiuiMultiWinSplitManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "MiuiMultiWinSplitManager"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Lmiui/app/MiuiMultiWinSplitManager$1;

    invoke-direct {v0}, Lmiui/app/MiuiMultiWinSplitManager$1;-><init>()V

    sput-object v0, Lmiui/app/MiuiMultiWinSplitManager;->IActivityTaskManagerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist adjustToSplitWindingMode(Landroid/os/IBinder;)I
    .registers 4
    .param p0, "iBinder"    # Landroid/os/IBinder;

    .line 62
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiMultiWinSplitManager;->getService()Lmiui/app/IMiuiMultiWinSplitManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiMultiWinSplitManager;->adjustToSplitWindingMode(Landroid/os/IBinder;)I

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 63
    :catch_9
    move-exception v0

    .line 64
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, "MiuiMultiWinSplitManager"

    const-string v2, "isSupportDragForMultiWin failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .end local v0    # "exception":Ljava/lang/Exception;
    const/4 v0, -0x1

    return v0
.end method

.method private static blacklist getService()Lmiui/app/IMiuiMultiWinSplitManager;
    .registers 1

    .line 31
    sget-object v0, Lmiui/app/MiuiMultiWinSplitManager;->IActivityTaskManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/IMiuiMultiWinSplitManager;

    return-object v0
.end method

.method public static blacklist getSplitRootTasksPos(I)Landroid/os/Bundle;
    .registers 4
    .param p0, "displayId"    # I

    .line 44
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiMultiWinSplitManager;->getService()Lmiui/app/IMiuiMultiWinSplitManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiMultiWinSplitManager;->getSplitRootTasksPos(I)Landroid/os/Bundle;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 45
    :catch_9
    move-exception v0

    .line 46
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, "MiuiMultiWinSplitManager"

    const-string v2, "getSplitRootTasksPos failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .end local v0    # "exception":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getTouchOffsetInTask(Landroid/os/IBinder;Landroid/graphics/Point;)Z
    .registers 5
    .param p0, "iBinder"    # Landroid/os/IBinder;
    .param p1, "point"    # Landroid/graphics/Point;

    .line 71
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiMultiWinSplitManager;->getService()Lmiui/app/IMiuiMultiWinSplitManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lmiui/app/IMiuiMultiWinSplitManager;->getTouchOffsetInTask(Landroid/os/IBinder;Landroid/graphics/Point;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 72
    :catch_9
    move-exception v0

    .line 73
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, "MiuiMultiWinSplitManager"

    const-string v2, "getTouchOffsetInTask failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .end local v0    # "exception":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist handleMultiWindowSwitch(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 5
    .param p0, "iBinder"    # Landroid/os/IBinder;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 36
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiMultiWinSplitManager;->getService()Lmiui/app/IMiuiMultiWinSplitManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lmiui/app/IMiuiMultiWinSplitManager;->handleMultiWindowSwitch(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 39
    goto :goto_10

    .line 37
    :catch_8
    move-exception v0

    .line 38
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, "MiuiMultiWinSplitManager"

    const-string v2, "handleMultiWindowSwitch failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_10
    return-void
.end method

.method public static blacklist isSupportDragForMultiWin(Landroid/os/IBinder;)Z
    .registers 4
    .param p0, "iBinder"    # Landroid/os/IBinder;

    .line 53
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiMultiWinSplitManager;->getService()Lmiui/app/IMiuiMultiWinSplitManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiMultiWinSplitManager;->isSupportDragForMultiWin(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 54
    :catch_9
    move-exception v0

    .line 55
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, "MiuiMultiWinSplitManager"

    const-string v2, "isSupportDragForMultiWin failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .end local v0    # "exception":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method
