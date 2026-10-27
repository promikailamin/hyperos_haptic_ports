.class public abstract Lcom/miui/enterprise/IAPNManager$Stub;
.super Landroid/os/Binder;
.source "IAPNManager.java"

# interfaces
.implements Lcom/miui/enterprise/IAPNManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/enterprise/IAPNManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/enterprise/IAPNManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_activeAPN:I = 0xc

.field static final blacklist TRANSACTION_activeAPNForNumeric:I = 0xb

.field static final blacklist TRANSACTION_addAPN:I = 0x6

.field static final blacklist TRANSACTION_addAPNForNumeric:I = 0x5

.field static final blacklist TRANSACTION_deleteAPN:I = 0x8

.field static final blacklist TRANSACTION_deleteAPNForNumeric:I = 0x7

.field static final blacklist TRANSACTION_editAPN:I = 0xa

.field static final blacklist TRANSACTION_editAPNForNumeric:I = 0x9

.field static final blacklist TRANSACTION_getAPN:I = 0x4

.field static final blacklist TRANSACTION_getAPNActiveMode:I = 0xf

.field static final blacklist TRANSACTION_getAPNForNumeric:I = 0x3

.field static final blacklist TRANSACTION_getAPNList:I = 0x2

.field static final blacklist TRANSACTION_getAPNListForNumeric:I = 0x1

.field static final blacklist TRANSACTION_queryApn:I = 0x10

.field static final blacklist TRANSACTION_resetAPN:I = 0xd

