.class public abstract Landroid/hardware/ICameraServiceListener$Stub;
.super Landroid/os/Binder;
.source "ICameraServiceListener.java"

# interfaces
.implements Landroid/hardware/ICameraServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ICameraServiceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ICameraServiceListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.ICameraServiceListener"

.field static final blacklist TRANSACTION_onCameraAccessPrioritiesChanged:I = 0x5

.field static final blacklist TRANSACTION_onCameraClosed:I = 0x8

.field static final blacklist TRANSACTION_onCameraOpened:I = 0x6

.field static final blacklist TRANSACTION_onCameraOpenedInSharedMode:I = 0x7

.field static final blacklist TRANSACTION_onPhysicalCameraStatusChanged:I = 0x2

.field static final greylist-max-o TRANSACTION_onStatusChanged:I = 0x1

.field static final greylist-max-o TRANSACTION_onTorchStatusChanged:I = 0x3

.field static final blacklist TRANSACTION_onTorchStrengthLevelChanged:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    const-string v0, "android.hardware.ICameraServiceListener"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/ICameraServiceListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceListener;
    .registers 3

    .line 79
    if-nez p0, :cond_4

    .line 80
    const/4 p0, 0x0

    return-object p0

    .line 82
    :cond_4
    const-string v0, "android.hardware.ICameraServiceListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/ICameraServiceListener;

    if-eqz v1, :cond_13

    .line 84
    check-cast v0, Landroid/hardware/ICameraServiceListener;

    return-object v0

    .line 86
    :cond_13
    new-instance v0, Landroid/hardware/ICameraServiceListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/ICameraServiceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 95
    packed-switch p0, :pswitch_data_26

    .line 131
    const/4 p0, 0x0

    return-object p0

    .line 127
    :pswitch_5
    const-string/jumbo p0, "onCameraClosed"

    return-object p0

    .line 123
    :pswitch_9
    const-string/jumbo p0, "onCameraOpenedInSharedMode"

    return-object p0

    .line 119
    :pswitch_d
    const-string/jumbo p0, "onCameraOpened"

    return-object p0

    .line 115
    :pswitch_11
    const-string/jumbo p0, "onCameraAccessPrioritiesChanged"

    return-object p0

    .line 111
    :pswitch_15
    const-string/jumbo p0, "onTorchStrengthLevelChanged"

    return-object p0

    .line 107
    :pswitch_19
    const-string/jumbo p0, "onTorchStatusChanged"

    return-object p0

    .line 103
    :pswitch_1d
    const-string/jumbo p0, "onPhysicalCameraStatusChanged"

    return-object p0

    .line 99
    :pswitch_21
    const-string/jumbo p0, "onStatusChanged"

    return-object p0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 90
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 408
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 138
    invoke-static {p1}, Landroid/hardware/ICameraServiceListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 142
    nop

    .line 143
    const-string v0, "android.hardware.ICameraServiceListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 144
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 147
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    return v1

    .line 150
    :cond_17
    packed-switch p1, :pswitch_data_ae

    .line 245
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 236
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, p1, p3}, Landroid/hardware/ICameraServiceListener$Stub;->onCameraClosed(Ljava/lang/String;I)V

    .line 241
    goto/16 :goto_ad

    .line 222
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/hardware/ICameraServiceListener$Stub;->onCameraOpenedInSharedMode(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 231
    goto :goto_ad

    .line 210
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {p0, p1, p3, p4}, Landroid/hardware/ICameraServiceListener$Stub;->onCameraOpened(Ljava/lang/String;Ljava/lang/String;I)V

    .line 217
    goto :goto_ad

    .line 204
    :pswitch_59
    invoke-virtual {p0}, Landroid/hardware/ICameraServiceListener$Stub;->onCameraAccessPrioritiesChanged()V

    .line 205
    goto :goto_ad

    .line 193
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, p1, p3, p4}, Landroid/hardware/ICameraServiceListener$Stub;->onTorchStrengthLevelChanged(Ljava/lang/String;II)V

    .line 200
    goto :goto_ad

    .line 181
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, p1, p3, p4}, Landroid/hardware/ICameraServiceListener$Stub;->onTorchStatusChanged(ILjava/lang/String;I)V

    .line 188
    goto :goto_ad

    .line 167
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/hardware/ICameraServiceListener$Stub;->onPhysicalCameraStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V

    .line 176
    goto :goto_ad

    .line 155
    :pswitch_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, p1, p3, p4}, Landroid/hardware/ICameraServiceListener$Stub;->onStatusChanged(ILjava/lang/String;I)V

    .line 162
    nop

    .line 248
    :goto_ad
    return v1

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_9a
        :pswitch_83
        :pswitch_70
        :pswitch_5d
        :pswitch_59
        :pswitch_46
        :pswitch_2f
        :pswitch_1f
    .end packed-switch
.end method
