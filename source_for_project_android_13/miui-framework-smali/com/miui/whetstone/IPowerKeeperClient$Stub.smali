.class public abstract Lcom/miui/whetstone/IPowerKeeperClient$Stub;
.super Landroid/os/Binder;
.source "IPowerKeeperClient.java"

# interfaces
.implements Lcom/miui/whetstone/IPowerKeeperClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/IPowerKeeperClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/IPowerKeeperClient$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_enableATrace:I = 0x3

.field static final blacklist TRANSACTION_notifyBluetooth:I = 0x6

.field static final blacklist TRANSACTION_notifyEvent:I = 0x7

.field static final blacklist TRANSACTION_notifyFloatWindowScene:I = 0x9

.field static final blacklist TRANSACTION_notifyFrozenAppWakeUpByHighPriorityAlarm:I = 0x1

.field static final blacklist TRANSACTION_notifyScreenOn:I = 0x4

.field static final blacklist TRANSACTION_notifySyncEvent:I = 0x5

.field static final blacklist TRANSACTION_notifyTouchStatus:I = 0x8

.field static final blacklist TRANSACTION_perfThermalBreakAcquire:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "com.miui.whetstone.IPowerKeeperClient"

    invoke-virtual {p0, p0, v0}, Lcom/miui/whetstone/IPowerKeeperClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IPowerKeeperClient;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_4
    const-string v0, "com.miui.whetstone.IPowerKeeperClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/whetstone/IPowerKeeperClient;

    if-eqz v1, :cond_14

    .line 61
    move-object v1, v0

    check-cast v1, Lcom/miui/whetstone/IPowerKeeperClient;

    return-object v1

    .line 63
    :cond_14
    new-instance v1, Lcom/miui/whetstone/IPowerKeeperClient$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/whetstone/IPowerKeeperClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 67
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "com.miui.whetstone.IPowerKeeperClient"

    .line 72
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_13

    const v0, 0xffffff

    if-gt v7, v0, :cond_13

    .line 73
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    :cond_13
    packed-switch v7, :pswitch_data_ba

    .line 83
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_c0

    .line 176
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 79
    :pswitch_20
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return v10

    .line 167
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 170
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {v6, v0, v1}, Lcom/miui/whetstone/IPowerKeeperClient$Stub;->notifyFloatWindowScene(Ljava/lang/String;Z)V

    .line 172
    goto/16 :goto_b8

    .line 159
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 160
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {v6, v0}, Lcom/miui/whetstone/IPowerKeeperClient$Stub;->notifyTouchStatus(Z)V

    .line 162
    goto/16 :goto_b8

    .line 149
    .end local v0    # "_arg0":Z
    :pswitch_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 151
    .local v0, "_arg0":I
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 152
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {v6, v0, v1}, Lcom/miui/whetstone/IPowerKeeperClient$Stub;->notifyEvent(ILandroid/os/Bundle;)V

    .line 154
    goto :goto_b8

    .line 135
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :pswitch_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 137
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 139
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 142
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/miui/whetstone/IPowerKeeperClient$Stub;->notifyBluetooth(IILjava/lang/String;I)V

    .line 144
    goto :goto_b8

    .line 119
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_6c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 121
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 123
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 125
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 127
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v16

    .line 128
    .local v16, "_arg4":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/miui/whetstone/IPowerKeeperClient$Stub;->notifySyncEvent(IILjava/lang/String;Ljava/lang/String;[I)V

    .line 130
    goto :goto_b8

    .line 113
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":[I
    :pswitch_8f
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IPowerKeeperClient$Stub;->notifyScreenOn()V

    .line 114
    goto :goto_b8

    .line 104
    :pswitch_93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 106
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 108
    invoke-virtual {v6, v0, v1}, Lcom/miui/whetstone/IPowerKeeperClient$Stub;->enableATrace(ZLjava/lang/String;)V

    .line 109
    goto :goto_b8

    .line 96
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_a2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 97
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 98
    invoke-virtual {v6, v0}, Lcom/miui/whetstone/IPowerKeeperClient$Stub;->perfThermalBreakAcquire(I)V

    .line 99
    goto :goto_b8

    .line 88
    .end local v0    # "_arg0":I
    :pswitch_ad
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 90
    invoke-virtual {v6, v0}, Lcom/miui/whetstone/IPowerKeeperClient$Stub;->notifyFrozenAppWakeUpByHighPriorityAlarm(I)V

    .line 91
    nop

    .line 179
    .end local v0    # "_arg0":I
    :goto_b8
    return v10

    nop

    :pswitch_data_ba
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_ad
        :pswitch_a2
        :pswitch_93
        :pswitch_8f
        :pswitch_6c
        :pswitch_55
        :pswitch_42
        :pswitch_36
        :pswitch_26
    .end packed-switch
.end method
