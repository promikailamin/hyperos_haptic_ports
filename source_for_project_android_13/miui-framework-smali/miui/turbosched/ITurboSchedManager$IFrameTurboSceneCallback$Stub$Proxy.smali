.class Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITurboSchedManager.java"

# interfaces
.implements Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback$Stub;
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

    .line 864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 865
    iput-object p1, p0, Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 866
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 869
    iget-object v0, p0, Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 873
    const-string v0, "miui.turbosched.ITurboSchedManager.IFrameTurboSceneCallback"

    return-object v0
.end method

.method public whitelist onSceneChanged(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "sceneId"    # Ljava/lang/String;
    .param p3, "start"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 877
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 879
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "miui.turbosched.ITurboSchedManager.IFrameTurboSceneCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 880
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 881
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 882
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 883
    iget-object v1, p0, Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_1e

    .line 886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 887
    nop

    .line 888
    return-void

    .line 886
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 887
    throw v1
.end method
