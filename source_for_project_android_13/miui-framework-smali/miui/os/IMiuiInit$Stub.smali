.class public abstract Lmiui/os/IMiuiInit$Stub;
.super Landroid/os/Binder;
.source "IMiuiInit.java"

# interfaces
.implements Lmiui/os/IMiuiInit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/os/IMiuiInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/os/IMiuiInit$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_copyPreinstallPAITrackingFile:I = 0xb

.field static final blacklist TRANSACTION_deleteAllSpecifiedPackageEventRecords:I = 0x18

.field static final blacklist TRANSACTION_deleteSpecifiedPackageEventRecords:I = 0x17

.field static final blacklist TRANSACTION_doFactoryReset:I = 0x4

.field static final blacklist TRANSACTION_getAspectRatio:I = 0xf

.field static final blacklist TRANSACTION_getCustVariants:I = 0x2

.field static final blacklist TRANSACTION_getCutoutMode:I = 0x15

.field static final blacklist TRANSACTION_getDefaultAspectType:I = 0x10

.field static final blacklist TRANSACTION_getMiuiChannelPath:I = 0x7

.field static final blacklist TRANSACTION_getMiuiPreinstallAppPath:I = 0xc

.field static final blacklist TRANSACTION_getNotchConfig:I = 0x11

.field static final blacklist TRANSACTION_getPackageEventRecords:I = 0x16

.field static final blacklist TRANSACTION_getPreinstalledAppVersion:I = 0x12

.field static final blacklist TRANSACTION_initCustEnvironment:I = 0x1

.field static final blacklist TRANSACTION_installPreinstallApp:I = 0x3

.field static final blacklist TRANSACTION_isPreinstalledPAIPackage:I = 0x6

.field static final blacklist TRANSACTION_isPreinstalledPackage:I = 0x5

.field static final blacklist TRANSACTION_isRestrictAspect:I = 0xe

.field static final blacklist TRANSACTION_removeFromPreinstallList:I = 0x8

.field static final blacklist TRANSACTION_removeFromPreinstallPAIList:I = 0x9

.field static final blacklist TRANSACTION_setCutoutMode:I = 0x14

.field static final blacklist TRANSACTION_setNotchSpecialMode:I = 0x13

.field static final blacklist TRANSACTION_setRestrictAspect:I = 0xd

