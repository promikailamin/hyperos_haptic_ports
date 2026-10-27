.class public abstract Landroid/hardware/camera2/extension/ICaptureCallback$Stub;
.super Landroid/os/Binder;
.source "ICaptureCallback.java"

# interfaces
.implements Landroid/hardware/camera2/extension/ICaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/ICaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/ICaptureCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onCaptureCompleted:I = 0x6

.field static final blacklist TRANSACTION_onCaptureFailed:I = 0x3

.field static final blacklist TRANSACTION_onCaptureProcessFailed:I = 0x8

.field static final blacklist TRANSACTION_onCaptureProcessProgressed:I = 0x7

.field static final blacklist TRANSACTION_onCaptureProcessStarted:I = 0x2

.field static final blacklist TRANSACTION_onCaptureSequenceAborted:I = 0x5

.field static final blacklist TRANSACTION_onCaptureSequenceCompleted:I = 0x4

.field static final blacklist TRANSACTION_onCaptureStarted:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "android.hardware.camera2.extension.ICaptureCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/ICaptureCallback;
    .registers 3

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 p0, 0x0

    return-object p0

    .line 63
    :cond_4
    const-string v0, "android.hardware.camera2.extension.ICaptureCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/camera2/extension/ICaptureCallback;

    if-eqz v1, :cond_13

    .line 65
    check-cast v0, Landroid/hardware/camera2/extension/ICaptureCallback;

    return-object v0

    .line 67
    :cond_13
    new-instance v0, Landroid/hardware/camera2/extension/ICaptureCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 76
    packed-switch p0, :pswitch_data_1e

    .line 112
    const/4 p0, 0x0

    return-object p0

    .line 108
    :pswitch_5
    const-string p0, "onCaptureProcessFailed"

    return-object p0

    .line 104
    :pswitch_8
    const-string p0, "onCaptureProcessProgressed"

    return-object p0

    .line 100
    :pswitch_b
    const-string p0, "onCaptureCompleted"

    return-object p0

    .line 96
    :pswitch_e
    const-string p0, "onCaptureSequenceAborted"

    return-object p0

    .line 92
    :pswitch_11
    const-string p0, "onCaptureSequenceCompleted"

    return-object p0

    .line 88
    :pswitch_14
    const-string p0, "onCaptureFailed"

    return-object p0

    .line 84
    :pswitch_17
    const-string p0, "onCaptureProcessStarted"

    return-object p0

    .line 80
    :pswitch_1a
    const-string p0, "onCaptureStarted"

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_17
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

    .line 71
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 371
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 119
    invoke-static {p1}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    nop

    .line 124
    const-string v0, "android.hardware.camera2.extension.ICaptureCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 125
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 128
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    return v1

    .line 131
    :cond_17
    packed-switch p1, :pswitch_data_a6

    .line 215
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 205
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, p1, p4}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;->onCaptureProcessFailed(II)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    goto/16 :goto_a4

    .line 196
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;->onCaptureProcessProgressed(I)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    goto :goto_a4

    .line 183
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 187
    sget-object p4, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v2, v3, p1, p4}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;->onCaptureCompleted(JILandroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    goto :goto_a4

    .line 174
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;->onCaptureSequenceAborted(I)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    goto :goto_a4

    .line 165
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;->onCaptureSequenceCompleted(I)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    goto :goto_a4

    .line 156
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;->onCaptureFailed(I)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    goto :goto_a4

    .line 147
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;->onCaptureProcessStarted(I)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    goto :goto_a4

    .line 136
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, p1, v2, v3}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;->onCaptureStarted(IJ)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    nop

    .line 218
    :goto_a4
    return v1

    nop

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_92
        :pswitch_84
        :pswitch_76
        :pswitch_68
        :pswitch_5a
        :pswitch_40
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method
