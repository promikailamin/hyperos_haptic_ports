.class public Lmiui/process/MiuiApplicationThread;
.super Lmiui/process/IMiuiApplicationThread$Stub;
.source "MiuiApplicationThread.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MiuiApplicationThread"


# instance fields
.field private blacklist mContentPort:Lmiui/util/LongScreenshotUtils$ContentPort;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lmiui/process/IMiuiApplicationThread$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist dumpMessage()Ljava/lang/String;
    .registers 9

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "dumpAll":Ljava/lang/reflect/Method;
    const-string v1, ""

    .line 30
    .local v1, "result":Ljava/lang/String;
    :try_start_3
    const-class v2, Landroid/os/BaseLooper;

    const-string v3, "dumpAll"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v2, v3, v5}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v0, v2

    .line 31
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .line 32
    .local v2, "mainLooper":Landroid/os/Looper;
    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v3, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_24} :catch_26

    move-object v1, v3

    .line 35
    .end local v2    # "mainLooper":Landroid/os/Looper;
    goto :goto_2e

    .line 33
    :catch_26
    move-exception v2

    .line 34
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "MiuiApplicationThread"

    const-string v4, "error in dumpMessage."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2e
    return-object v1
.end method

.method public blacklist getTopWindowColorMode()I
    .registers 2

    .line 41
    iget-object v0, p0, Lmiui/process/MiuiApplicationThread;->mContentPort:Lmiui/util/LongScreenshotUtils$ContentPort;

    if-nez v0, :cond_b

    new-instance v0, Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-direct {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;-><init>()V

    iput-object v0, p0, Lmiui/process/MiuiApplicationThread;->mContentPort:Lmiui/util/LongScreenshotUtils$ContentPort;

    .line 42
    :cond_b
    iget-object v0, p0, Lmiui/process/MiuiApplicationThread;->mContentPort:Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-virtual {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getTopWindowColorMode()I

    move-result v0

    return v0
.end method

.method public blacklist longScreenshot(II)Z
    .registers 4
    .param p1, "cmd"    # I
    .param p2, "navBarHeight"    # I

    .line 22
    iget-object v0, p0, Lmiui/process/MiuiApplicationThread;->mContentPort:Lmiui/util/LongScreenshotUtils$ContentPort;

    if-nez v0, :cond_b

    new-instance v0, Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-direct {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;-><init>()V

    iput-object v0, p0, Lmiui/process/MiuiApplicationThread;->mContentPort:Lmiui/util/LongScreenshotUtils$ContentPort;

    .line 23
    :cond_b
    iget-object v0, p0, Lmiui/process/MiuiApplicationThread;->mContentPort:Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-virtual {v0, p1, p2}, Lmiui/util/LongScreenshotUtils$ContentPort;->longScreenshot(II)Z

    move-result v0

    return v0
.end method
