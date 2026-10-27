.class public abstract Lorg/ifaa/android/manager/IIFAAService$Stub;
.super Landroid/os/Binder;
.source "IIFAAService.java"

# interfaces
.implements Lorg/ifaa/android/manager/IIFAAService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ifaa/android/manager/IIFAAService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ifaa/android/manager/IIFAAService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_faceAuthenticate_v2:I = 0x5

.field static final blacklist TRANSACTION_faceCancel_v2:I = 0x6

.field static final blacklist TRANSACTION_faceEnroll:I = 0x3

.field static final blacklist TRANSACTION_faceGetCellinfo:I = 0x8

.field static final blacklist TRANSACTION_faceInvokeCommand:I = 0x7

.field static final blacklist TRANSACTION_faceUpgrade:I = 0x4

.field static final blacklist TRANSACTION_getIDList:I = 0x2

.field static final blacklist TRANSACTION_processCmd_v2:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "org.ifaa.android.manager.IIFAAService"

    invoke-virtual {p0, p0, v0}, Lorg/ifaa/android/manager/IIFAAService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lorg/ifaa/android/manager/IIFAAService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 62
    if-nez p0, :cond_4

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_4
    const-string v0, "org.ifaa.android.manager.IIFAAService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lorg/ifaa/android/manager/IIFAAService;

    if-eqz v1, :cond_14

    .line 67
    move-object v1, v0

    check-cast v1, Lorg/ifaa/android/manager/IIFAAService;

    return-object v1

    .line 69
    :cond_14
    new-instance v1, Lorg/ifaa/android/manager/IIFAAService$Stub$Proxy;

    invoke-direct {v1, p0}, Lorg/ifaa/android/manager/IIFAAService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 73
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

    .line 77
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    const-string v9, "org.ifaa.android.manager.IIFAAService"

    .line 78
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_16

    const v0, 0xffffff

    if-gt v7, v0, :cond_16

    .line 79
    move-object/from16 v11, p2

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_18

    .line 78
    :cond_16
    move-object/from16 v11, p2

    .line 81
    :goto_18
    packed-switch v7, :pswitch_data_d4

    .line 89
    packed-switch v7, :pswitch_data_da

    .line 182
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 85
    :pswitch_23
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    return v10

    .line 175
    :pswitch_27
    invoke-virtual/range {p0 .. p0}, Lorg/ifaa/android/manager/IIFAAService$Stub;->faceGetCellinfo()I

    move-result v0

    .line 176
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    goto/16 :goto_d3

    .line 166
    .end local v0    # "_result":I
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 167
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {v6, v0}, Lorg/ifaa/android/manager/IIFAAService$Stub;->faceInvokeCommand([B)[B

    move-result-object v1

    .line 169
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 171
    goto/16 :goto_d3

    .line 156
    .end local v0    # "_arg0":[B
    .end local v1    # "_result":[B
    :pswitch_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {v6, v0}, Lorg/ifaa/android/manager/IIFAAService$Stub;->faceCancel_v2(Ljava/lang/String;)I

    move-result v1

    .line 159
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    goto/16 :goto_d3

    .line 144
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 147
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {v6, v0, v1}, Lorg/ifaa/android/manager/IIFAAService$Stub;->faceAuthenticate_v2(Ljava/lang/String;I)I

    move-result v2

    .line 149
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    goto :goto_d3

    .line 126
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_6f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 128
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 130
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 132
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 134
    .local v15, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 135
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    move v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lorg/ifaa/android/manager/IIFAAService$Stub;->faceUpgrade(ILjava/lang/String;I[BI)I

    move-result v0

    .line 137
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    goto :goto_d3

    .line 114
    .end local v0    # "_result":I
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":[B
    .end local v16    # "_arg4":I
    :pswitch_99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 117
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {v6, v0, v1}, Lorg/ifaa/android/manager/IIFAAService$Stub;->faceEnroll(Ljava/lang/String;I)I

    move-result v2

    .line 119
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    goto :goto_d3

    .line 104
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_af
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 105
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    invoke-virtual {v6, v0}, Lorg/ifaa/android/manager/IIFAAService$Stub;->getIDList(I)[I

    move-result-object v1

    .line 107
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 109
    goto :goto_d3

    .line 94
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[I
    :pswitch_c1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 95
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 96
    invoke-virtual {v6, v0}, Lorg/ifaa/android/manager/IIFAAService$Stub;->processCmd_v2([B)[B

    move-result-object v1

    .line 97
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 99
    nop

    .line 185
    .end local v0    # "_arg0":[B
    .end local v1    # "_result":[B
    :goto_d3
    return v10

    :pswitch_data_d4
    .packed-switch 0x5f4e5446
        :pswitch_23
    .end packed-switch

    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_c1
        :pswitch_af
        :pswitch_99
        :pswitch_6f
        :pswitch_59
        :pswitch_46
        :pswitch_33
        :pswitch_27
    .end packed-switch
.end method
