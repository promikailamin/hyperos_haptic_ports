.class public abstract Landroid/media/IVolumeController$Stub;
.super Landroid/os/Binder;
.source "IVolumeController.java"

# interfaces
.implements Landroid/media/IVolumeController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IVolumeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IVolumeController$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.IVolumeController"

.field static final greylist-max-o TRANSACTION_dismiss:I = 0x5

.field static final greylist-max-o TRANSACTION_displaySafeVolumeWarning:I = 0x1

.field static final greylist-max-o TRANSACTION_masterMuteChanged:I = 0x3

.field static final greylist-max-o TRANSACTION_setA11yMode:I = 0x6

.field static final greylist-max-o TRANSACTION_setLayoutDirection:I = 0x4

.field static final greylist-max-o TRANSACTION_volumeChanged:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "android.media.IVolumeController"

    invoke-virtual {p0, p0, v0}, Landroid/media/IVolumeController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static greylist-max-r asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 57
    if-nez p0, :cond_4

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_4
    const-string v0, "android.media.IVolumeController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IVolumeController;

    if-eqz v1, :cond_14

    .line 62
    move-object v1, v0

    check-cast v1, Landroid/media/IVolumeController;

    return-object v1

    .line 64
    :cond_14
    new-instance v1, Landroid/media/IVolumeController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IVolumeController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 73
    packed-switch p0, :pswitch_data_18

    .line 101
    const/4 v0, 0x0

    return-object v0

    .line 97
    :pswitch_5
    const-string v0, "setA11yMode"

    return-object v0

    .line 93
    :pswitch_8
    const-string v0, "dismiss"

    return-object v0

    .line 89
    :pswitch_b
    const-string v0, "setLayoutDirection"

    return-object v0

    .line 85
    :pswitch_e
    const-string v0, "masterMuteChanged"

    return-object v0

    .line 81
    :pswitch_11
    const-string v0, "volumeChanged"

    return-object v0

    .line 77
    :pswitch_14
    const-string v0, "displaySafeVolumeWarning"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 68
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 283
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 108
    invoke-static {p1}, Landroid/media/IVolumeController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    const-string v0, "android.media.IVolumeController"

    .line 113
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 114
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    :cond_d
    packed-switch p1, :pswitch_data_5c

    .line 124
    packed-switch p1, :pswitch_data_62

    .line 175
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 120
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    return v1

    .line 168
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 169
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, v2}, Landroid/media/IVolumeController$Stub;->setA11yMode(I)V

    .line 171
    goto :goto_5b

    .line 162
    .end local v2    # "_arg0":I
    :pswitch_27
    invoke-virtual {p0}, Landroid/media/IVolumeController$Stub;->dismiss()V

    .line 163
    goto :goto_5b

    .line 155
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 156
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v2}, Landroid/media/IVolumeController$Stub;->setLayoutDirection(I)V

    .line 158
    goto :goto_5b

    .line 147
    .end local v2    # "_arg0":I
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 148
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2}, Landroid/media/IVolumeController$Stub;->masterMuteChanged(I)V

    .line 150
    goto :goto_5b

    .line 137
    .end local v2    # "_arg0":I
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 139
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 140
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, v2, v3}, Landroid/media/IVolumeController$Stub;->volumeChanged(II)V

    .line 142
    goto :goto_5b

    .line 129
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 130
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, v2}, Landroid/media/IVolumeController$Stub;->displaySafeVolumeWarning(I)V

    .line 132
    nop

    .line 178
    .end local v2    # "_arg0":I
    :goto_5b
    return v1

    :pswitch_data_5c
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_50
        :pswitch_41
        :pswitch_36
        :pswitch_2b
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
