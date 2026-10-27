.class Landroid/app/IActivityTaskManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IActivityTaskManager.java"

# interfaces
.implements Landroid/app/IActivityTaskManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityTaskManager$Stub;
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

    .line 2267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2268
    iput-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 2269
    return-void
.end method


# virtual methods
.method public blacklist addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3107
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3108
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3111
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3112
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3113
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3114
    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3115
    invoke-virtual {v0, p4, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3116
    iget-object p2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x2b

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3117
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3118
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_34

    .line 3121
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3123
    nop

    .line 3124
    return p1

    .line 3121
    :catchall_34
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3123
    throw p1
.end method

.method public blacklist alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3808
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3809
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3811
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3812
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3813
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x50

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3814
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 3817
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3819
    nop

    .line 3820
    return-void

    .line 3817
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3819
    throw p1
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 2272
    iget-object v0, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist canBeUniversalResizeable(Landroid/content/pm/ApplicationInfo;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2897
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2898
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2901
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2902
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2903
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2904
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2905
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 2908
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2909
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2910
    nop

    .line 2911
    return p1

    .line 2908
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2909
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2910
    throw p1
.end method

.method public blacklist cancelTaskWindowTransition(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3637
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3638
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3640
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3641
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3642
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x48

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3643
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 3646
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3648
    nop

    .line 3649
    return-void

    .line 3646
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3648
    throw p1
.end method

.method public blacklist clearLaunchParamsForPackages(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 3982
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3983
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3985
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3986
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3987
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x5b

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3988
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 3991
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3993
    nop

    .line 3994
    return-void

    .line 3991
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3993
    throw p1
.end method

.method public blacklist detachNavigationBarFromApp(Landroid/os/IBinder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4038
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4039
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4041
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4042
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4043
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x5e

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4044
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 4047
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4049
    nop

    .line 4050
    return-void

    .line 4047
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4049
    throw p1
.end method

.method public blacklist finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3092
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3093
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3095
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3096
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3097
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2a

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3098
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 3101
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3103
    nop

    .line 3104
    return-void

    .line 3101
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3103
    throw p1
.end method

.method public blacklist focusTopTask(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2966
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2967
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2969
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2970
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2971
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x22

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2972
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 2975
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2976
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2977
    nop

    .line 2978
    return-void

    .line 2975
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2976
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2977
    throw p1
.end method

.method public blacklist getActivityClientController()Landroid/app/IActivityClientController;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2682
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2683
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2686
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2687
    iget-object v2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2688
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2689
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IActivityClientController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityClientController;

    move-result-object v2
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 2692
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2694
    nop

    .line 2695
    return-object v2

    .line 2692
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2694
    throw v2
.end method

.method public blacklist getAllRootTaskInfos()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityTaskManager$RootTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3314
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3318
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3319
    iget-object v2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3320
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3321
    sget-object v2, Landroid/app/ActivityTaskManager$RootTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 3324
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3326
    nop

    .line 3327
    return-object v2

    .line 3324
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3326
    throw v2
.end method

.method public blacklist getAllRootTaskInfosOnDisplay(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityTaskManager$RootTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3350
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3354
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3355
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3356
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x39

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3357
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3358
    sget-object p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 3361
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3363
    nop

    .line 3364
    return-object p1

    .line 3361
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3363
    throw p1
.end method

.method public blacklist getAppTaskThumbnailSize()Landroid/graphics/Point;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3128
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3132
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3133
    iget-object v2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3134
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3135
    sget-object v2, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 3138
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3140
    nop

    .line 3141
    return-object v2

    .line 3138
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3140
    throw v2
.end method

.method public blacklist getAppTasks(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3031
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3032
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3035
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3036
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3037
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x26

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3038
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3039
    invoke-virtual {v1}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3042
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3044
    nop

    .line 3045
    return-object p1

    .line 3042
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3044
    throw p1
.end method

.method public blacklist getAssistContextExtras(I)Landroid/os/Bundle;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3410
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3411
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3414
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3415
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3416
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3c

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3417
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3418
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 3421
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3423
    nop

    .line 3424
    return-object p1

    .line 3421
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3423
    throw p1
.end method

.method public blacklist getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3619
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3620
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3623
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3624
    iget-object v2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3625
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3626
    sget-object v2, Landroid/content/pm/ConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ConfigurationInfo;
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 3629
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3631
    nop

    .line 3632
    return-object v2

    .line 3629
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3631
    throw v2
.end method

.method public blacklist getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2930
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2931
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2934
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2935
    iget-object v2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2936
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2937
    sget-object v2, Landroid/app/ActivityTaskManager$RootTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityTaskManager$RootTaskInfo;
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 2940
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2942
    nop

    .line 2943
    return-object v2

    .line 2940
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2942
    throw v2
.end method

.method public blacklist getFrontActivityScreenCompatMode()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2699
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2700
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2703
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2704
    iget-object v2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2705
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2706
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 2709
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2711
    nop

    .line 2712
    return v2

    .line 2709
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2711
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 2276
    const-string v0, "android.app.IActivityTaskManager"

    return-object v0
.end method

.method public blacklist getLastResumedActivityUserId()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3711
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3712
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3715
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3716
    iget-object v2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3717
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3718
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 3721
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3723
    nop

    .line 3724
    return v2

    .line 3721
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3723
    throw v2
.end method

.method public blacklist getLockTaskModeState()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3014
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3015
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3018
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3019
    iget-object v2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3020
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3021
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 3024
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3025
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3026
    nop

    .line 3027
    return v2

    .line 3024
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3025
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3026
    throw v2
.end method

.method public blacklist getPackageAskScreenCompat(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3947
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3948
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3951
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3952
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3953
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x59

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3954
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3955
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3958
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3960
    nop

    .line 3961
    return p1

    .line 3958
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3960
    throw p1
.end method

.method public blacklist getPackageScreenCompatMode(Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3913
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3914
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3917
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3918
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3919
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x57

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3920
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3921
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3924
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3926
    nop

    .line 3927
    return p1

    .line 3924
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3926
    throw p1
.end method

.method public blacklist getRecentTasks(III)Landroid/content/pm/ParceledListSlice;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2837
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2838
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2841
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2842
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2843
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2844
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2845
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x1b

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2846
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2847
    sget-object p1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ParceledListSlice;
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 2850
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2851
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2852
    nop

    .line 2853
    return-object p1

    .line 2850
    :catchall_35
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2851
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2852
    throw p1
.end method

.method public blacklist getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3331
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3335
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3336
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3337
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3338
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x38

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3339
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3340
    sget-object p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityTaskManager$RootTaskInfo;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 3343
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3345
    nop

    .line 3346
    return-object p1

    .line 3343
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3345
    throw p1
.end method

.method public blacklist getRootTaskInfoOnDisplay(III)Landroid/app/ActivityTaskManager$RootTaskInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3368
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3369
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3372
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3373
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3374
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3375
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3376
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x3a

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3377
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3378
    sget-object p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityTaskManager$RootTaskInfo;
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 3381
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3383
    nop

    .line 3384
    return-object p1

    .line 3381
    :catchall_35
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3383
    throw p1
.end method

.method public blacklist getTaskBounds(I)Landroid/graphics/Rect;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2947
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2948
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2951
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2952
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2953
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x21

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2954
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2955
    sget-object p1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 2958
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2960
    nop

    .line 2961
    return-object p1

    .line 2958
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2960
    throw p1
.end method

.method public blacklist getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3157
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3161
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3162
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3163
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3164
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x2e

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3165
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3166
    sget-object p1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 3169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3171
    nop

    .line 3172
    return-object p1

    .line 3169
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3171
    throw p1
.end method

.method public blacklist getTaskSnapshot(IZ)Landroid/window/TaskSnapshot;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3661
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3662
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3665
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3666
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3667
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3668
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x49

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3669
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3670
    sget-object p1, Landroid/window/TaskSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/TaskSnapshot;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 3673
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3675
    nop

    .line 3676
    return-object p1

    .line 3673
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3675
    throw p1
.end method

.method public blacklist getTaskSnapshotManager()Landroid/window/ITaskSnapshotManager;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3568
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3569
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3572
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3573
    iget-object v2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3574
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3575
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/ITaskSnapshotManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskSnapshotManager;

    move-result-object v2
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 3578
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3579
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3580
    nop

    .line 3581
    return-object v2

    .line 3578
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3579
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3580
    throw v2
.end method

.method public blacklist getTasks(IZZI)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZI)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2797
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2798
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2801
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2802
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2803
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2804
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2805
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2806
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x19

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2807
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2808
    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 2811
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2812
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2813
    nop

    .line 2814
    return-object p1

    .line 2811
    :catchall_36
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2812
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2813
    throw p1
.end method

.method public blacklist getVoiceInteractorPackageName(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2497
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2498
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2501
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2502
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2503
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2504
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2505
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 2508
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2510
    nop

    .line 2511
    return-object p1

    .line 2508
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2510
    throw p1
.end method

.method public blacklist getWindowOrganizerController()Landroid/window/IWindowOrganizerController;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3550
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3551
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3554
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3555
    iget-object v2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3556
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3557
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/IWindowOrganizerController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IWindowOrganizerController;

    move-result-object v2
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 3560
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3562
    nop

    .line 3563
    return-object v2

    .line 3560
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3562
    throw v2
.end method

.method public blacklist isActivityStartAllowedOnDisplay(ILandroid/content/Intent;Ljava/lang/String;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2628
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2629
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2632
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2633
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2634
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2635
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2636
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2637
    iget-object p2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0xf

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2638
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2639
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_34

    .line 2642
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2644
    nop

    .line 2645
    return p1

    .line 2642
    :catchall_34
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2644
    throw p1
.end method

.method public blacklist isAssistDataAllowed()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3473
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3474
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3477
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3478
    iget-object v2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3479
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3480
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 3483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3485
    nop

    .line 3486
    return v2

    .line 3483
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3485
    throw v2
.end method

.method public blacklist isInLockTaskMode()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2997
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2998
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3001
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3002
    iget-object v2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3003
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3004
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 3007
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3008
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3009
    nop

    .line 3010
    return v2

    .line 3007
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3008
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3009
    throw v2
.end method

.method public blacklist isTaskMoveAllowedOnDisplay(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2649
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2650
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2653
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2654
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2655
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2656
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2657
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 2660
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2662
    nop

    .line 2663
    return p1

    .line 2660
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2662
    throw p1
.end method

.method public blacklist isTopActivityImmersive()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2857
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2858
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2861
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2862
    iget-object v2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2863
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2864
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 2867
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2869
    nop

    .line 2870
    return v2

    .line 2867
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2869
    throw v2
.end method

.method public blacklist keyguardGoingAway(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3519
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3522
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3523
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3524
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x41

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3525
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 3528
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3529
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3530
    nop

    .line 3531
    return-void

    .line 3528
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3529
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3530
    throw p1
.end method

.method public blacklist moveRootTaskToDisplay(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3246
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3247
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3249
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3250
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3251
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3252
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x33

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3253
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 3256
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3258
    nop

    .line 3259
    return-void

    .line 3256
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3258
    throw p1
.end method

.method public blacklist moveRootTaskToDisplayOnTopOrBottom(IIZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4226
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4229
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4230
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4231
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4232
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4233
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x66

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4234
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 4237
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4239
    nop

    .line 4240
    return-void

    .line 4237
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4239
    throw p1
.end method

.method public blacklist moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2818
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2819
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2821
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2822
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2823
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2824
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2825
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2826
    const/4 p1, 0x0

    invoke-virtual {v0, p5, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2827
    iget-object p2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x1a

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2828
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 2831
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2832
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2833
    nop

    .line 2834
    return-void

    .line 2831
    :catchall_33
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2832
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2833
    throw p1
.end method

.method public blacklist moveTaskToRootTask(IIZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3262
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3265
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3266
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3267
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3268
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3269
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x34

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3270
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 3273
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3275
    nop

    .line 3276
    return-void

    .line 3273
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3275
    throw p1
.end method

.method public blacklist onPictureInPictureUiStateChanged(Landroid/app/PictureInPictureUiState;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4019
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4020
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4022
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4023
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4024
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4025
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 4028
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4030
    nop

    .line 4031
    return-void

    .line 4028
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4030
    throw p1
.end method

.method public blacklist onSplashScreenViewCopyFinished(ILandroid/window/SplashScreenView$SplashScreenViewParcelable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3998
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3999
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4001
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4002
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4003
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4004
    iget-object p2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x5c

    invoke-interface {p2, v2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4005
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 4008
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4010
    nop

    .line 4011
    return-void

    .line 4008
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4010
    throw p1
.end method

.method public blacklist preloadRecentsActivity(Landroid/content/Intent;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2613
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2614
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2616
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2617
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2618
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2619
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 2622
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2624
    nop

    .line 2625
    return-void

    .line 2622
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2624
    throw p1
.end method

.method public blacklist rebuildSystemLockTaskPinnedMode()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3078
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3079
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3081
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3082
    iget-object v2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3083
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 3086
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3087
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3088
    nop

    .line 3089
    return-void

    .line 3086
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3087
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3088
    throw v2
.end method

.method public blacklist registerBackgroundActivityStartCallback(Landroid/os/IBinder;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4132
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4136
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4137
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4138
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x62

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4139
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4140
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 4143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4145
    nop

    .line 4146
    return p1

    .line 4143
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4145
    throw p1
.end method

.method public blacklist registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3773
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3774
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3776
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3777
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3778
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3779
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3780
    iget-object p2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x4e

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3781
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 3784
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3785
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3786
    nop

    .line 3787
    return-void

    .line 3784
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3785
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3786
    throw p1
.end method

.method public blacklist registerRemoteAnimationsForDisplay(ILandroid/view/RemoteAnimationDefinition;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3791
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3792
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3794
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3795
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3796
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3797
    iget-object p2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x4f

    invoke-interface {p2, v2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3798
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 3801
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3803
    nop

    .line 3804
    return-void

    .line 3801
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3803
    throw p1
.end method

.method public blacklist registerScreenCaptureObserver(Landroid/os/IBinder;Landroid/app/IScreenCaptureObserver;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4178
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4181
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4182
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4183
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4184
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x64

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4185
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 4188
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4190
    nop

    .line 4191
    return-void

    .line 4188
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4190
    throw p1
.end method

.method public blacklist registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3176
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3179
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3180
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3181
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2f

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3182
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 3185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3187
    nop

    .line 3188
    return-void

    .line 3185
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3187
    throw p1
.end method

.method public blacklist releaseSomeActivities(Landroid/app/IApplicationThread;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3145
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3147
    :try_start_8
    const-string v1, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3148
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3149
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x2d

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 3152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3153
    nop

    .line 3154
    return-void

    .line 3152
    :catchall_1e
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3153
    throw p1
.end method

.method public blacklist removeAllVisibleRecentTasks()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2783
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2784
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2786
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2787
    iget-object v2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2788
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 2791
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2793
    nop

    .line 2794
    return-void

    .line 2791
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2793
    throw v2
.end method

.method public blacklist removeRootTasksInWindowingModes([I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3283
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3284
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3286
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3287
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3288
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x35

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3289
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 3292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3294
    nop

    .line 3295
    return-void

    .line 3292
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3294
    throw p1
.end method

.method public blacklist removeRootTasksWithActivityTypes([I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3299
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3302
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3303
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3304
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x36

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3305
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 3308
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3310
    nop

    .line 3311
    return-void

    .line 3308
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3310
    throw p1
.end method

.method public blacklist removeTask(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2765
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2766
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2769
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2770
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2771
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2772
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2773
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 2776
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2778
    nop

    .line 2779
    return p1

    .line 2776
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2778
    throw p1
.end method

.method public blacklist reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2874
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2875
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2877
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2878
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2879
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2880
    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2881
    invoke-virtual {v0, p4, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2882
    invoke-virtual {v0, p5, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2883
    iget-object p2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x1d

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2884
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 2887
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2888
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2889
    nop

    .line 2890
    return-void

    .line 2887
    :catchall_33
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2888
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2889
    throw p1
.end method

.method public blacklist reportHandoffActivityData(Landroid/os/IBinder;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/app/HandoffActivityData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4253
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4256
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4257
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4258
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 4259
    iget-object p2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x67

    invoke-interface {p2, v2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4260
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 4263
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4265
    nop

    .line 4266
    return-void

    .line 4263
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4265
    throw p1
.end method

.method public blacklist requestAssistContextExtras(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3428
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3432
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3433
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3434
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3435
    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3436
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3437
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3438
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3439
    iget-object p2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x3d

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3440
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3441
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_3a

    .line 3444
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3446
    nop

    .line 3447
    return p1

    .line 3444
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3446
    throw p1
.end method

.method public blacklist requestAssistDataForTask(Landroid/app/IAssistDataReceiver;ILjava/lang/String;Ljava/lang/String;Z)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3490
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3494
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3495
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3496
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3497
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3498
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3499
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3500
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x40

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3501
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3502
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_37

    .line 3505
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3507
    nop

    .line 3508
    return p1

    .line 3505
    :catchall_37
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3507
    throw p1
.end method

.method public blacklist requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3451
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3452
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3455
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3456
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3457
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3458
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3459
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3460
    iget-object p2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x3e

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3461
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3462
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_34

    .line 3465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3467
    nop

    .line 3468
    return p1

    .line 3465
    :catchall_34
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3467
    throw p1
.end method

.method public blacklist requestOpenInBrowserEducation(Landroid/os/IBinder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3603
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3604
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3606
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3607
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3608
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x46

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3609
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 3612
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3614
    nop

    .line 3615
    return-void

    .line 3612
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3614
    throw p1
.end method

.method public blacklist resizeTask(ILandroid/graphics/Rect;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3229
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3232
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3233
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3234
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3235
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3236
    iget-object p2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x32

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3237
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 3240
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3242
    nop

    .line 3243
    return-void

    .line 3240
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3242
    throw p1
.end method

.method public blacklist resumeAppSwitches()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3867
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3868
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3870
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3871
    iget-object v2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3872
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 3875
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3877
    nop

    .line 3878
    return-void

    .line 3875
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3877
    throw v2
.end method

.method public blacklist setActivityController(Landroid/app/IActivityController;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3881
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3882
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3884
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3885
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3886
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3887
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x55

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3888
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 3891
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3893
    nop

    .line 3894
    return-void

    .line 3891
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3893
    throw p1
.end method

.method public blacklist setFocusedRootTask(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2915
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2916
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2918
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2919
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2920
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1f

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2921
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 2924
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2926
    nop

    .line 2927
    return-void

    .line 2924
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2926
    throw p1
.end method

.method public blacklist setFocusedTask(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2731
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2732
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2734
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2735
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2736
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2737
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 2740
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2742
    nop

    .line 2743
    return-void

    .line 2740
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2742
    throw p1
.end method

.method public blacklist setFrontActivityScreenCompatMode(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2716
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2717
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2719
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2720
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2721
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2722
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 2725
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2727
    nop

    .line 2728
    return-void

    .line 2725
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2727
    throw p1
.end method

.method public blacklist setLockScreenShown(ZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3394
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3395
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3397
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3398
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3399
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3400
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x3b

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3401
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 3404
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3406
    nop

    .line 3407
    return-void

    .line 3404
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3406
    throw p1
.end method

.method public blacklist setPackageAskScreenCompat(Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3965
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3966
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3968
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3969
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3970
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3971
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x5a

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3972
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 3975
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3976
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3977
    nop

    .line 3978
    return-void

    .line 3975
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3976
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3977
    throw p1
.end method

.method public blacklist setPackageScreenCompatMode(Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3931
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3932
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3934
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3935
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3936
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3937
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x58

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3938
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 3941
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3942
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3943
    nop

    .line 3944
    return-void

    .line 3941
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3942
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3943
    throw p1
.end method

.method public blacklist setPersistentVrThread(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3838
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3839
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3841
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3842
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3843
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x52

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3844
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 3847
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3849
    nop

    .line 3850
    return-void

    .line 3847
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3849
    throw p1
.end method

.method public blacklist setRunningRemoteTransitionDelegate(Landroid/os/IBinder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4061
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4062
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4064
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4065
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4066
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x5f

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4067
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 4070
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4072
    nop

    .line 4073
    return-void

    .line 4070
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4072
    throw p1
.end method

.method public blacklist setTaskIsPerceptible(IZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2746
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2747
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2750
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2751
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2752
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2753
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x16

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2754
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2755
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 2758
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2760
    nop

    .line 2761
    return p1

    .line 2758
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2760
    throw p1
.end method

.method public blacklist setTaskResizeable(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3206
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3209
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3210
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3211
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3212
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x31

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3213
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 3216
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3218
    nop

    .line 3219
    return-void

    .line 3216
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3218
    throw p1
.end method

.method public blacklist setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3897
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3898
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3900
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3901
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3902
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3903
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x56

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3904
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 3907
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3909
    nop

    .line 3910
    return-void

    .line 3907
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3909
    throw p1
.end method

.method public blacklist setVrThread(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3823
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3824
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3826
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3827
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3828
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x51

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3829
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 3832
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3834
    nop

    .line 3835
    return-void

    .line 3832
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3834
    throw p1
.end method

.method public blacklist startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2308
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2309
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2312
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2313
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2314
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2315
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2316
    const/4 p1, 0x0

    invoke-virtual {v0, p4, p1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2317
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2318
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2319
    invoke-virtual {v0, p7, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2320
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2321
    iget-object p2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p3, 0x2

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2322
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2323
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_37
    .catchall {:try_start_c .. :try_end_37} :catchall_3f

    .line 2326
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2328
    nop

    .line 2329
    return p1

    .line 2326
    :catchall_3f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2328
    throw p1
.end method

.method public blacklist startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2280
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2284
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2285
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2286
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2287
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2288
    const/4 p1, 0x0

    invoke-virtual {v0, p4, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2289
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2290
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2291
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2292
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2293
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2294
    invoke-virtual {v0, p10, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2295
    invoke-virtual {v0, p11, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2296
    iget-object p2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p3, 0x1

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2297
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2298
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_40
    .catchall {:try_start_c .. :try_end_40} :catchall_48

    .line 2301
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2303
    nop

    .line 2304
    return p1

    .line 2301
    :catchall_48
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2303
    throw p1
.end method

.method public blacklist startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2410
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2411
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2414
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2415
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2416
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2417
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2418
    const/4 p1, 0x0

    invoke-virtual {v0, p4, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2419
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2420
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2421
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2422
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2423
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2424
    invoke-virtual {v0, p10, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2425
    invoke-virtual {v0, p11, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2426
    invoke-virtual {v0, p12}, Landroid/os/Parcel;->writeInt(I)V

    .line 2427
    iget-object p2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p3, 0x6

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2428
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2429
    sget-object p1, Landroid/app/WaitResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WaitResult;
    :try_end_47
    .catchall {:try_start_c .. :try_end_47} :catchall_4f

    .line 2432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2434
    nop

    .line 2435
    return-object p1

    .line 2432
    :catchall_4f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2434
    throw p1
.end method

.method public blacklist startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2584
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2588
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2589
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2590
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2591
    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2592
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2593
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2594
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2595
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2596
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2597
    invoke-virtual {v0, p9, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2598
    invoke-virtual {v0, p10, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2599
    invoke-virtual {v0, p11}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2600
    invoke-virtual {v0, p12}, Landroid/os/Parcel;->writeInt(I)V

    .line 2601
    iget-object p2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0xd

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2602
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2603
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_44
    .catchall {:try_start_c .. :try_end_44} :catchall_4c

    .line 2606
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2608
    nop

    .line 2609
    return p1

    .line 2606
    :catchall_4c
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2608
    throw p1
.end method

.method public blacklist startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2333
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2337
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2338
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2339
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2340
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2341
    const/4 p1, 0x0

    invoke-virtual {v0, p4, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2342
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2343
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2344
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2345
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2346
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2347
    invoke-virtual {v0, p10, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2348
    invoke-virtual {v0, p11, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2349
    invoke-virtual {v0, p12}, Landroid/os/Parcel;->writeInt(I)V

    .line 2350
    iget-object p2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p3, 0x3

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2351
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2352
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_43
    .catchall {:try_start_c .. :try_end_43} :catchall_4b

    .line 2355
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2357
    nop

    .line 2358
    return p1

    .line 2355
    :catchall_4b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2357
    throw p1
.end method

.method public blacklist startActivityFromGameSession(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;II)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2540
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2541
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2544
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2545
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2546
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2547
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2548
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2549
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2550
    const/4 p1, 0x0

    invoke-virtual {v0, p6, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2551
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2552
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2553
    iget-object p2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0xb

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2554
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2555
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_40

    .line 2558
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2560
    nop

    .line 2561
    return p1

    .line 2558
    :catchall_40
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2560
    throw p1
.end method

.method public blacklist startActivityFromRecents(ILandroid/os/Bundle;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2565
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2566
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2569
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2570
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2571
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2572
    iget-object p2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    invoke-interface {p2, v2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2573
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2574
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 2577
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2579
    nop

    .line 2580
    return p1

    .line 2577
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2579
    throw p1
.end method

.method public blacklist startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2382
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2383
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2386
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2387
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2388
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2389
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2390
    const/4 p1, 0x0

    invoke-virtual {v0, p4, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2391
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2392
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2393
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2394
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2395
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2396
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2397
    invoke-virtual {v0, p11, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2398
    iget-object p2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p3, 0x5

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2399
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2400
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_40
    .catchall {:try_start_c .. :try_end_40} :catchall_48

    .line 2403
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2405
    nop

    .line 2406
    return p1

    .line 2403
    :catchall_48
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2405
    throw p1
.end method

.method public blacklist startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2439
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2443
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2444
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2445
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2446
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2447
    const/4 p1, 0x0

    invoke-virtual {v0, p4, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2448
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2449
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2450
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2451
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2452
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2453
    invoke-virtual {v0, p10, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2454
    invoke-virtual {v0, p11, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2455
    invoke-virtual {v0, p12}, Landroid/os/Parcel;->writeInt(I)V

    .line 2456
    iget-object p2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p3, 0x7

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2457
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2458
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_43
    .catchall {:try_start_c .. :try_end_43} :catchall_4b

    .line 2461
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2463
    nop

    .line 2464
    return p1

    .line 2461
    :catchall_4b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2463
    throw p1
.end method

.method public blacklist startAssistantActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2515
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2516
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2519
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2520
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2521
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2522
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2523
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2524
    const/4 p1, 0x0

    invoke-virtual {v0, p5, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2525
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2526
    invoke-virtual {v0, p7, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2527
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2528
    iget-object p2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0xa

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2529
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2530
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_40

    .line 2533
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2535
    nop

    .line 2536
    return p1

    .line 2533
    :catchall_40
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2535
    throw p1
.end method

.method public blacklist startBackNavigation(Landroid/os/RemoteCallback;Landroid/window/BackAnimationAdapter;)Landroid/window/BackNavigationInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4084
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4085
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4088
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4089
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4090
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4091
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x60

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4092
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4093
    sget-object p1, Landroid/window/BackNavigationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/BackNavigationInfo;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 4096
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4098
    nop

    .line 4099
    return-object p1

    .line 4096
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4098
    throw p1
.end method

.method public blacklist startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2362
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2366
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2367
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2368
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2369
    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2370
    iget-object p2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p3, 0x4

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2371
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2372
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 2375
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2377
    nop

    .line 2378
    return p1

    .line 2375
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2377
    throw p1
.end method

.method public blacklist startPredictiveBackAnimation()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4108
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4109
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4112
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4113
    iget-object v2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x61

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4114
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4115
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 4118
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4120
    nop

    .line 4121
    return v2

    .line 4118
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4120
    throw v2
.end method

.method public blacklist startSystemLockTaskMode(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3049
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3050
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3052
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3053
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3054
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x27

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3055
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 3058
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3060
    nop

    .line 3061
    return-void

    .line 3058
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3060
    throw p1
.end method

.method public blacklist startVoiceActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2468
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2472
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2473
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2474
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2475
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2476
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2477
    const/4 p1, 0x0

    invoke-virtual {v0, p5, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2478
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2479
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2480
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2481
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2482
    invoke-virtual {v0, p10, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2483
    invoke-virtual {v0, p11, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2484
    invoke-virtual {v0, p12}, Landroid/os/Parcel;->writeInt(I)V

    .line 2485
    iget-object p2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x8

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2486
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2487
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_44
    .catchall {:try_start_c .. :try_end_44} :catchall_4c

    .line 2490
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2492
    nop

    .line 2493
    return p1

    .line 2490
    :catchall_4c
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2492
    throw p1
.end method

.method public blacklist stopAppSwitches()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3853
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3854
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3856
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3857
    iget-object v2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x53

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3858
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 3861
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3863
    nop

    .line 3864
    return-void

    .line 3861
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3863
    throw v2
.end method

.method public blacklist stopSystemLockTaskMode()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3064
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3065
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3067
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3068
    iget-object v2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3069
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 3072
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3074
    nop

    .line 3075
    return-void

    .line 3072
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3074
    throw v2
.end method

.method public blacklist supportsLocalVoiceInteraction()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3585
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3586
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3589
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3590
    iget-object v2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3591
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3592
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 3595
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3597
    nop

    .line 3598
    return v2

    .line 3595
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3597
    throw v2
.end method

.method public blacklist suppressResizeConfigChanges(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3534
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3535
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3537
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3538
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3539
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x42

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3540
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 3543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3545
    nop

    .line 3546
    return-void

    .line 3543
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3545
    throw p1
.end method

.method public blacklist takeTaskSnapshot(IZ)Landroid/window/TaskSnapshot;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3691
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3692
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3695
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3696
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3697
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3698
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x4a

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3699
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3700
    sget-object p1, Landroid/window/TaskSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/TaskSnapshot;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 3703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3705
    nop

    .line 3706
    return-object p1

    .line 3703
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3705
    throw p1
.end method

.method public blacklist unhandledBack()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2667
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2668
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2670
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2671
    iget-object v2, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2672
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 2675
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2677
    nop

    .line 2678
    return-void

    .line 2675
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2677
    throw v2
.end method

.method public blacklist unregisterBackgroundActivityStartCallback(Landroid/os/IBinder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4156
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4159
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4160
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4161
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x63

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4162
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 4165
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4167
    nop

    .line 4168
    return-void

    .line 4165
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4167
    throw p1
.end method

.method public blacklist unregisterScreenCaptureObserver(Landroid/os/IBinder;Landroid/app/IScreenCaptureObserver;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4202
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4205
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4206
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4207
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4208
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x65

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4209
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 4212
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4214
    nop

    .line 4215
    return-void

    .line 4212
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4214
    throw p1
.end method

.method public blacklist unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3191
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3194
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3195
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3196
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3197
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 3200
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3202
    nop

    .line 3203
    return-void

    .line 3200
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3202
    throw p1
.end method

.method public blacklist updateConfiguration(Landroid/content/res/Configuration;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3735
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3736
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3739
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3740
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3741
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3742
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3743
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3746
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3748
    nop

    .line 3749
    return p1

    .line 3746
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3748
    throw p1
.end method

.method public blacklist updateLockTaskFeatures(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3753
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3754
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3756
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3757
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3758
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3759
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x4d

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3760
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 3763
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3765
    nop

    .line 3766
    return-void

    .line 3763
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3765
    throw p1
.end method

.method public blacklist updateLockTaskPackages(I[Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2981
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2982
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2984
    :try_start_c
    const-string v2, "android.app.IActivityTaskManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2985
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2986
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2987
    iget-object p1, p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x23

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2988
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 2991
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2993
    nop

    .line 2994
    return-void

    .line 2991
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2993
    throw p1
.end method
