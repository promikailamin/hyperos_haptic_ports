.class public abstract Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback$Stub;
.super Landroid/os/Binder;
.source "ITurboSchedManager.java"

# interfaces
.implements Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onSceneChanged:I = 0x1


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 803
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 804
    const-string v0, "miui.turbosched.ITurboSchedManager.IFrameTurboSceneCallback"

    invoke-virtual {p0, p0, v0}, Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 805
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 812
    if-nez p0, :cond_4

    .line 813
    const/4 v0, 0x0

    return-object v0

    .line 815
    :cond_4
    const-string v0, "miui.turbosched.ITurboSchedManager.IFrameTurboSceneCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 816
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback;

    if-eqz v1, :cond_14

    .line 817
    move-object v1, v0

    check-cast v1, Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback;

    return-object v1

    .line 819
    :cond_14
    new-instance v1, Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 823
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 827
    const-string v0, "miui.turbosched.ITurboSchedManager.IFrameTurboSceneCallback"

    .line 828
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 829
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    :cond_d
    packed-switch p1, :pswitch_data_30

    .line 839
    packed-switch p1, :pswitch_data_36

    .line 855
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 835
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 836
    return v1

    .line 844
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 846
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 848
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 849
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 850
    invoke-virtual {p0, v2, v3, v4}, Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback$Stub;->onSceneChanged(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 851
    nop

    .line 858
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Z
    return v1

    :pswitch_data_30
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_1c
    .end packed-switch
.end method
