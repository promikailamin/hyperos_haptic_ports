.class public abstract Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;
.super Landroid/os/Binder;
.source "IRequestProcessorImpl.java"

# interfaces
.implements Landroid/hardware/camera2/extension/IRequestProcessorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/IRequestProcessorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_abortCaptures:I = 0x5

.field static final blacklist TRANSACTION_setImageProcessor:I = 0x1

.field static final blacklist TRANSACTION_setRepeating:I = 0x4

.field static final blacklist TRANSACTION_stopRepeating:I = 0x6

.field static final blacklist TRANSACTION_submit:I = 0x2

.field static final blacklist TRANSACTION_submitBurst:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "android.hardware.camera2.extension.IRequestProcessorImpl"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IRequestProcessorImpl;
    .registers 3

    .line 57
    if-nez p0, :cond_4

    .line 58
    const/4 p0, 0x0

    return-object p0

    .line 60
    :cond_4
    const-string v0, "android.hardware.camera2.extension.IRequestProcessorImpl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    if-eqz v1, :cond_13

    .line 62
    check-cast v0, Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    return-object v0

    .line 64
    :cond_13
    new-instance v0, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 73
    packed-switch p0, :pswitch_data_18

    .line 101
    const/4 p0, 0x0

    return-object p0

    .line 97
    :pswitch_5
    const-string p0, "stopRepeating"

    return-object p0

    .line 93
    :pswitch_8
    const-string p0, "abortCaptures"

    return-object p0

    .line 89
    :pswitch_b
    const-string p0, "setRepeating"

    return-object p0

    .line 85
    :pswitch_e
    const-string p0, "submitBurst"

    return-object p0

    .line 81
    :pswitch_11
    const-string p0, "submit"

    return-object p0

    .line 77
    :pswitch_14
    const-string p0, "setImageProcessor"

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

    .line 68
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 314
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 108
    invoke-static {p1}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 112
    nop

    .line 113
    const-string v0, "android.hardware.camera2.extension.IRequestProcessorImpl"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 114
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 117
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return v1

    .line 120
    :cond_17
    packed-switch p1, :pswitch_data_a2

    .line 183
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 177
    :pswitch_1f
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;->stopRepeating()V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    goto/16 :goto_a0

    .line 171
    :pswitch_27
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;->abortCaptures()V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    goto :goto_a0

    .line 160
    :pswitch_2e
    sget-object p1, Landroid/hardware/camera2/extension/Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/extension/Request;

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/camera2/extension/IRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IRequestCallback;

    move-result-object p4

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, p1, p4}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;->setRepeating(Landroid/hardware/camera2/extension/Request;Landroid/hardware/camera2/extension/IRequestCallback;)I

    move-result p1

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    goto :goto_a0

    .line 148
    :pswitch_4c
    sget-object p1, Landroid/hardware/camera2/extension/Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/camera2/extension/IRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IRequestCallback;

    move-result-object p4

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, p1, p4}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;->submitBurst(Ljava/util/List;Landroid/hardware/camera2/extension/IRequestCallback;)I

    move-result p1

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    goto :goto_a0

    .line 136
    :pswitch_68
    sget-object p1, Landroid/hardware/camera2/extension/Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/extension/Request;

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/camera2/extension/IRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IRequestCallback;

    move-result-object p4

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, p1, p4}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;->submit(Landroid/hardware/camera2/extension/Request;Landroid/hardware/camera2/extension/IRequestCallback;)I

    move-result p1

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    goto :goto_a0

    .line 125
    :pswitch_86
    sget-object p1, Landroid/hardware/camera2/extension/OutputConfigId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/extension/OutputConfigId;

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/camera2/extension/IImageProcessorImpl$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IImageProcessorImpl;

    move-result-object p4

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, p1, p4}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;->setImageProcessor(Landroid/hardware/camera2/extension/OutputConfigId;Landroid/hardware/camera2/extension/IImageProcessorImpl;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    nop

    .line 186
    :goto_a0
    return v1

    nop

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_86
        :pswitch_68
        :pswitch_4c
        :pswitch_2e
        :pswitch_27
        :pswitch_1f
    .end packed-switch
.end method
