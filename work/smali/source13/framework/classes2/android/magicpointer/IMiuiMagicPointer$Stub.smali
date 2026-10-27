.class public abstract Landroid/magicpointer/IMiuiMagicPointer$Stub;
.super Landroid/os/Binder;
.source "IMiuiMagicPointer.java"

# interfaces
.implements Landroid/magicpointer/IMiuiMagicPointer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/magicpointer/IMiuiMagicPointer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/magicpointer/IMiuiMagicPointer$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_removeMagicPointer:I = 0x2

.field static final blacklist TRANSACTION_setCustomPointerIcon:I = 0x4

.field static final blacklist TRANSACTION_setPointerIcon:I = 0x5

.field static final blacklist TRANSACTION_updateMagicPointer:I = 0x1

.field static final blacklist TRANSACTION_updatePointerState:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "android.magicpointer.IMiuiMagicPointer"

    invoke-virtual {p0, p0, v0}, Landroid/magicpointer/IMiuiMagicPointer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/magicpointer/IMiuiMagicPointer;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_4
    const-string v0, "android.magicpointer.IMiuiMagicPointer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/magicpointer/IMiuiMagicPointer;

    if-eqz v1, :cond_14

    .line 50
    move-object v1, v0

    check-cast v1, Landroid/magicpointer/IMiuiMagicPointer;

    return-object v1

    .line 52
    :cond_14
    new-instance v1, Landroid/magicpointer/IMiuiMagicPointer$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/magicpointer/IMiuiMagicPointer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 61
    packed-switch p0, :pswitch_data_14

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 81
    :pswitch_5
    const-string v0, "setPointerIcon"

    return-object v0

    .line 77
    :pswitch_8
    const-string v0, "setCustomPointerIcon"

    return-object v0

    .line 73
    :pswitch_b
    const-string v0, "updatePointerState"

    return-object v0

    .line 69
    :pswitch_e
    const-string v0, "removeMagicPointer"

    return-object v0

    .line 65
    :pswitch_11
    const-string v0, "updateMagicPointer"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
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

    .line 56
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 244
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 92
    invoke-static {p1}, Landroid/magicpointer/IMiuiMagicPointer$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 96
    const-string v0, "android.magicpointer.IMiuiMagicPointer"

    .line 97
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 98
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    :cond_d
    packed-switch p1, :pswitch_data_5e

    .line 108
    packed-switch p1, :pswitch_data_64

    .line 154
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 104
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 147
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 148
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2}, Landroid/magicpointer/IMiuiMagicPointer$Stub;->setPointerIcon(I)V

    .line 150
    goto :goto_5d

    .line 139
    .end local v2    # "_arg0":I
    :pswitch_27
    sget-object v2, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 140
    .local v2, "_arg0":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, v2}, Landroid/magicpointer/IMiuiMagicPointer$Stub;->setCustomPointerIcon(Landroid/graphics/Bitmap;)V

    .line 142
    goto :goto_5d

    .line 131
    .end local v2    # "_arg0":Landroid/graphics/Bitmap;
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 132
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {p0, v2}, Landroid/magicpointer/IMiuiMagicPointer$Stub;->updatePointerState(I)V

    .line 134
    goto :goto_5d

    .line 123
    .end local v2    # "_arg0":I
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 124
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, v2}, Landroid/magicpointer/IMiuiMagicPointer$Stub;->removeMagicPointer(I)V

    .line 126
    goto :goto_5d

    .line 113
    .end local v2    # "_arg0":I
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 115
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/magicpointer/MagicPointer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 116
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/magicpointer/MagicPointer;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-virtual {p0, v2, v3}, Landroid/magicpointer/IMiuiMagicPointer$Stub;->updateMagicPointer(ILjava/util/List;)V

    .line 118
    nop

    .line 157
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/magicpointer/MagicPointer;>;"
    :goto_5d
    return v1

    :pswitch_data_5e
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_41
        :pswitch_36
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
