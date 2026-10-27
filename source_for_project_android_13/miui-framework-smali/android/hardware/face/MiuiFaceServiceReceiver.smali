.class public abstract Landroid/hardware/face/MiuiFaceServiceReceiver;
.super Landroid/hardware/face/IFaceServiceReceiver$Stub;
.source "MiuiFaceServiceReceiver.java"


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "MiuiFaceManager"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHasInit:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;-><init>()V

    .line 23
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 25
    invoke-direct {p0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;-><init>()V

    .line 26
    iput-object p1, p0, Landroid/hardware/face/MiuiFaceServiceReceiver;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Landroid/hardware/face/MiuiFaceServiceReceiver;->mHandler:Landroid/os/Handler;

    .line 28
    return-void
.end method


# virtual methods
.method public blacklist getIsInited()Z
    .registers 2

    .line 119
    iget-boolean v0, p0, Landroid/hardware/face/MiuiFaceServiceReceiver;->mHasInit:Z

    return v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mServiceReceiver callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiFaceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "receiver.FaceService"

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_13c

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 108
    :sswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 110
    .local v0, "res":I
    iget-object v1, p0, Landroid/hardware/face/MiuiFaceServiceReceiver;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    return v3

    .line 101
    .end local v0    # "res":I
    :sswitch_3f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 103
    .restart local v0    # "res":I
    iget-object v1, p0, Landroid/hardware/face/MiuiFaceServiceReceiver;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x105

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    return v3

    .line 95
    .end local v0    # "res":I
    :sswitch_59
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v3, :cond_63

    move v1, v3

    :cond_63
    iput-boolean v1, p0, Landroid/hardware/face/MiuiFaceServiceReceiver;->mHasInit:Z

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    return v3

    .line 84
    :sswitch_69
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 86
    .local v4, "devId":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 87
    .local v2, "faceId":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 88
    .local v6, "groupId":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 89
    .local v7, "remaining":I
    iget-object v8, p0, Landroid/hardware/face/MiuiFaceServiceReceiver;->mHandler:Landroid/os/Handler;

    const/16 v9, 0xce

    new-instance v10, Landroid/hardware/face/Face;

    invoke-direct {v10, v0, v2, v4, v5}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    invoke-virtual {v8, v9, v7, v1, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    return v3

    .line 75
    .end local v2    # "faceId":I
    .end local v4    # "devId":J
    .end local v6    # "groupId":I
    .end local v7    # "remaining":I
    :sswitch_90
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 77
    .local v0, "devId":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 78
    .local v2, "error":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 79
    .local v4, "vendorCode":I
    iget-object v5, p0, Landroid/hardware/face/MiuiFaceServiceReceiver;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xcd

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v2, v4, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    return v3

    .line 68
    .end local v0    # "devId":J
    .end local v2    # "error":I
    .end local v4    # "vendorCode":I
    :sswitch_b2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 70
    .restart local v0    # "devId":J
    iget-object v2, p0, Landroid/hardware/face/MiuiFaceServiceReceiver;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xcc

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    return v3

    .line 56
    .end local v0    # "devId":J
    :sswitch_c8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 58
    .local v4, "devId":J
    const/4 v0, 0x0

    .line 59
    .local v0, "face":Landroid/hardware/face/Face;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_df

    .line 60
    sget-object v2, Landroid/hardware/face/Face;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/hardware/face/Face;

    .line 62
    :cond_df
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 63
    .local v2, "userId":I
    iget-object v6, p0, Landroid/hardware/face/MiuiFaceServiceReceiver;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xcb

    invoke-virtual {v6, v7, v2, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    return v3

    .line 47
    .end local v0    # "face":Landroid/hardware/face/Face;
    .end local v2    # "userId":I
    .end local v4    # "devId":J
    :sswitch_f2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 49
    .local v0, "devId":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 50
    .local v2, "acquiredInfo":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 51
    .local v4, "vendorCode":I
    iget-object v5, p0, Landroid/hardware/face/MiuiFaceServiceReceiver;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xca

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v2, v4, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    return v3

    .line 36
    .end local v0    # "devId":J
    .end local v2    # "acquiredInfo":I
    .end local v4    # "vendorCode":I
    :sswitch_114
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 38
    .local v4, "devId":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 39
    .local v2, "faceId":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 40
    .restart local v6    # "groupId":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 41
    .local v7, "remaning":I
    iget-object v8, p0, Landroid/hardware/face/MiuiFaceServiceReceiver;->mHandler:Landroid/os/Handler;

    const/16 v9, 0xc9

    new-instance v10, Landroid/hardware/face/Face;

    invoke-direct {v10, v0, v2, v4, v5}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    invoke-virtual {v8, v9, v7, v1, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 44
    return v3

    nop

    :sswitch_data_13c
    .sparse-switch
        0xc9 -> :sswitch_114
        0xca -> :sswitch_f2
        0xcb -> :sswitch_c8
        0xcc -> :sswitch_b2
        0xcd -> :sswitch_90
        0xce -> :sswitch_69
        0xcf -> :sswitch_59
        0x105 -> :sswitch_3f
        0x12d -> :sswitch_25
    .end sparse-switch
.end method
