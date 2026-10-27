.class public abstract Lcom/miui/mishare/IMiShareDiscoverCallback$Stub;
.super Landroid/os/Binder;
.source "IMiShareDiscoverCallback.java"

# interfaces
.implements Lcom/miui/mishare/IMiShareDiscoverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/IMiShareDiscoverCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/IMiShareDiscoverCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onDeviceLost:I = 0x2

.field static final blacklist TRANSACTION_onDeviceUpdated:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    const-string v0, "com.miui.mishare.IMiShareDiscoverCallback"

    invoke-virtual {p0, p0, v0}, Lcom/miui/mishare/IMiShareDiscoverCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IMiShareDiscoverCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 35
    if-nez p0, :cond_4

    .line 36
    const/4 v0, 0x0

    return-object v0

    .line 38
    :cond_4
    const-string v0, "com.miui.mishare.IMiShareDiscoverCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 39
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/mishare/IMiShareDiscoverCallback;

    if-eqz v1, :cond_14

    .line 40
    move-object v1, v0

    check-cast v1, Lcom/miui/mishare/IMiShareDiscoverCallback;

    return-object v1

    .line 42
    :cond_14
    new-instance v1, Lcom/miui/mishare/IMiShareDiscoverCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/mishare/IMiShareDiscoverCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 46
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    const-string v0, "com.miui.mishare.IMiShareDiscoverCallback"

    .line 51
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 52
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    :cond_d
    packed-switch p1, :pswitch_data_38

    .line 62
    packed-switch p1, :pswitch_data_3e

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 58
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return v1

    .line 75
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 77
    invoke-virtual {p0, v2}, Lcom/miui/mishare/IMiShareDiscoverCallback$Stub;->onDeviceLost(Ljava/lang/String;)V

    .line 78
    goto :goto_36

    .line 67
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_27
    sget-object v2, Lcom/miui/mishare/RemoteDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/mishare/RemoteDevice;

    .line 68
    .local v2, "_arg0":Lcom/miui/mishare/RemoteDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 69
    invoke-virtual {p0, v2}, Lcom/miui/mishare/IMiShareDiscoverCallback$Stub;->onDeviceUpdated(Lcom/miui/mishare/RemoteDevice;)V

    .line 70
    nop

    .line 85
    .end local v2    # "_arg0":Lcom/miui/mishare/RemoteDevice;
    :goto_36
    return v1

    nop

    :pswitch_data_38
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