.field static final blacklist TRANSACTION_writePreinstallPAIPackage:I = 0xa


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 107
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 108
    const-string v0, "miui.os.IMiuiInit"

    invoke-virtual {p0, p0, v0}, Lmiui/os/IMiuiInit$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/os/IMiuiInit;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 116
    if-nez p0, :cond_4

    .line 117
    const/4 v0, 0x0

    return-object v0

    .line 119
    :cond_4
    const-string v0, "miui.os.IMiuiInit"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 120
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/os/IMiuiInit;

    if-eqz v1, :cond_14

    .line 121
    move-object v1, v0

    check-cast v1, Lmiui/os/IMiuiInit;

    return-object v1

    .line 123
    :cond_14
    new-instance v1, Lmiui/os/IMiuiInit$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/os/IMiuiInit$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 127
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

    .line 131
    const-string v0, "miui.os.IMiuiInit"

    .line 132
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 133
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    :cond_d
    packed-switch p1, :pswitch_data_1c4

    .line 143
    packed-switch p1, :pswitch_data_1ca

    .line 384
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 139
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    return v1

    .line 375
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 376
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    invoke-virtual {p0, v2}, Lmiui/os/IMiuiInit$Stub;->deleteAllSpecifiedPackageEventRecords(I)Z

    move-result v3

    .line 378
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 380
    goto/16 :goto_1c3

    .line 364
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 366
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 367
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 368
    invoke-virtual {p0, v2, v3}, Lmiui/os/IMiuiInit$Stub;->deleteSpecifiedPackageEventRecords(ILjava/util/List;)V

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    goto/16 :goto_1c3

    .line 354
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 355
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 356
    invoke-virtual {p0, v2}, Lmiui/os/IMiuiInit$Stub;->getPackageEventRecords(I)Landroid/os/Bundle;

    move-result-object v3

    .line 357
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 359
    goto/16 :goto_1c3

    .line 344
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 346
    invoke-virtual {p0, v2}, Lmiui/os/IMiuiInit$Stub;->getCutoutMode(Ljava/lang/String;)I

    move-result v3

    .line 347
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    goto/16 :goto_1c3

    .line 334
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 336
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 337
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    invoke-virtual {p0, v2, v3}, Lmiui/os/IMiuiInit$Stub;->setCutoutMode(Ljava/lang/String;I)V

    .line 339
    goto/16 :goto_1c3

    .line 323
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 325
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 326
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 327
    invoke-virtual {p0, v2, v3}, Lmiui/os/IMiuiInit$Stub;->setNotchSpecialMode(Ljava/lang/String;Z)V

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    goto/16 :goto_1c3

    .line 313
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 314
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 315
    invoke-virtual {p0, v2}, Lmiui/os/IMiuiInit$Stub;->getPreinstalledAppVersion(Ljava/lang/String;)I

    move-result v3

    .line 316
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    goto/16 :goto_1c3

    .line 303
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_9e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 304
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, v2}, Lmiui/os/IMiuiInit$Stub;->getNotchConfig(Ljava/lang/String;)I

    move-result v3

    .line 306
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    goto/16 :goto_1c3

    .line 293
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 294
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, v2}, Lmiui/os/IMiuiInit$Stub;->getDefaultAspectType(Ljava/lang/String;)I

    move-result v3

    .line 296
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    goto/16 :goto_1c3

    .line 283
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 284
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {p0, v2}, Lmiui/os/IMiuiInit$Stub;->getAspectRatio(Ljava/lang/String;)F

    move-result v3

    .line 286
    .local v3, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 288
    goto/16 :goto_1c3

    .line 273
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":F
    :pswitch_d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 274
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {p0, v2}, Lmiui/os/IMiuiInit$Stub;->isRestrictAspect(Ljava/lang/String;)Z

    move-result v3

    .line 276
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 278
    goto/16 :goto_1c3

    .line 262
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 264
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 265
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {p0, v2, v3}, Lmiui/os/IMiuiInit$Stub;->setRestrictAspect(Ljava/lang/String;Z)V

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    goto/16 :goto_1c3

    .line 252
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 253
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {p0, v2}, Lmiui/os/IMiuiInit$Stub;->getMiuiPreinstallAppPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    goto/16 :goto_1c3

    .line 239
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 241
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {p0, v2, v3, v4}, Lmiui/os/IMiuiInit$Stub;->copyPreinstallPAITrackingFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    goto/16 :goto_1c3

    .line 230
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 231
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, v2}, Lmiui/os/IMiuiInit$Stub;->writePreinstallPAIPackage(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    goto/16 :goto_1c3

    .line 221
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 222
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, v2}, Lmiui/os/IMiuiInit$Stub;->removeFromPreinstallPAIList(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    goto/16 :goto_1c3

    .line 212
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 213
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, v2}, Lmiui/os/IMiuiInit$Stub;->removeFromPreinstallList(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    goto :goto_1c3

    .line 202
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_153
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 203
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v2}, Lmiui/os/IMiuiInit$Stub;->getMiuiChannelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    goto :goto_1c3

    .line 192
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_165
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 193
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v2}, Lmiui/os/IMiuiInit$Stub;->isPreinstalledPAIPackage(Ljava/lang/String;)Z

    move-result v3

    .line 195
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 197
    goto :goto_1c3

    .line 182
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_177
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 183
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, v2}, Lmiui/os/IMiuiInit$Stub;->isPreinstalledPackage(Ljava/lang/String;)Z

    move-result v3

    .line 185
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 187
    goto :goto_1c3

    .line 173
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_189
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 174
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, v2}, Lmiui/os/IMiuiInit$Stub;->doFactoryReset(Z)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    goto :goto_1c3

    .line 166
    .end local v2    # "_arg0":Z
    :pswitch_197
    invoke-virtual {p0}, Lmiui/os/IMiuiInit$Stub;->installPreinstallApp()V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    goto :goto_1c3

    .line 159
    :pswitch_19e
    invoke-virtual {p0}, Lmiui/os/IMiuiInit$Stub;->getCustVariants()[Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 162
    goto :goto_1c3

    .line 148
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_1a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmiui/os/IMiuiInitObserver$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/os/IMiuiInitObserver;

    move-result-object v3

    .line 151
    .local v3, "_arg1":Lmiui/os/IMiuiInitObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, v2, v3}, Lmiui/os/IMiuiInit$Stub;->initCustEnvironment(Ljava/lang/String;Lmiui/os/IMiuiInitObserver;)Z

    move-result v4

    .line 153
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 155
    nop

    .line 387
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lmiui/os/IMiuiInitObserver;
    .end local v4    # "_result":Z
    :goto_1c3
    return v1

    :pswitch_data_1c4
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_1ca
    .packed-switch 0x1
        :pswitch_1a9
        :pswitch_19e
        :pswitch_197
        :pswitch_189
        :pswitch_177
        :pswitch_165
        :pswitch_153
        :pswitch_145
        :pswitch_136
        :pswitch_127
        :pswitch_110
        :pswitch_fd
        :pswitch_ea
        :pswitch_d7
        :pswitch_c4
        :pswitch_b1
        :pswitch_9e
        :pswitch_8b
        :pswitch_78
        :pswitch_68
        :pswitch_55
        :pswitch_42
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
