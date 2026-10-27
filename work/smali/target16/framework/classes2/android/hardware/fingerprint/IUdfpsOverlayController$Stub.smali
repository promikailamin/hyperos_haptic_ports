.class public abstract Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;
.super Landroid/os/Binder;
.source "IUdfpsOverlayController.java"

# interfaces
.implements Landroid/hardware/fingerprint/IUdfpsOverlayController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/IUdfpsOverlayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_hideUdfpsOverlay:I = 0x2

.field static final blacklist TRANSACTION_onAcquired:I = 0x3

.field static final blacklist TRANSACTION_onEnrollmentHelp:I = 0x5

.field static final blacklist TRANSACTION_onEnrollmentProgress:I = 0x4

.field static final blacklist TRANSACTION_setDebugMessage:I = 0x6

.field static final blacklist TRANSACTION_showUdfpsOverlay:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    const-string v0, "android.hardware.fingerprint.IUdfpsOverlayController"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IUdfpsOverlayController;
    .registers 3

    .line 65
    if-nez p0, :cond_4

    .line 66
    const/4 p0, 0x0

    return-object p0

    .line 68
    :cond_4
    const-string v0, "android.hardware.fingerprint.IUdfpsOverlayController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/fingerprint/IUdfpsOverlayController;

    if-eqz v1, :cond_13

    .line 70
    check-cast v0, Landroid/hardware/fingerprint/IUdfpsOverlayController;

    return-object v0

    .line 72
    :cond_13
    new-instance v0, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 81
    packed-switch p0, :pswitch_data_18

    .line 109
    const/4 p0, 0x0

    return-object p0

    .line 105
    :pswitch_5
    const-string p0, "setDebugMessage"

    return-object p0

    .line 101
    :pswitch_8
    const-string p0, "onEnrollmentHelp"

    return-object p0

    .line 97
    :pswitch_b
    const-string p0, "onEnrollmentProgress"

    return-object p0

    .line 93
    :pswitch_e
    const-string p0, "onAcquired"

    return-object p0

    .line 89
    :pswitch_11
    const-string p0, "hideUdfpsOverlay"

    return-object p0

    .line 85
    :pswitch_14
    const-string p0, "showUdfpsOverlay"

    return-object p0

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

    .line 76
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 308
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 116
    invoke-static {p1}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    nop

    .line 121
    const-string v0, "android.hardware.fingerprint.IUdfpsOverlayController"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 122
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 125
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    return v1

    .line 128
    :cond_17
    packed-switch p1, :pswitch_data_80

    .line 192
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 183
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, p1, p3}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->setDebugMessage(ILjava/lang/String;)V

    .line 188
    goto :goto_7e

    .line 175
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->onEnrollmentHelp(I)V

    .line 178
    goto :goto_7e

    .line 165
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, p1, p3}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->onEnrollmentProgress(II)V

    .line 170
    goto :goto_7e

    .line 155
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, p1, p3}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->onAcquired(II)V

    .line 160
    goto :goto_7e

    .line 147
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->hideUdfpsOverlay(I)V

    .line 150
    goto :goto_7e

    .line 133
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;

    move-result-object v7

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->showUdfpsOverlay(JIILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;)V

    .line 142
    nop

    .line 195
    :goto_7e
    return v1

    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_62
        :pswitch_57
        :pswitch_48
        :pswitch_39
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
