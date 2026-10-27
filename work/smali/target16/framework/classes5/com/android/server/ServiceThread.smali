.class public Lcom/android/server/ServiceThread;
.super Landroid/os/HandlerThread;
.source "ServiceThread.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ServiceThread"


# instance fields
.field private final blacklist mAllowIo:Z


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;IZ)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-boolean p3, p0, Lcom/android/server/ServiceThread;->mAllowIo:Z

    .line 38
    return-void
.end method

.method protected static blacklist makeSharedHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .registers 5

    .line 50
    new-instance v0, Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;ZZ)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 42
    iget-boolean v0, p0, Lcom/android/server/ServiceThread;->mAllowIo:Z

    if-nez v0, :cond_8

    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/StrictMode;->initThreadDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 46
    :cond_8
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    .line 47
    return-void
.end method
