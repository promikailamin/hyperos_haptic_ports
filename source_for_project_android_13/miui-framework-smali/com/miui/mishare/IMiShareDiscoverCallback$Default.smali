.class public Lcom/miui/mishare/IMiShareDiscoverCallback$Default;
.super Ljava/lang/Object;
.source "IMiShareDiscoverCallback.java"

# interfaces
.implements Lcom/miui/mishare/IMiShareDiscoverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/IMiShareDiscoverCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onDeviceLost(Ljava/lang/String;)V
    .registers 2
    .param p1, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method

.method public blacklist onDeviceUpdated(Lcom/miui/mishare/RemoteDevice;)V
    .registers 2
    .param p1, "device"    # Lcom/miui/mishare/RemoteDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method
