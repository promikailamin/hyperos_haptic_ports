.class public abstract Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;
.super Landroid/os/Binder;
.source "IImsServiceFeatureCallback.java"

# interfaces
.implements Lcom/android/ims/internal/IImsServiceFeatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsServiceFeatureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsServiceFeatureCallback"

.field static final greylist-max-o TRANSACTION_imsFeatureCreated:I = 0x1

.field static final greylist-max-o TRANSACTION_imsFeatureRemoved:I = 0x2

.field static final greylist-max-o TRANSACTION_imsStatusChanged:I = 0x3

.field static final blacklist TRANSACTION_updateCapabilities:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "com.android.ims.internal.IImsServiceFeatureCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceFeatureCallback;
    .registers 3

    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_4
    const-string v0, "com.android.ims.internal.IImsServiceFeatureCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/ims/internal/IImsServiceFeatureCallback;

    if-eqz v1, :cond_13

    .line 60
    check-cast v0, Lcom/android/ims/internal/IImsServiceFeatureCallback;

    return-object v0

    .line 62
    :cond_13
    new-instance v0, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 71
    packed-switch p0, :pswitch_data_12

    .line 91
    const/4 p0, 0x0

    return-object p0

    .line 87
    :pswitch_5
    const-string p0, "updateCapabilities"

    return-object p0

    .line 83
    :pswitch_8
    const-string p0, "imsStatusChanged"

    return-object p0

    .line 79
    :pswitch_b
    const-string p0, "imsFeatureRemoved"

    return-object p0

    .line 75
    :pswitch_e
    const-string p0, "imsFeatureCreated"

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 66
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 233
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 98
    invoke-static {p1}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    nop

    .line 103
    const-string v0, "com.android.ims.internal.IImsServiceFeatureCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 104
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 107
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    return v1

    .line 110
    :cond_17
    packed-switch p1, :pswitch_data_58

    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 143
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, p3, p4}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;->updateCapabilities(J)V

    .line 146
    goto :goto_57

    .line 133
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, p1, p3}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;->imsStatusChanged(II)V

    .line 138
    goto :goto_57

    .line 125
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;->imsFeatureRemoved(I)V

    .line 128
    goto :goto_57

    .line 115
    :pswitch_44
    sget-object p1, Lcom/android/ims/ImsFeatureContainer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/ims/ImsFeatureContainer;

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    invoke-virtual {p0, p1, p3}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;->imsFeatureCreated(Lcom/android/ims/ImsFeatureContainer;I)V

    .line 120
    nop

    .line 153
    :goto_57
    return v1

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_44
        :pswitch_39
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
