.class Lmiui/mqsas/ICnssStatisticListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICnssStatisticListener.java"

# interfaces
.implements Lmiui/mqsas/ICnssStatisticListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/mqsas/ICnssStatisticListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lmiui/mqsas/ICnssStatisticListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 90
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 93
    iget-object v0, p0, Lmiui/mqsas/ICnssStatisticListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 97
    const-string v0, "miui.mqsas.ICnssStatisticListener"

    return-object v0
.end method

.method public blacklist onWakeupEvent(IIII)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "src_port"    # I
    .param p3, "dst_port"    # I
    .param p4, "proto_subtype"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 102
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 104
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "miui.mqsas.ICnssStatisticListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v2, p0, Lmiui/mqsas/ICnssStatisticListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 110
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2c

    .line 113
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 115
    nop

    .line 116
    return-void

    .line 113
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 115
    throw v2
.end method
