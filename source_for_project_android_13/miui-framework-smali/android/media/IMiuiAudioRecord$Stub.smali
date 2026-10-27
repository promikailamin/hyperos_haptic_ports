.class public abstract Landroid/media/IMiuiAudioRecord$Stub;
.super Landroid/os/Binder;
.source "IMiuiAudioRecord.java"

# interfaces
.implements Landroid/media/IMiuiAudioRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMiuiAudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMiuiAudioRecord$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_fillBuffer:I = 0x4

.field static final blacklist TRANSACTION_getMetaData:I = 0x3

.field static final blacklist TRANSACTION_start:I = 0x1

.field static final blacklist TRANSACTION_stop:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "android.media.IMiuiAudioRecord"

    invoke-virtual {p0, p0, v0}, Landroid/media/IMiuiAudioRecord$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/IMiuiAudioRecord;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 49
    if-nez p0, :cond_4

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_4
    const-string v0, "android.media.IMiuiAudioRecord"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IMiuiAudioRecord;

    if-eqz v1, :cond_14

    .line 54
    move-object v1, v0

    check-cast v1, Landroid/media/IMiuiAudioRecord;

    return-object v1

    .line 56
    :cond_14
    new-instance v1, Landroid/media/IMiuiAudioRecord$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IMiuiAudioRecord$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 60
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

    .line 64
    const-string v0, "android.media.IMiuiAudioRecord"

    .line 65
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 66
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    :cond_d
    packed-switch p1, :pswitch_data_5c

    .line 76
    packed-switch p1, :pswitch_data_62

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 72
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    return v1

    .line 105
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 107
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 108
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 109
    invoke-virtual {p0, v2, v3}, Landroid/media/IMiuiAudioRecord$Stub;->fillBuffer(II)Landroid/os/Bundle;

    move-result-object v4

    .line 110
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 112
    goto :goto_5a

    .line 97
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_32
    invoke-virtual {p0}, Landroid/media/IMiuiAudioRecord$Stub;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    .line 98
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 100
    goto :goto_5a

    .line 90
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_3d
    invoke-virtual {p0}, Landroid/media/IMiuiAudioRecord$Stub;->stop()Z

    move-result v2

    .line 91
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 93
    goto :goto_5a

    .line 81
    .end local v2    # "_result":Z
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 82
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 83
    invoke-virtual {p0, v2, v3}, Landroid/media/IMiuiAudioRecord$Stub;->start(J)Z

    move-result v4

    .line 84
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 86
    nop

    .line 119
    .end local v2    # "_arg0":J
    .end local v4    # "_result":Z
    :goto_5a
    return v1

    nop

    :pswitch_data_5c
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_48
        :pswitch_3d
        :pswitch_32
        :pswitch_1c
    .end packed-switch
.end method
