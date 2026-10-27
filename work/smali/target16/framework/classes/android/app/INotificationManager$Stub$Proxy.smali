.class Landroid/app/INotificationManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "INotificationManager.java"

# interfaces
.implements Landroid/app/INotificationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/INotificationManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 3362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3363
    iput-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 3364
    return-void
.end method


# virtual methods
.method public blacklist addAutomaticZenRule(Landroid/app/AutomaticZenRule;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5797
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5798
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5801
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5802
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5803
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5804
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5805
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x89

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5806
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5807
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 5810
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5812
    nop

    .line 5813
    return-object p1

    .line 5810
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5812
    throw p1
.end method

.method public blacklist allowAssistantAdjustment(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3829
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3830
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3832
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3833
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3834
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3835
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x19

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3836
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 3839
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3841
    nop

    .line 3842
    return-void

    .line 3839
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3841
    throw p1
.end method

.method public blacklist appCanBePromoted(Ljava/lang/String;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6240
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6241
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6244
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6245
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6246
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6247
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xa2

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6248
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6249
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 6252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6254
    nop

    .line 6255
    return p1

    .line 6252
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6254
    throw p1
.end method

.method public greylist-max-o applyAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5184
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5187
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5188
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5189
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5190
    iget-object p2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x65

    invoke-interface {p2, v2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5191
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 5194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5196
    nop

    .line 5197
    return-void

    .line 5194
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5196
    throw p1
.end method

.method public greylist-max-o applyAdjustmentsFromAssistant(Landroid/service/notification/INotificationListener;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/INotificationListener;",
            "Ljava/util/List<",
            "Landroid/service/notification/Adjustment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5200
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5201
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5203
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5204
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5205
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 5206
    iget-object p2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x66

    invoke-interface {p2, v2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5207
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 5210
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5212
    nop

    .line 5213
    return-void

    .line 5210
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5212
    throw p1
.end method

.method public greylist-max-o applyEnqueuedAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5168
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5171
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5172
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5173
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5174
    iget-object p2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x64

    invoke-interface {p2, v2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5175
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 5178
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5180
    nop

    .line 5181
    return-void

    .line 5178
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5180
    throw p1
.end method

.method public greylist-max-o applyRestore([BI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5960
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5961
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5963
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5964
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 5965
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5966
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x92

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5967
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 5970
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5971
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5972
    nop

    .line 5973
    return-void

    .line 5970
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5971
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5972
    throw p1
.end method

.method public blacklist areBubblesAllowed(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3911
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3912
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3915
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3916
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3917
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3918
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3919
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3922
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3924
    nop

    .line 3925
    return p1

    .line 3922
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3924
    throw p1
.end method

.method public blacklist areBubblesEnabled(Landroid/os/UserHandle;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3929
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3930
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3933
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3934
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3935
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3936
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3937
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3940
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3942
    nop

    .line 3943
    return p1

    .line 3940
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3942
    throw p1
.end method

.method public greylist-max-o areChannelsBypassingDnd()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4485
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4486
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4489
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4490
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4491
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4492
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 4495
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4497
    nop

    .line 4498
    return v2

    .line 4495
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4497
    throw v2
.end method

.method public greylist-max-o areNotificationsEnabled(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3738
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3742
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3743
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3744
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3745
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3746
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3749
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3751
    nop

    .line 3752
    return p1

    .line 3749
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3751
    throw p1
.end method

.method public greylist areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3719
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3720
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3723
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3724
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3725
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3726
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x13

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3727
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3728
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 3731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3733
    nop

    .line 3734
    return p1

    .line 3731
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3733
    throw p1
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 3367
    iget-object v0, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist canBePromoted(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6259
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6263
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6264
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6265
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa3

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6266
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6267
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 6270
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6272
    nop

    .line 6273
    return p1

    .line 6270
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6272
    throw p1
.end method

.method public blacklist canNotifyAsPackage(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6029
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6030
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6033
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6034
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6035
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6036
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6037
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x96

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6038
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6039
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 6042
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6044
    nop

    .line 6045
    return p1

    .line 6042
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6044
    throw p1
.end method

.method public greylist-max-o canShowBadge(Ljava/lang/String;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3568
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3569
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3572
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3573
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3574
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3575
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xb

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3576
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3577
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 3580
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3582
    nop

    .line 3583
    return p1

    .line 3580
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3582
    throw p1
.end method

.method public blacklist canUseFullScreenIntent(Landroid/content/AttributionSource;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6049
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6050
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6053
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6054
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6055
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x97

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6056
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6057
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 6060
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6062
    nop

    .line 6063
    return p1

    .line 6060
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6062
    throw p1
.end method

.method public greylist-max-o cancelAllNotifications(Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3375
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3378
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3379
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3380
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3381
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3382
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 3385
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3387
    nop

    .line 3388
    return-void

    .line 3385
    :catchall_29
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3387
    throw p1
.end method

.method public greylist-max-o cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4757
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4758
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4760
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4761
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4762
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4763
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4764
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4765
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x4c

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4766
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 4769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4771
    nop

    .line 4772
    return-void

    .line 4769
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4771
    throw p1
.end method

.method public blacklist cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3513
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3514
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3516
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3517
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3518
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3519
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3520
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3521
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3522
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x8

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3523
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 3526
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3528
    nop

    .line 3529
    return-void

    .line 3526
    :catchall_33
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3528
    throw p1
.end method

.method public greylist-max-o cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4775
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4776
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4778
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4779
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4780
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4781
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x4d

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4782
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 4785
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4787
    nop

    .line 4788
    return-void

    .line 4785
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4787
    throw p1
.end method

.method public blacklist cancelToast(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3461
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3464
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3465
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3466
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3467
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x5

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3468
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 3471
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3473
    nop

    .line 3474
    return-void

    .line 3471
    :catchall_29
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3473
    throw p1
.end method

.method public blacklist cleanUpCallersAfter(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5283
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5284
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5286
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5287
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 5288
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x6b

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5289
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 5292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5294
    nop

    .line 5295
    return-void

    .line 5292
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5294
    throw p1
.end method

.method public greylist-max-o clearData(Ljava/lang/String;IZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3391
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3392
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3394
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3395
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3396
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3397
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3398
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3399
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 3402
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3404
    nop

    .line 3405
    return-void

    .line 3402
    :catchall_2c
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3404
    throw p1
.end method

.method public blacklist clearRequestedListenerHints(Landroid/service/notification/INotificationListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4955
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4956
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4958
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4959
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4960
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x58

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4961
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 4964
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4966
    nop

    .line 4967
    return-void

    .line 4964
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4966
    throw p1
.end method

.method public blacklist createConversationNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4241
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4244
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4245
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4246
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4247
    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4248
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4249
    iget-object p2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x30

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4250
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 4253
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4255
    nop

    .line 4256
    return-void

    .line 4253
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4255
    throw p1
.end method

.method public blacklist createConversationNotificationChannelForPackageFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5088
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5089
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5092
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5093
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5094
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5095
    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5096
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5097
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5098
    iget-object p2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x60

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5099
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5100
    sget-object p1, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannel;
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_3b

    .line 5103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5105
    nop

    .line 5106
    return-object p1

    .line 5103
    :catchall_3b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5105
    throw p1
.end method

.method public greylist-max-o createNotificationChannelGroups(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3966
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3967
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3969
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3970
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3971
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3972
    iget-object p2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x21

    invoke-interface {p2, v2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3973
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 3976
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3977
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3978
    nop

    .line 3979
    return-void

    .line 3976
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3977
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3978
    throw p1
.end method

.method public greylist-max-o createNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3982
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3983
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3985
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3986
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3987
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3988
    iget-object p2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x22

    invoke-interface {p2, v2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3989
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 3992
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3994
    nop

    .line 3995
    return-void

    .line 3992
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3994
    throw p1
.end method

.method public greylist-max-o createNotificationChannelsForPackage(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3998
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3999
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4001
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4002
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4003
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4004
    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4005
    iget-object p2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x23

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4006
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 4009
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4011
    nop

    .line 4012
    return-void

    .line 4009
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4011
    throw p1
.end method

.method public greylist-max-o deleteNotificationChannel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4281
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4284
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4285
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4286
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4287
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x32

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4288
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 4291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4293
    nop

    .line 4294
    return-void

    .line 4291
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4293
    throw p1
.end method

.method public greylist-max-o deleteNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4395
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4396
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4398
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4399
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4400
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4401
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x38

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4402
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 4405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4407
    nop

    .line 4408
    return-void

    .line 4405
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4407
    throw p1
.end method

.method public blacklist deleteNotificationHistoryItem(Ljava/lang/String;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4575
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4576
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4578
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4579
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4580
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4581
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 4582
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x42

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4583
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 4586
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4587
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4588
    nop

    .line 4589
    return-void

    .line 4586
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4587
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4588
    throw p1
.end method

.method public blacklist disallowAssistantAdjustment(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3845
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3846
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3848
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3849
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3850
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3851
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x1a

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3852
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 3855
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3857
    nop

    .line 3858
    return-void

    .line 3855
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3857
    throw p1
.end method

.method public greylist-max-o enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3493
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3496
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3497
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3498
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3499
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3500
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3501
    const/4 p1, 0x0

    invoke-virtual {v0, p5, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3502
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3503
    iget-object p2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p3, 0x7

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3504
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 3507
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3509
    nop

    .line 3510
    return-void

    .line 3507
    :catchall_35
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3509
    throw p1
.end method

.method public blacklist enqueueTextToast(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;IZILandroid/app/ITransientNotificationCallback;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3408
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3412
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3413
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3414
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3415
    const/4 p1, 0x0

    if-eqz p3, :cond_22

    .line 3416
    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3417
    invoke-static {p3, v0, p1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_25

    .line 3420
    :cond_22
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3422
    :goto_25
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3423
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3424
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3425
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3426
    iget-object p2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p3, 0x3

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3427
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3428
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_3e
    .catchall {:try_start_c .. :try_end_3e} :catchall_46

    .line 3431
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3433
    nop

    .line 3434
    return p1

    .line 3431
    :catchall_46
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3433
    throw p1
.end method

.method public blacklist enqueueToast(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/ITransientNotification;IZI)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3438
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3439
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3442
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3443
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3444
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3445
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3446
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3447
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3448
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3449
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x4

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3450
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3451
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_39

    .line 3454
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3456
    nop

    .line 3457
    return p1

    .line 3454
    :catchall_39
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3456
    throw p1
.end method

.method public blacklist finishToken(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3477
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3478
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3480
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3481
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3482
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3483
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x6

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3484
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 3487
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3489
    nop

    .line 3490
    return-void

    .line 3487
    :catchall_29
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3489
    throw p1
.end method

.method public greylist-max-o getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4627
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4628
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4631
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4632
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4633
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x45

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4634
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4635
    sget-object p1, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/service/notification/StatusBarNotification;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 4638
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4640
    nop

    .line 4641
    return-object p1

    .line 4638
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4640
    throw p1
.end method

.method public greylist-max-o getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4916
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4917
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4920
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4921
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4922
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4923
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4924
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x56

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4925
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4926
    sget-object p1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ParceledListSlice;
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 4929
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4931
    nop

    .line 4932
    return-object p1

    .line 4929
    :catchall_35
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4931
    throw p1
.end method

.method public blacklist getActiveNotificationsWithAttribution(Ljava/lang/String;Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4645
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4646
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4649
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4650
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4651
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4652
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x46

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4653
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4654
    sget-object p1, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/service/notification/StatusBarNotification;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 4657
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4658
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4659
    nop

    .line 4660
    return-object p1

    .line 4657
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4658
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4659
    throw p1
.end method

.method public blacklist getAdjustmentDeniedPackages(ILjava/lang/String;)[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6344
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6345
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6348
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6349
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6350
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6351
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xa8

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6352
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6353
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 6356
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6358
    nop

    .line 6359
    return-object p1

    .line 6356
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6358
    throw p1
.end method

.method public blacklist getAllowedAssistantAdjustments(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3793
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3794
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3797
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3798
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3799
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3800
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3801
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3804
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3806
    nop

    .line 3807
    return-object p1

    .line 3804
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3806
    throw p1
.end method

.method public blacklist getAllowedAssistantAdjustmentsForUser(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3811
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3812
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3815
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3816
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3817
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x18

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3818
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3819
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3822
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3824
    nop

    .line 3825
    return-object p1

    .line 3822
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3824
    throw p1
.end method

.method public blacklist getAllowedClassificationTypes()[I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6311
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6312
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6315
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6316
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6317
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6318
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 6321
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6323
    nop

    .line 6324
    return-object v2

    .line 6321
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6323
    throw v2
.end method

.method public blacklist getAllowedNotificationAssistant()Landroid/content/ComponentName;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5492
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5496
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5497
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x77

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5498
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5499
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 5502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5504
    nop

    .line 5505
    return-object v2

    .line 5502
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5504
    throw v2
.end method

.method public blacklist getAllowedNotificationAssistantForUser(I)Landroid/content/ComponentName;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5474
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5475
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5478
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5479
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5480
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x76

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5481
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5482
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 5485
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5487
    nop

    .line 5488
    return-object p1

    .line 5485
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5487
    throw p1
.end method

.method public greylist-max-o getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5976
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5977
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5980
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5981
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5982
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5983
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x93

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5984
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5985
    sget-object p1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ParceledListSlice;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 5988
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5990
    nop

    .line 5991
    return-object p1

    .line 5988
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5990
    throw p1
.end method

.method public greylist-max-o getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5762
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5763
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5766
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5767
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5768
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x87

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5769
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5770
    sget-object p1, Landroid/app/AutomaticZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AutomaticZenRule;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 5773
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5775
    nop

    .line 5776
    return-object p1

    .line 5773
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5775
    throw p1
.end method

.method public blacklist getAutomaticZenRuleState(Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5893
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5894
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5897
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5898
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5899
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8e

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5900
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5901
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 5904
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5906
    nop

    .line 5907
    return p1

    .line 5904
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5906
    throw p1
.end method

.method public blacklist getAutomaticZenRules()Landroid/content/pm/ParceledListSlice;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5780
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5781
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5784
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5785
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x88

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5786
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5787
    sget-object v2, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ParceledListSlice;
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 5790
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5791
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5792
    nop

    .line 5793
    return-object v2

    .line 5790
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5791
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5792
    throw v2
.end method

.method public greylist-max-o getBackupPayload(I)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5942
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5943
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5946
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5947
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5948
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x91

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5949
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5950
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 5953
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5954
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5955
    nop

    .line 5956
    return-object p1

    .line 5953
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5954
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5955
    throw p1
.end method

.method public greylist-max-o getBlockedChannelCount(Ljava/lang/String;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4376
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4380
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4381
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4382
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4383
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x37

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4384
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4385
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 4388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4390
    nop

    .line 4391
    return p1

    .line 4388
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4390
    throw p1
.end method

.method public blacklist getBubblePreferenceForPackage(Ljava/lang/String;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3947
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3948
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3951
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3952
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3953
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3954
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x20

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3955
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3956
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 3959
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3961
    nop

    .line 3962
    return p1

    .line 3959
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3961
    throw p1
.end method

.method public blacklist getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5595
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5596
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5599
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5600
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5601
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5602
    sget-object v2, Landroid/app/NotificationManager$Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager$Policy;
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 5605
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5607
    nop

    .line 5608
    return-object v2

    .line 5605
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5607
    throw v2
.end method

.method public blacklist getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/NotificationChannel;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4218
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4222
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4223
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4224
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4225
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4226
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4227
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4228
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4229
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x2f

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4230
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4231
    sget-object p1, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannel;
    :try_end_36
    .catchall {:try_start_c .. :try_end_36} :catchall_3e

    .line 4234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4236
    nop

    .line 4237
    return-object p1

    .line 4234
    :catchall_3e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4236
    throw p1
.end method

.method public blacklist getConversations(Z)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4015
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4016
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4019
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4020
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4021
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x24

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4022
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4023
    sget-object p1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ParceledListSlice;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 4026
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4028
    nop

    .line 4029
    return-object p1

    .line 4026
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4028
    throw p1
.end method

.method public blacklist getConversationsForPackage(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4033
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4034
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4037
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4038
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4039
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4040
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x25

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4041
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4042
    sget-object p1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ParceledListSlice;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 4045
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4047
    nop

    .line 4048
    return-object p1

    .line 4045
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4047
    throw p1
.end method

.method public blacklist getDefaultNotificationAssistant()Landroid/content/ComponentName;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5509
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5510
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5513
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5514
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x78

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5515
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5516
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 5519
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5521
    nop

    .line 5522
    return-object v2

    .line 5519
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5521
    throw v2
.end method

.method public blacklist getDefaultZenPolicy()Landroid/service/notification/ZenPolicy;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5745
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5746
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5749
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5750
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x86

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5751
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5752
    sget-object v2, Landroid/service/notification/ZenPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenPolicy;
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 5755
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5756
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5757
    nop

    .line 5758
    return-object v2

    .line 5755
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5756
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5757
    throw v2
.end method

.method public greylist-max-o getDeletedChannelCount(Ljava/lang/String;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4357
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4358
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4361
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4362
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4363
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4364
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x36

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4365
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4366
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 4369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4371
    nop

    .line 4372
    return p1

    .line 4369
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4371
    throw p1
.end method

.method public greylist-max-o getEffectsSuppressor()Landroid/content/ComponentName;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5248
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5249
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5252
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5253
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x69

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5254
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5255
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 5258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5260
    nop

    .line 5261
    return-object v2

    .line 5258
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5260
    throw v2
.end method

.method public greylist-max-o getEnabledNotificationListenerPackages()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5439
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5443
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5444
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x74

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5445
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5446
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 5449
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5451
    nop

    .line 5452
    return-object v2

    .line 5449
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5451
    throw v2
.end method

.method public greylist-max-o getEnabledNotificationListeners(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5456
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5460
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5461
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5462
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x75

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5463
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5464
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 5467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5469
    nop

    .line 5470
    return-object p1

    .line 5467
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5469
    throw p1
.end method

.method public greylist-max-o getHintsFromListener(Landroid/service/notification/INotificationListener;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4986
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4987
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4990
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4991
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4992
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x5a

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4993
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4994
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 4997
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4998
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4999
    nop

    .line 5000
    return p1

    .line 4997
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4998
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4999
    throw p1
.end method

.method public blacklist getHintsFromListenerNoToken()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5004
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5005
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5008
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5009
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5010
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5011
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 5014
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5016
    nop

    .line 5017
    return v2

    .line 5014
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5016
    throw v2
.end method

.method public blacklist getHistoricalNotifications(Ljava/lang/String;IZ)[Landroid/service/notification/StatusBarNotification;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4664
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4665
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4668
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4669
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4670
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4671
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4672
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x47

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4673
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4674
    sget-object p1, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/service/notification/StatusBarNotification;
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 4677
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4679
    nop

    .line 4680
    return-object p1

    .line 4677
    :catchall_35
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4679
    throw p1
.end method

.method public blacklist getHistoricalNotificationsWithAttribution(Ljava/lang/String;Ljava/lang/String;IZ)[Landroid/service/notification/StatusBarNotification;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4684
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4685
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4688
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4689
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4690
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4691
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4692
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4693
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x48

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4694
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4695
    sget-object p1, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/service/notification/StatusBarNotification;
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_38

    .line 4698
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4700
    nop

    .line 4701
    return-object p1

    .line 4698
    :catchall_38
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4700
    throw p1
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 3371
    const-string v0, "android.app.INotificationManager"

    return-object v0
.end method

.method public greylist-max-o getInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5037
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5038
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5041
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5042
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5043
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x5d

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5044
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5045
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 5048
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5050
    nop

    .line 5051
    return p1

    .line 5048
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5050
    throw p1
.end method

.method public blacklist getListenerFilter(Landroid/content/ComponentName;I)Landroid/service/notification/NotificationListenerFilter;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6120
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6124
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6125
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6126
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6127
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x9b

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6128
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6129
    sget-object p1, Landroid/service/notification/NotificationListenerFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/NotificationListenerFilter;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 6132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6134
    nop

    .line 6135
    return-object p1

    .line 6132
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6134
    throw p1
.end method

.method public blacklist getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4197
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4201
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4202
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4203
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4204
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4205
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4206
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x2e

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4207
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4208
    sget-object p1, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannel;
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_38

    .line 4211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4213
    nop

    .line 4214
    return-object p1

    .line 4211
    :catchall_38
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4213
    throw p1
.end method

.method public blacklist getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4259
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4263
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4264
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4265
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4266
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4267
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4268
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4269
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x31

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4270
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4271
    sget-object p1, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannel;
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_3b

    .line 4274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4276
    nop

    .line 4277
    return-object p1

    .line 4274
    :catchall_3b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4276
    throw p1
.end method

.method public greylist-max-o getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannelGroup;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4411
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4412
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4415
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4416
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4417
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4418
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x39

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4419
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4420
    sget-object p1, Landroid/app/NotificationChannelGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannelGroup;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 4423
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4425
    nop

    .line 4426
    return-object p1

    .line 4423
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4425
    throw p1
.end method

.method public greylist-max-o getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4072
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4073
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4076
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4077
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4078
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4079
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4080
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x27

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4081
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4082
    sget-object p1, Landroid/app/NotificationChannelGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannelGroup;
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 4085
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4086
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4087
    nop

    .line 4088
    return-object p1

    .line 4085
    :catchall_35
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4086
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4087
    throw p1
.end method

.method public greylist-max-o getNotificationChannelGroups(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4430
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4431
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4434
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4435
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4436
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3a

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4437
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4438
    sget-object p1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ParceledListSlice;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 4441
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4443
    nop

    .line 4444
    return-object p1

    .line 4441
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4443
    throw p1
.end method

.method public greylist-max-o getNotificationChannelGroupsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4052
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4053
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4056
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4057
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4058
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4059
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4060
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x26

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4061
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4062
    sget-object p1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ParceledListSlice;
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 4065
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4066
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4067
    nop

    .line 4068
    return-object p1

    .line 4065
    :catchall_35
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4066
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4067
    throw p1
.end method

.method public greylist-max-o getNotificationChannelGroupsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5148
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5149
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5152
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5153
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5154
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5155
    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5156
    iget-object p2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x63

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5157
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5158
    sget-object p1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ParceledListSlice;
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 5161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5163
    nop

    .line 5164
    return-object p1

    .line 5161
    :catchall_35
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5163
    throw p1
.end method

.method public blacklist getNotificationChannelGroupsWithoutChannels(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4448
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4452
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4453
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4454
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3b

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4455
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4456
    sget-object p1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ParceledListSlice;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 4459
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4461
    nop

    .line 4462
    return-object p1

    .line 4459
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4461
    throw p1
.end method

.method public blacklist getNotificationChannels(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4297
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4301
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4302
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4303
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4304
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4305
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x33

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4306
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4307
    sget-object p1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ParceledListSlice;
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 4310
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4312
    nop

    .line 4313
    return-object p1

    .line 4310
    :catchall_35
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4312
    throw p1
.end method

.method public blacklist getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4502
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4503
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4506
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4507
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4508
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4509
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x3e

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4510
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4511
    sget-object p1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ParceledListSlice;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 4514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4516
    nop

    .line 4517
    return-object p1

    .line 4514
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4516
    throw p1
.end method

.method public greylist-max-o getNotificationChannelsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4317
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4321
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4322
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4323
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4324
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4325
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x34

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4326
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4327
    sget-object p1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ParceledListSlice;
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 4330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4332
    nop

    .line 4333
    return-object p1

    .line 4330
    :catchall_35
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4332
    throw p1
.end method

.method public greylist-max-o getNotificationChannelsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5128
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5132
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5133
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5134
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5135
    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5136
    iget-object p2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x62

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5137
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5138
    sget-object p1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ParceledListSlice;
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 5141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5143
    nop

    .line 5144
    return-object p1

    .line 5141
    :catchall_35
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5143
    throw p1
.end method

.method public blacklist getNotificationDelegate(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6011
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6012
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6015
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6016
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6017
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x95

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6018
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6019
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 6022
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6024
    nop

    .line 6025
    return-object p1

    .line 6022
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6024
    throw p1
.end method

.method public blacklist getNotificationHistory(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationHistory;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4705
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4706
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4709
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4710
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4711
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4712
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x49

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4713
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4714
    sget-object p1, Landroid/app/NotificationHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationHistory;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 4717
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4718
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4719
    nop

    .line 4720
    return-object p1

    .line 4717
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4718
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4719
    throw p1
.end method

.method public greylist-max-o getNotificationPolicy(Ljava/lang/String;)Landroid/app/NotificationManager$Policy;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5659
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5660
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5663
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5664
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5665
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x81

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5666
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5667
    sget-object p1, Landroid/app/NotificationManager$Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager$Policy;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 5670
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5671
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5672
    nop

    .line 5673
    return-object p1

    .line 5670
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5671
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5672
    throw p1
.end method

.method public greylist-max-o getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4337
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4341
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4342
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4343
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4344
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4345
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x35

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4346
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4347
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 4350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4352
    nop

    .line 4353
    return p1

    .line 4350
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4352
    throw p1
.end method

.method public greylist-max-o getPackageImportance(Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3756
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3757
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3760
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3761
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3762
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3763
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3764
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3767
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3769
    nop

    .line 3770
    return p1

    .line 3767
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3769
    throw p1
.end method

.method public blacklist getPackagesBypassingDnd(I)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4521
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4522
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4525
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4526
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4527
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3f

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4528
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4529
    sget-object p1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ParceledListSlice;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 4532
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4534
    nop

    .line 4535
    return-object p1

    .line 4532
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4534
    throw p1
.end method

.method public blacklist getPackagesWithAnyChannels(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4539
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4540
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4543
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4544
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4545
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4546
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4547
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 4550
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4552
    nop

    .line 4553
    return-object p1

    .line 4550
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4552
    throw p1
.end method

.method public greylist-max-o getPopulatedNotificationChannelGroupForPackage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4092
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4093
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4096
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4097
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4098
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4099
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4100
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4101
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x28

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4102
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4103
    sget-object p1, Landroid/app/NotificationChannelGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannelGroup;
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_38

    .line 4106
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4108
    nop

    .line 4109
    return-object p1

    .line 4106
    :catchall_38
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4108
    throw p1
.end method

.method public blacklist getPrivateNotificationsAllowed()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6082
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6083
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6086
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6087
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x99

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6088
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6089
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 6092
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6094
    nop

    .line 6095
    return v2

    .line 6092
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6094
    throw v2
.end method

.method public blacklist getRecentBlockedNotificationChannelGroupsForPackage(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4113
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4117
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4118
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4119
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4120
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x29

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4121
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4122
    sget-object p1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ParceledListSlice;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 4125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4127
    nop

    .line 4128
    return-object p1

    .line 4125
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4127
    throw p1
.end method

.method public greylist-max-o getRuleInstanceCount(Landroid/content/ComponentName;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5875
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5876
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5879
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5880
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5881
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8d

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5882
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5883
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 5886
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5888
    nop

    .line 5889
    return p1

    .line 5886
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5888
    throw p1
.end method

.method public greylist-max-o getSnoozedNotificationsFromListener(Landroid/service/notification/INotificationListener;I)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4936
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4937
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4940
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4941
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4942
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4943
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x57

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4944
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4945
    sget-object p1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ParceledListSlice;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 4948
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4950
    nop

    .line 4951
    return-object p1

    .line 4948
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4950
    throw p1
.end method

.method public blacklist getUnsupportedAdjustmentTypes()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6294
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6298
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6299
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6300
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6301
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 6304
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6306
    nop

    .line 6307
    return-object v2

    .line 6304
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6306
    throw v2
.end method

.method public greylist-max-o getZenMode()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5561
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5562
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5565
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5566
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5567
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5568
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 5571
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5573
    nop

    .line 5574
    return v2

    .line 5571
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5573
    throw v2
.end method

.method public greylist-max-o getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5578
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5579
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5582
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5583
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5584
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5585
    sget-object v2, Landroid/service/notification/ZenModeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig;
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 5588
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5590
    nop

    .line 5591
    return-object v2

    .line 5588
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5590
    throw v2
.end method

.method public blacklist hasEnabledNotificationListener(Ljava/lang/String;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5542
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5543
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5546
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5547
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5548
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5549
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x7a

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5550
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5551
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 5554
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5556
    nop

    .line 5557
    return p1

    .line 5554
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5556
    throw p1
.end method

.method public blacklist hasSentValidBubble(Ljava/lang/String;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3661
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3662
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3665
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3666
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3667
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3668
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x10

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3669
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3670
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 3673
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3675
    nop

    .line 3676
    return p1

    .line 3673
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3675
    throw p1
.end method

.method public blacklist hasSentValidMsg(Ljava/lang/String;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3587
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3588
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3591
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3592
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3593
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3594
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xc

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3595
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3596
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 3599
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3601
    nop

    .line 3602
    return p1

    .line 3599
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3601
    throw p1
.end method

.method public blacklist hasUserDemotedInvalidMsgApp(Ljava/lang/String;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3625
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3626
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3629
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3630
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3631
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3632
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xe

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3633
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3634
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 3637
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3639
    nop

    .line 3640
    return p1

    .line 3637
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3639
    throw p1
.end method

.method public blacklist isAdjustmentSupportedForPackage(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6363
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6364
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6367
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6368
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6369
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6370
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6371
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xa9

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6372
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6373
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 6376
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6378
    nop

    .line 6379
    return p1

    .line 6376
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6378
    throw p1
.end method

.method public blacklist isImportanceLocked(Ljava/lang/String;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3774
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3775
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3778
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3779
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3780
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3781
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x16

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3782
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3783
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 3786
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3788
    nop

    .line 3789
    return p1

    .line 3786
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3788
    throw p1
.end method

.method public blacklist isInCall(Ljava/lang/String;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3532
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3533
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3536
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3537
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3538
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3539
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x9

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3540
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3541
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 3544
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3546
    nop

    .line 3547
    return p1

    .line 3544
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3546
    throw p1
.end method

.method public blacklist isInInvalidMsgState(Ljava/lang/String;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3606
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3607
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3610
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3611
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3612
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3613
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xd

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3614
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3615
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 3618
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3620
    nop

    .line 3621
    return p1

    .line 3618
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3620
    throw p1
.end method

.method public greylist-max-o isNotificationAssistantAccessGranted(Landroid/content/ComponentName;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5353
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5354
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5357
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5358
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5359
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6f

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5360
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5361
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 5364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5366
    nop

    .line 5367
    return p1

    .line 5364
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5366
    throw p1
.end method

.method public greylist-max-o isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5316
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5317
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5320
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5321
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5322
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6d

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5323
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5324
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 5327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5329
    nop

    .line 5330
    return p1

    .line 5327
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5329
    throw p1
.end method

.method public greylist-max-o isNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5334
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5338
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5339
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5340
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5341
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x6e

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5342
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5343
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 5346
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5348
    nop

    .line 5349
    return p1

    .line 5346
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5348
    throw p1
.end method

.method public greylist-max-o isNotificationPolicyAccessGranted(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5641
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5642
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5645
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5646
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5647
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5648
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5649
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 5652
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5654
    nop

    .line 5655
    return p1

    .line 5652
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5654
    throw p1
.end method

.method public greylist-max-o isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5694
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5695
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5698
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5699
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5700
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x83

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5701
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5702
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 5705
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5706
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5707
    nop

    .line 5708
    return p1

    .line 5705
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5706
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5707
    throw p1
.end method

.method public blacklist isPackagePaused(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4557
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4558
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4561
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4562
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4563
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x41

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4564
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4565
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 4568
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4570
    nop

    .line 4571
    return p1

    .line 4568
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4570
    throw p1
.end method

.method public blacklist isPermissionFixed(Ljava/lang/String;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4592
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4593
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4596
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4597
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4598
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4599
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x43

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4600
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4601
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 4604
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4606
    nop

    .line 4607
    return p1

    .line 4604
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4606
    throw p1
.end method

.method public greylist-max-o isSystemConditionProviderEnabled(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5298
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5302
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5303
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5304
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x6c

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5305
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5306
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 5309
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5311
    nop

    .line 5312
    return p1

    .line 5309
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5311
    throw p1
.end method

.method public greylist-max-o matchesCallFilter(Landroid/os/Bundle;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5265
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5266
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5269
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5270
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5271
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6a

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5272
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5273
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 5276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5278
    nop

    .line 5279
    return p1

    .line 5276
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5278
    throw p1
.end method

.method public blacklist migrateNotificationFilter(Landroid/service/notification/INotificationListener;ILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/INotificationListener;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6156
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6159
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6160
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6161
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6162
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6163
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x9d

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6164
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 6167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6169
    nop

    .line 6170
    return-void

    .line 6167
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6169
    throw p1
.end method

.method public greylist-max-o notifyConditions(Ljava/lang/String;Landroid/service/notification/IConditionProvider;[Landroid/service/notification/Condition;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5627
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5629
    :try_start_8
    const-string v1, "android.app.INotificationManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5630
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5631
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5632
    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 5633
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/16 v1, 0x7f

    invoke-interface {p1, v1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 5636
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5637
    nop

    .line 5638
    return-void

    .line 5636
    :catchall_25
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5637
    throw p1
.end method

.method public greylist-max-o onlyHasDefaultChannel(Ljava/lang/String;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4466
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4467
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4470
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4471
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4472
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4473
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x3c

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4474
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4475
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 4478
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4480
    nop

    .line 4481
    return p1

    .line 4478
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4480
    throw p1
.end method

.method public blacklist pullStats(JIZLjava/util/List;)J
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6099
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6103
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6104
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 6105
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6106
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6107
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x9a

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6108
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6109
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 6110
    sget-object p3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p5, p3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 6113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6115
    nop

    .line 6116
    return-wide p1

    .line 6113
    :catchall_36
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6115
    throw p1
.end method

.method public blacklist registerCallNotificationEventListener(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/ICallNotificationEventCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6188
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6189
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6191
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6192
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6193
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6194
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6195
    iget-object p2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x9f

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6196
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 6199
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6201
    nop

    .line 6202
    return-void

    .line 6199
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6201
    throw p1
.end method

.method public greylist-max-o registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4724
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4725
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4727
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4728
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4729
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4730
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4731
    iget-object p2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x4a

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4732
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 4735
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4737
    nop

    .line 4738
    return-void

    .line 4735
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4737
    throw p1
.end method

.method public blacklist removeAutomaticZenRule(Ljava/lang/String;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5837
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5838
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5841
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5842
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5843
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5844
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x8b

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5845
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5846
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 5849
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5851
    nop

    .line 5852
    return p1

    .line 5849
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5851
    throw p1
.end method

.method public blacklist removeAutomaticZenRules(Ljava/lang/String;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5856
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5857
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5860
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5861
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5862
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5863
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x8c

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5864
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5865
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 5868
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5869
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5870
    nop

    .line 5871
    return p1

    .line 5868
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5869
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5870
    throw p1
.end method

.method public greylist-max-o requestBindListener(Landroid/content/ComponentName;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4825
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4826
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4828
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4829
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4830
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x50

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4831
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 4834
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4836
    nop

    .line 4837
    return-void

    .line 4834
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4836
    throw p1
.end method

.method public greylist-max-o requestBindProvider(Landroid/content/ComponentName;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4870
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4871
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4873
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4874
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4875
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x53

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4876
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 4879
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4881
    nop

    .line 4882
    return-void

    .line 4879
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4881
    throw p1
.end method

.method public greylist-max-o requestHintsFromListener(Landroid/service/notification/INotificationListener;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4970
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4971
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4973
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4974
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4975
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4976
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x59

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4977
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 4980
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4981
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4982
    nop

    .line 4983
    return-void

    .line 4980
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4981
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4982
    throw p1
.end method

.method public greylist-max-o requestInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5021
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5022
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5024
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5025
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5026
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5027
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x5c

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5028
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 5031
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5032
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5033
    nop

    .line 5034
    return-void

    .line 5031
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5032
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5033
    throw p1
.end method

.method public greylist-max-o requestUnbindListener(Landroid/service/notification/INotificationListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4840
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4841
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4843
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4844
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4845
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x51

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4846
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 4849
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4851
    nop

    .line 4852
    return-void

    .line 4849
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4851
    throw p1
.end method

.method public blacklist requestUnbindListenerComponent(Landroid/content/ComponentName;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4855
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4856
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4858
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4859
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4860
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x52

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4861
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 4864
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4866
    nop

    .line 4867
    return-void

    .line 4864
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4866
    throw p1
.end method

.method public greylist-max-o requestUnbindProvider(Landroid/service/notification/IConditionProvider;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4885
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4886
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4888
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4889
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4890
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x54

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4891
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 4894
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4895
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4896
    nop

    .line 4897
    return-void

    .line 4894
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4895
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4896
    throw p1
.end method

.method public blacklist setAdjustmentSupportedForPackage(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6383
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6386
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6387
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6388
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6389
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6390
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6391
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xaa

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6392
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 6395
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6397
    nop

    .line 6398
    return-void

    .line 6395
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6397
    throw p1
.end method

.method public blacklist setAdjustmentTypeSupportedState(Landroid/service/notification/INotificationListener;Ljava/lang/String;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6277
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6280
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6281
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6282
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6283
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6284
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xa4

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6285
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 6288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6290
    nop

    .line 6291
    return-void

    .line 6288
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6290
    throw p1
.end method

.method public blacklist setAssistantClassificationTypeState(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6328
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6331
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6332
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6333
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6334
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xa7

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6335
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 6338
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6340
    nop

    .line 6341
    return-void

    .line 6338
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6340
    throw p1
.end method

.method public blacklist setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5911
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5912
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5914
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5915
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5916
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5917
    iget-object p2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8f

    invoke-interface {p2, v2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5918
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 5921
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5923
    nop

    .line 5924
    return-void

    .line 5921
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5923
    throw p1
.end method

.method public blacklist setBubblesAllowed(Ljava/lang/String;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3894
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3895
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3897
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3898
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3899
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3900
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3901
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x1d

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3902
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 3905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3907
    nop

    .line 3908
    return-void

    .line 3905
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3907
    throw p1
.end method

.method public blacklist setCanBePromoted(Ljava/lang/String;IZZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6222
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6223
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6225
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6226
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6227
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6228
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6229
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6230
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xa1

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6231
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 6234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6236
    nop

    .line 6237
    return-void

    .line 6234
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6236
    throw p1
.end method

.method public blacklist setHideSilentStatusIcons(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3879
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3880
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3882
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3883
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3884
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1c

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3885
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 3888
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3889
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3890
    nop

    .line 3891
    return-void

    .line 3888
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3889
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3890
    throw p1
.end method

.method public blacklist setInterruptionFilter(Ljava/lang/String;IZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5071
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5072
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5074
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5075
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5076
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5077
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5078
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x5f

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5079
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 5082
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5083
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5084
    nop

    .line 5085
    return-void

    .line 5082
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5083
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5084
    throw p1
.end method

.method public blacklist setInvalidMsgAppDemoted(Ljava/lang/String;IZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3644
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3645
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3647
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3648
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3649
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3650
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3651
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xf

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3652
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 3655
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3657
    nop

    .line 3658
    return-void

    .line 3655
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3657
    throw p1
.end method

.method public blacklist setListenerFilter(Landroid/content/ComponentName;ILandroid/service/notification/NotificationListenerFilter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6139
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6142
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6143
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6144
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6145
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6146
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x9c

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6147
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 6150
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6152
    nop

    .line 6153
    return-void

    .line 6150
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6152
    throw p1
.end method

.method public blacklist setManualZenRuleDeviceEffects(Landroid/service/notification/ZenDeviceEffects;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5927
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5928
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5930
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5931
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5932
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x90

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5933
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 5936
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5938
    nop

    .line 5939
    return-void

    .line 5936
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5938
    throw p1
.end method

.method public blacklist setNASMigrationDoneAndResetDefault(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5526
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5527
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5529
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5530
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5531
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5532
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x79

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5533
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 5536
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5538
    nop

    .line 5539
    return-void

    .line 5536
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5538
    throw p1
.end method

.method public greylist-max-o setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5388
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5389
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5391
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5392
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5393
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5394
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x71

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5395
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 5398
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5400
    nop

    .line 5401
    return-void

    .line 5398
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5400
    throw p1
.end method

.method public greylist-max-o setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5422
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5423
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5425
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5426
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5427
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5428
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5429
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x73

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5430
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 5433
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5435
    nop

    .line 5436
    return-void

    .line 5433
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5435
    throw p1
.end method

.method public blacklist setNotificationDelegate(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5995
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5996
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5998
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5999
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6000
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6001
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x94

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6002
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 6005
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6006
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6007
    nop

    .line 6008
    return-void

    .line 6005
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6006
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6007
    throw p1
.end method

.method public blacklist setNotificationListenerAccessGranted(Landroid/content/ComponentName;ZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5371
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5374
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5375
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5376
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5377
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5378
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x70

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5379
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 5382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5384
    nop

    .line 5385
    return-void

    .line 5382
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5384
    throw p1
.end method

.method public blacklist setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5404
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5407
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5408
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5409
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5410
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5411
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5412
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x72

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5413
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 5416
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5418
    nop

    .line 5419
    return-void

    .line 5416
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5418
    throw p1
.end method

.method public blacklist setNotificationPolicy(Ljava/lang/String;Landroid/app/NotificationManager$Policy;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5677
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5678
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5680
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5681
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5682
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5683
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5684
    iget-object p2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x82

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5685
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 5688
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5689
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5690
    nop

    .line 5691
    return-void

    .line 5688
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5689
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5690
    throw p1
.end method

.method public greylist-max-o setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5712
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5713
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5715
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5716
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5717
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5718
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x84

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5719
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 5722
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5723
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5724
    nop

    .line 5725
    return-void

    .line 5722
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5723
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5724
    throw p1
.end method

.method public greylist-max-o setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5728
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5729
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5731
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5732
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5733
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5734
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5735
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x85

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5736
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 5739
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5741
    nop

    .line 5742
    return-void

    .line 5739
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5741
    throw p1
.end method

.method public greylist-max-o setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3680
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3681
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3683
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3684
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3685
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3686
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3687
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x11

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3688
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 3691
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3693
    nop

    .line 3694
    return-void

    .line 3691
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3693
    throw p1
.end method

.method public greylist-max-o setNotificationsEnabledWithImportanceLockForPackage(Ljava/lang/String;IZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3702
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3703
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3705
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3706
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3707
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3708
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3709
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x12

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3710
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 3713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3715
    nop

    .line 3716
    return-void

    .line 3713
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3715
    throw p1
.end method

.method public greylist-max-o setNotificationsShownFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4900
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4901
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4903
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4904
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4905
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4906
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x55

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4907
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 4910
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4912
    nop

    .line 4913
    return-void

    .line 4910
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4912
    throw p1
.end method

.method public greylist-max-o setOnNotificationPostedTrimFromListener(Landroid/service/notification/INotificationListener;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5055
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5056
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5058
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5059
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5060
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5061
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x5e

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5062
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 5065
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5066
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5067
    nop

    .line 5068
    return-void

    .line 5065
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5066
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5067
    throw p1
.end method

.method public blacklist setPrivateNotificationsAllowed(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6067
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6068
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6070
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6071
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6072
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x98

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6073
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 6076
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6078
    nop

    .line 6079
    return-void

    .line 6076
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6078
    throw p1
.end method

.method public greylist-max-o setShowBadge(Ljava/lang/String;IZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3551
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3552
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3554
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3555
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3556
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3557
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3558
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xa

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3559
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 3562
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3564
    nop

    .line 3565
    return-void

    .line 3562
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3564
    throw p1
.end method

.method public blacklist setToastRateLimitingEnabled(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6173
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6176
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6177
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6178
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9e

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6179
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 6182
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6184
    nop

    .line 6185
    return-void

    .line 6182
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6184
    throw p1
.end method

.method public blacklist setZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5612
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5614
    :try_start_8
    const-string v1, "android.app.INotificationManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5615
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5616
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5617
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5618
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5619
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/16 p4, 0x7e

    invoke-interface {p1, p4, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_28

    .line 5622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5623
    nop

    .line 5624
    return-void

    .line 5622
    :catchall_28
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5623
    throw p1
.end method

.method public blacklist shouldHideSilentStatusIcons(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3861
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3862
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3865
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3866
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3867
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3868
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3869
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3872
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3873
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3874
    nop

    .line 3875
    return p1

    .line 3872
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3873
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3874
    throw p1
.end method

.method public blacklist silenceNotificationSound()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4611
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4612
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4614
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4615
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4616
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 4619
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4621
    nop

    .line 4622
    return-void

    .line 4619
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4621
    throw v2
.end method

.method public greylist-max-o snoozeNotificationUntilContextFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4791
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4792
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4794
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4795
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4796
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4797
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4798
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x4e

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4799
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 4802
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4803
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4804
    nop

    .line 4805
    return-void

    .line 4802
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4803
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4804
    throw p1
.end method

.method public greylist-max-o snoozeNotificationUntilFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4808
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4809
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4811
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4812
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4813
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4814
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 4815
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x4f

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4816
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 4819
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4821
    nop

    .line 4822
    return-void

    .line 4819
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4821
    throw p1
.end method

.method public blacklist unlockAllNotificationChannels()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4183
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4186
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4187
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4188
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 4191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4193
    nop

    .line 4194
    return-void

    .line 4191
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4193
    throw v2
.end method

.method public blacklist unlockNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4166
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4169
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4170
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4171
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4172
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4173
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x2c

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4174
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 4177
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4179
    nop

    .line 4180
    return-void

    .line 4177
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4179
    throw p1
.end method

.method public blacklist unregisterCallNotificationEventListener(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/ICallNotificationEventCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6205
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 6206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6208
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6209
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6210
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6211
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6212
    iget-object p2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0xa0

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6213
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 6216
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6218
    nop

    .line 6219
    return-void

    .line 6216
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6218
    throw p1
.end method

.method public greylist-max-o unregisterListener(Landroid/service/notification/INotificationListener;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4741
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4742
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4744
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4745
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4746
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4747
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x4b

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4748
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 4751
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4753
    nop

    .line 4754
    return-void

    .line 4751
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4753
    throw p1
.end method

.method public greylist-max-o unsnoozeNotificationFromAssistant(Landroid/service/notification/INotificationListener;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5216
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5219
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5220
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5221
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5222
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x67

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5223
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 5226
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5228
    nop

    .line 5229
    return-void

    .line 5226
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5228
    throw p1
.end method

.method public blacklist unsnoozeNotificationFromSystemListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5232
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5235
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5236
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5237
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5238
    iget-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x68

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5239
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 5242
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5244
    nop

    .line 5245
    return-void

    .line 5242
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5244
    throw p1
.end method

.method public blacklist updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Z)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5817
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5818
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5821
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5822
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5823
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5824
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5825
    iget-object p2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x8a

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5826
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5827
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 5830
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5832
    nop

    .line 5833
    return p1

    .line 5830
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5832
    throw p1
.end method

.method public greylist-max-o updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4149
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4152
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4153
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4154
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4155
    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4156
    iget-object p2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x2b

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4157
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 4160
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4162
    nop

    .line 4163
    return-void

    .line 4160
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4162
    throw p1
.end method

.method public greylist-max-o updateNotificationChannelFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5110
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 5111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5113
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5114
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5115
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5116
    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5117
    invoke-virtual {v0, p4, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5118
    iget-object p2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x61

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5119
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 5122
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5124
    nop

    .line 5125
    return-void

    .line 5122
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5124
    throw p1
.end method

.method public greylist-max-o updateNotificationChannelGroupForPackage(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4132
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4135
    :try_start_c
    const-string v2, "android.app.INotificationManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4136
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4137
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4138
    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4139
    iget-object p2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x2a

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4140
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 4143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4145
    nop

    .line 4146
    return-void

    .line 4143
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4145
    throw p1
.end method
