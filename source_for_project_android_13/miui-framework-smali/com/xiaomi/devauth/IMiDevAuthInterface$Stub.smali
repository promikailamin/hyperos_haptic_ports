.class public abstract Lcom/xiaomi/devauth/IMiDevAuthInterface$Stub;
.super Landroid/os/Binder;
.source "IMiDevAuthInterface.java"

# interfaces
.implements Lcom/xiaomi/devauth/IMiDevAuthInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/devauth/IMiDevAuthInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/devauth/IMiDevAuthInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_GetUidList:I = 0x7

.field static final blacklist TRANSACTION_UCarVerifyStart:I = 0x8

.field static final blacklist TRANSACTION_UcarCleanAllPublicKeyAndSalt:I = 0x9

.field static final blacklist TRANSACTION_chooseKey:I = 0x2

.field static final blacklist TRANSACTION_cleanAllOnlineKeyAndUidData:I = 0x6

.field static final blacklist TRANSACTION_getChallenge:I = 0x1

.field static final blacklist TRANSACTION_newKeyBlobGet:I = 0x5

.field static final blacklist TRANSACTION_tokenGet:I = 0x4

.field static final blacklist TRANSACTION_tokenVerify:I = 0x3


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    const-string v0, "com.xiaomi.devauth.IMiDevAuthInterface"

    invoke-virtual {p0, p0, v0}, Lcom/xiaomi/devauth/IMiDevAuthInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Lcom/xiaomi/devauth/IMiDevAuthInterface;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 73
    if-nez p0, :cond_4

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_4
    const-string v0, "com.xiaomi.devauth.IMiDevAuthInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 77
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/xiaomi/devauth/IMiDevAuthInterface;

    if-eqz v1, :cond_14

    .line 78
    move-object v1, v0

    check-cast v1, Lcom/xiaomi/devauth/IMiDevAuthInterface;

    return-object v1

    .line 80
    :cond_14
    new-instance v1, Lcom/xiaomi/devauth/IMiDevAuthInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaomi/devauth/IMiDevAuthInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 84
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

    .line 88
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    const-string v9, "com.xiaomi.devauth.IMiDevAuthInterface"

    .line 89
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_16

    const v0, 0xffffff

    if-gt v7, v0, :cond_16

    .line 90
    move-object/from16 v11, p2

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_18

    .line 89
    :cond_16
    move-object/from16 v11, p2

    .line 92
    :goto_18
    packed-switch v7, :pswitch_data_f6

    .line 100
    packed-switch v7, :pswitch_data_fc

    .line 211
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 96
    :pswitch_23
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v10

    .line 204
    :pswitch_27
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/devauth/IMiDevAuthInterface$Stub;->UcarCleanAllPublicKeyAndSalt()I

    move-result v0

    .line 205
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    goto/16 :goto_f5

    .line 193
    .end local v0    # "_result":I
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {v6, v0, v1}, Lcom/xiaomi/devauth/IMiDevAuthInterface$Stub;->UCarVerifyStart(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 198
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    goto/16 :goto_f5

    .line 185
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_4a
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/devauth/IMiDevAuthInterface$Stub;->GetUidList()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    goto/16 :goto_f5

    .line 178
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_56
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/devauth/IMiDevAuthInterface$Stub;->cleanAllOnlineKeyAndUidData()I

    move-result v0

    .line 179
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    goto/16 :goto_f5

    .line 163
    .end local v0    # "_result":I
    :pswitch_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 165
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 167
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 169
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 170
    .local v3, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/xiaomi/devauth/IMiDevAuthInterface$Stub;->newKeyBlobGet(I[B[B[B)[B

    move-result-object v4

    .line 172
    .local v4, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 174
    goto/16 :goto_f5

    .line 147
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":[B
    .end local v4    # "_result":[B
    :pswitch_81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 149
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 151
    .restart local v1    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 153
    .restart local v2    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 154
    .restart local v3    # "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/xiaomi/devauth/IMiDevAuthInterface$Stub;->tokenGet(I[B[B[B)[B

    move-result-object v4

    .line 156
    .restart local v4    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 158
    goto :goto_f5

    .line 129
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":[B
    .end local v4    # "_result":[B
    :pswitch_9f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 131
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .line 133
    .local v13, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 135
    .local v14, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 137
    .local v15, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 138
    .local v16, "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/devauth/IMiDevAuthInterface$Stub;->tokenVerify(I[B[B[B[B)I

    move-result v0

    .line 140
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    goto :goto_f5

    .line 115
    .end local v0    # "_result":I
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":[B
    .end local v14    # "_arg2":[B
    .end local v15    # "_arg3":[B
    .end local v16    # "_arg4":[B
    :pswitch_c9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 117
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 119
    .restart local v1    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 120
    .restart local v2    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {v6, v0, v1, v2}, Lcom/xiaomi/devauth/IMiDevAuthInterface$Stub;->chooseKey([B[B[B)[B

    move-result-object v3

    .line 122
    .local v3, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 124
    goto :goto_f5

    .line 105
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":[B
    .end local v3    # "_result":[B
    :pswitch_e3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 106
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 107
    invoke-virtual {v6, v0}, Lcom/xiaomi/devauth/IMiDevAuthInterface$Stub;->getChallenge(I)[B

    move-result-object v1

    .line 108
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 110
    nop

    .line 214
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[B
    :goto_f5
    return v10

    :pswitch_data_f6
    .packed-switch 0x5f4e5446
        :pswitch_23
    .end packed-switch

    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_e3
        :pswitch_c9
        :pswitch_9f
        :pswitch_81
        :pswitch_62
        :pswitch_56
        :pswitch_4a
        :pswitch_33
        :pswitch_27
    .end packed-switch
.end method
