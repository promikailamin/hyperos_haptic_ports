.class Landroid/hardware/face/MiuiFaceManager$1;
.super Landroid/os/Binder;
.source "MiuiFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/MiuiFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/face/MiuiFaceManager;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/face/MiuiFaceManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/hardware/face/MiuiFaceManager;

    .line 92
    iput-object p1, p0, Landroid/hardware/face/MiuiFaceManager$1;->this$0:Landroid/hardware/face/MiuiFaceManager;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 96
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

    .line 97
    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "receiver.FaceService"

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_15e

    .line 178
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 171
    :sswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 173
    .local v0, "res":I
    iget-object v1, p0, Landroid/hardware/face/MiuiFaceManager$1;->this$0:Landroid/hardware/face/MiuiFaceManager;

    invoke-static {v1}, Landroid/hardware/face/MiuiFaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/MiuiFaceManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x12d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    return v3

    .line 164
    .end local v0    # "res":I
    :sswitch_43
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 166
    .restart local v0    # "res":I
    iget-object v1, p0, Landroid/hardware/face/MiuiFaceManager$1;->this$0:Landroid/hardware/face/MiuiFaceManager;

    invoke-static {v1}, Landroid/hardware/face/MiuiFaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/MiuiFaceManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x105

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    return v3

    .line 158
    .end local v0    # "res":I
    :sswitch_61
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager$1;->this$0:Landroid/hardware/face/MiuiFaceManager;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_6d

    move v1, v3

    :cond_6d
    invoke-static {v0, v1}, Landroid/hardware/face/MiuiFaceManager;->-$$Nest$fputmHasInit(Landroid/hardware/face/MiuiFaceManager;Z)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    return v3

    .line 147
    :sswitch_74
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 149
    .local v4, "devId":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 150
    .local v2, "faceId":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 151
    .local v6, "groupId":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 152
    .local v7, "remaining":I
    iget-object v8, p0, Landroid/hardware/face/MiuiFaceManager$1;->this$0:Landroid/hardware/face/MiuiFaceManager;

    invoke-static {v8}, Landroid/hardware/face/MiuiFaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/MiuiFaceManager;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0xce

    new-instance v10, Landroid/hardware/face/Face;

    invoke-direct {v10, v0, v2, v4, v5}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    invoke-virtual {v8, v9, v7, v1, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    return v3

    .line 138
    .end local v2    # "faceId":I
    .end local v4    # "devId":J
    .end local v6    # "groupId":I
    .end local v7    # "remaining":I
    :sswitch_9f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 140
    .local v0, "devId":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 141
    .local v2, "error":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 142
    .local v4, "vendorCode":I
    iget-object v5, p0, Landroid/hardware/face/MiuiFaceManager$1;->this$0:Landroid/hardware/face/MiuiFaceManager;

    invoke-static {v5}, Landroid/hardware/face/MiuiFaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/MiuiFaceManager;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0xcd

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v2, v4, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    return v3

    .line 131
    .end local v0    # "devId":J
    .end local v2    # "error":I
    .end local v4    # "vendorCode":I
    :sswitch_c5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 133
    .restart local v0    # "devId":J
    iget-object v2, p0, Landroid/hardware/face/MiuiFaceManager$1;->this$0:Landroid/hardware/face/MiuiFaceManager;

    invoke-static {v2}, Landroid/hardware/face/MiuiFaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/MiuiFaceManager;)Landroid/os/Handler;

    move-result-object v2

    const/16 v4, 0xcc

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    return v3

    .line 119
    .end local v0    # "devId":J
    :sswitch_df
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 121
    .local v4, "devId":J
    const/4 v0, 0x0

    .line 122
    .local v0, "face":Landroid/hardware/face/Face;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f6

    .line 123
    sget-object v2, Landroid/hardware/face/Face;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/hardware/face/Face;

    .line 125
    :cond_f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 126
    .local v2, "userId":I
    iget-object v6, p0, Landroid/hardware/face/MiuiFaceManager$1;->this$0:Landroid/hardware/face/MiuiFaceManager;

    invoke-static {v6}, Landroid/hardware/face/MiuiFaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/MiuiFaceManager;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0xcb

    invoke-virtual {v6, v7, v2, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    return v3

    .line 110
    .end local v0    # "face":Landroid/hardware/face/Face;
    .end local v2    # "userId":I
    .end local v4    # "devId":J
    :sswitch_10d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 112
    .local v0, "devId":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 113
    .local v2, "acquiredInfo":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 114
    .local v4, "vendorCode":I
    iget-object v5, p0, Landroid/hardware/face/MiuiFaceManager$1;->this$0:Landroid/hardware/face/MiuiFaceManager;

    invoke-static {v5}, Landroid/hardware/face/MiuiFaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/MiuiFaceManager;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0xca

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v2, v4, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    return v3

    .line 99
    .end local v0    # "devId":J
    .end local v2    # "acquiredInfo":I
    .end local v4    # "vendorCode":I
    :sswitch_133
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 101
    .local v4, "devId":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 102
    .local v2, "faceId":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 103
    .restart local v6    # "groupId":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 104
    .local v7, "remaning":I
    iget-object v8, p0, Landroid/hardware/face/MiuiFaceManager$1;->this$0:Landroid/hardware/face/MiuiFaceManager;

    invoke-static {v8}, Landroid/hardware/face/MiuiFaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/MiuiFaceManager;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0xc9

    new-instance v10, Landroid/hardware/face/Face;

    invoke-direct {v10, v0, v2, v4, v5}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    invoke-virtual {v8, v9, v7, v1, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    return v3

    :sswitch_data_15e
    .sparse-switch
        0xc9 -> :sswitch_133
        0xca -> :sswitch_10d
        0xcb -> :sswitch_df
        0xcc -> :sswitch_c5
        0xcd -> :sswitch_9f
        0xce -> :sswitch_74
        0xcf -> :sswitch_61
        0x105 -> :sswitch_43
        0x12d -> :sswitch_25
    .end sparse-switch
.end method
