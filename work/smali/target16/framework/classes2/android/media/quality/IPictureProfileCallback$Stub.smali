.class public abstract Landroid/media/quality/IPictureProfileCallback$Stub;
.super Landroid/os/Binder;
.source "IPictureProfileCallback.java"

# interfaces
.implements Landroid/media/quality/IPictureProfileCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/quality/IPictureProfileCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/quality/IPictureProfileCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onError:I = 0x5

.field static final blacklist TRANSACTION_onParameterCapabilitiesChanged:I = 0x4

.field static final blacklist TRANSACTION_onPictureProfileAdded:I = 0x1

.field static final blacklist TRANSACTION_onPictureProfileRemoved:I = 0x3

.field static final blacklist TRANSACTION_onPictureProfileUpdated:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.media.quality.IPictureProfileCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/quality/IPictureProfileCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/quality/IPictureProfileCallback;
    .registers 3

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_4
    const-string v0, "android.media.quality.IPictureProfileCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/quality/IPictureProfileCallback;

    if-eqz v1, :cond_13

    .line 59
    check-cast v0, Landroid/media/quality/IPictureProfileCallback;

    return-object v0

    .line 61
    :cond_13
    new-instance v0, Landroid/media/quality/IPictureProfileCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/quality/IPictureProfileCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 65
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    nop

    .line 70
    const-string v0, "android.media.quality.IPictureProfileCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 71
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 74
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    return v1

    .line 77
    :cond_17
    packed-switch p1, :pswitch_data_7a

    .line 131
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 122
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, p1, p3}, Landroid/media/quality/IPictureProfileCallback$Stub;->onError(Ljava/lang/String;I)V

    .line 127
    goto :goto_78

    .line 112
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 114
    sget-object p3, Landroid/media/quality/ParameterCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p3

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, p1, p3}, Landroid/media/quality/IPictureProfileCallback$Stub;->onParameterCapabilitiesChanged(Ljava/lang/String;Ljava/util/List;)V

    .line 117
    goto :goto_78

    .line 102
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 104
    sget-object p3, Landroid/media/quality/PictureProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/quality/PictureProfile;

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    invoke-virtual {p0, p1, p3}, Landroid/media/quality/IPictureProfileCallback$Stub;->onPictureProfileRemoved(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V

    .line 107
    goto :goto_78

    .line 92
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 94
    sget-object p3, Landroid/media/quality/PictureProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/quality/PictureProfile;

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 96
    invoke-virtual {p0, p1, p3}, Landroid/media/quality/IPictureProfileCallback$Stub;->onPictureProfileUpdated(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V

    .line 97
    goto :goto_78

    .line 82
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 84
    sget-object p3, Landroid/media/quality/PictureProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/quality/PictureProfile;

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 86
    invoke-virtual {p0, p1, p3}, Landroid/media/quality/IPictureProfileCallback$Stub;->onPictureProfileAdded(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V

    .line 87
    nop

    .line 134
    :goto_78
    return v1

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_65
        :pswitch_52
        :pswitch_3f
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