.field static final blacklist TRANSACTION_setAPNActiveMode:I = 0xe


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 80
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 81
    const-string v0, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p0, p0, v0}, Lcom/miui/enterprise/IAPNManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/miui/enterprise/IAPNManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 89
    if-nez p0, :cond_4

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_4
    const-string v0, "com.miui.enterprise.IAPNManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 93
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/enterprise/IAPNManager;

    if-eqz v1, :cond_14

    .line 94
    move-object v1, v0

    check-cast v1, Lcom/miui/enterprise/IAPNManager;

    return-object v1

    .line 96
    :cond_14
    new-instance v1, Lcom/miui/enterprise/IAPNManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/enterprise/IAPNManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 100
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    const-string v0, "com.miui.enterprise.IAPNManager"

    .line 105
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 106
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    :cond_d
    packed-switch p1, :pswitch_data_14a

    .line 116
    packed-switch p1, :pswitch_data_150

    .line 280
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 112
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    return v1

    .line 271
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 273
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IAPNManager$Stub;->queryApn(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 274
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 276
    goto/16 :goto_148

    .line 263
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2f
    invoke-virtual {p0}, Lcom/miui/enterprise/IAPNManager$Stub;->getAPNActiveMode()I

    move-result v2

    .line 264
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    goto/16 :goto_148

    .line 255
    .end local v2    # "_result":I
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 256
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IAPNManager$Stub;->setAPNActiveMode(I)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    goto/16 :goto_148

    .line 247
    .end local v2    # "_arg0":I
    :pswitch_4a
    invoke-virtual {p0}, Lcom/miui/enterprise/IAPNManager$Stub;->resetAPN()Z

    move-result v2

    .line 248
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 250
    goto/16 :goto_148

    .line 238
    .end local v2    # "_result":Z
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IAPNManager$Stub;->activeAPN(Ljava/lang/String;)Z

    move-result v3

    .line 241
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 243
    goto/16 :goto_148

    .line 227
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 229
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, v2, v3}, Lcom/miui/enterprise/IAPNManager$Stub;->activeAPNForNumeric(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    goto/16 :goto_148

    .line 215
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 217
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Lcom/miui/enterprise/sdk/APNConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/enterprise/sdk/APNConfig;

    .line 218
    .local v3, "_arg1":Lcom/miui/enterprise/sdk/APNConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {p0, v2, v3}, Lcom/miui/enterprise/IAPNManager$Stub;->editAPN(Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)Z

    move-result v4

    .line 220
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 222
    goto/16 :goto_148

    .line 202
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/miui/enterprise/sdk/APNConfig;
    .end local v4    # "_result":Z
    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 204
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Lcom/miui/enterprise/sdk/APNConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/enterprise/sdk/APNConfig;

    .line 207
    .local v4, "_arg2":Lcom/miui/enterprise/sdk/APNConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, v2, v3, v4}, Lcom/miui/enterprise/IAPNManager$Stub;->editAPNForNumeric(Ljava/lang/String;Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    goto/16 :goto_148

    .line 192
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Lcom/miui/enterprise/sdk/APNConfig;
    :pswitch_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 193
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IAPNManager$Stub;->deleteAPN(Ljava/lang/String;)Z

    move-result v3

    .line 195
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 197
    goto/16 :goto_148

    .line 181
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 183
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v2, v3}, Lcom/miui/enterprise/IAPNManager$Stub;->deleteAPNForNumeric(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    goto :goto_148

    .line 171
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_d7
    sget-object v2, Lcom/miui/enterprise/sdk/APNConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/enterprise/sdk/APNConfig;

    .line 172
    .local v2, "_arg0":Lcom/miui/enterprise/sdk/APNConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IAPNManager$Stub;->addAPN(Lcom/miui/enterprise/sdk/APNConfig;)Z

    move-result v3

    .line 174
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 176
    goto :goto_148

    .line 160
    .end local v2    # "_arg0":Lcom/miui/enterprise/sdk/APNConfig;
    .end local v3    # "_result":Z
    :pswitch_ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Lcom/miui/enterprise/sdk/APNConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/enterprise/sdk/APNConfig;

    .line 163
    .local v3, "_arg1":Lcom/miui/enterprise/sdk/APNConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, v2, v3}, Lcom/miui/enterprise/IAPNManager$Stub;->addAPNForNumeric(Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    goto :goto_148

    .line 150
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/miui/enterprise/sdk/APNConfig;
    :pswitch_103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 151
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IAPNManager$Stub;->getAPN(Ljava/lang/String;)Lcom/miui/enterprise/sdk/APNConfig;

    move-result-object v3

    .line 153
    .local v3, "_result":Lcom/miui/enterprise/sdk/APNConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 155
    goto :goto_148

    .line 138
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/miui/enterprise/sdk/APNConfig;
    :pswitch_115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 140
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2, v3}, Lcom/miui/enterprise/IAPNManager$Stub;->getAPNForNumeric(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/enterprise/sdk/APNConfig;

    move-result-object v4

    .line 143
    .local v4, "_result":Lcom/miui/enterprise/sdk/APNConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 145
    goto :goto_148

    .line 130
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Lcom/miui/enterprise/sdk/APNConfig;
    :pswitch_12b
    invoke-virtual {p0}, Lcom/miui/enterprise/IAPNManager$Stub;->getAPNList()Ljava/util/List;

    move-result-object v2

    .line 131
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/miui/enterprise/sdk/APNConfig;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 133
    goto :goto_148

    .line 121
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/miui/enterprise/sdk/APNConfig;>;"
    :pswitch_136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IAPNManager$Stub;->getAPNListForNumeric(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 124
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/miui/enterprise/sdk/APNConfig;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 126
    nop

    .line 283
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/miui/enterprise/sdk/APNConfig;>;"
    :goto_148
    return v1

    nop

    :pswitch_data_14a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_150
    .packed-switch 0x1
        :pswitch_136
        :pswitch_12b
        :pswitch_115
        :pswitch_103
        :pswitch_ed
        :pswitch_d7
        :pswitch_c5
        :pswitch_b2
        :pswitch_97
        :pswitch_7c
        :pswitch_69
        :pswitch_56
        :pswitch_4a
        :pswitch_3b
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
