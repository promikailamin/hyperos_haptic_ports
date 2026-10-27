.class Lmiui/app/MiuiMultiWinSplitManager$1;
.super Landroid/util/Singleton;
.source "MiuiMultiWinSplitManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/MiuiMultiWinSplitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lmiui/app/IMiuiMultiWinSplitManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .registers 2

    .line 19
    invoke-virtual {p0}, Lmiui/app/MiuiMultiWinSplitManager$1;->create()Lmiui/app/IMiuiMultiWinSplitManager;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist create()Lmiui/app/IMiuiMultiWinSplitManager;
    .registers 5

    .line 22
    :try_start_0
    invoke-static {}, Lcom/xiaomi/multiwin/MiuiMultiWinReflectStub;->getInstance()Lcom/xiaomi/multiwin/MiuiMultiWinReflectStub;

    move-result-object v0

    .line 23
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    const-string v2, "getMiuiMultiWinSplitService"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 22
    invoke-interface {v0, v1, v2, v3}, Lcom/xiaomi/multiwin/MiuiMultiWinReflectStub;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lmiui/app/IMiuiMultiWinSplitManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/IMiuiMultiWinSplitManager;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    return-object v0

    .line 24
    :catch_18
    move-exception v0

    .line 25
    .local v0, "exception":Ljava/lang/Exception;
    throw v0
.end method
