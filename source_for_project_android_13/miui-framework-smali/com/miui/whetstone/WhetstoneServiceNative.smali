.class public Lcom/miui/whetstone/WhetstoneServiceNative;
.super Lcom/miui/whetstone/IWhetstone$Stub;
.source "WhetstoneServiceNative.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/miui/whetstone/IWhetstone$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist log(I[B)V
    .registers 3
    .param p1, "tag"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist recordRTCWakeupInfo(ILandroid/app/PendingIntent;Z)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "operation"    # Landroid/app/PendingIntent;
    .param p3, "status"    # Z

    .line 35
    return-void
.end method

.method public blacklist registerMiuiWhetstoneCloudSync(Landroid/content/ComponentName;Lcom/miui/whetstone/CloudControlInfo;)I
    .registers 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "info"    # Lcom/miui/whetstone/CloudControlInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerMiuiWhetstoneCloudSyncList(Landroid/content/ComponentName;Ljava/util/List;)I
    .registers 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Lcom/miui/whetstone/CloudControlInfo;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    .local p2, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/whetstone/CloudControlInfo;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterMiuiWhetstoneCloudSync(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    return v0
.end method
