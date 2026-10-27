.class public abstract Landroid/apex/IApexService$Stub;
.super Landroid/os/Binder;
.source "IApexService.java"

# interfaces
.implements Landroid/apex/IApexService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/apex/IApexService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/apex/IApexService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_abortStagedSession:I = 0x9

.field static final blacklist TRANSACTION_calculateSizeForCompressedApex:I = 0x15

.field static final blacklist TRANSACTION_destroyCeSnapshots:I = 0xe

.field static final blacklist TRANSACTION_destroyCeSnapshotsNotSpecified:I = 0xf

.field static final blacklist TRANSACTION_destroyDeSnapshots:I = 0xd

.field static final blacklist TRANSACTION_getActivePackages:I = 0x7

.field static final blacklist TRANSACTION_getAllPackages:I = 0x8

.field static final blacklist TRANSACTION_getSessions:I = 0x4

.field static final blacklist TRANSACTION_getStagedApexInfos:I = 0x6

.field static final blacklist TRANSACTION_getStagedSessionInfo:I = 0x5

.field static final blacklist TRANSACTION_installAndActivatePackage:I = 0x17

.field static final blacklist TRANSACTION_markBootCompleted:I = 0x14

.field static final blacklist TRANSACTION_markStagedSessionReady:I = 0x2

.field static final blacklist TRANSACTION_markStagedSessionSuccessful:I = 0x3

.field static final blacklist TRANSACTION_recollectPreinstalledData:I = 0x13

.field static final blacklist TRANSACTION_reserveSpaceForCompressedApex:I = 0x16

.field static final blacklist TRANSACTION_restoreCeData:I = 0xc

.field static final blacklist TRANSACTION_resumeRevertIfNeeded:I = 0x12

.field static final blacklist TRANSACTION_revertActiveSessions:I = 0xa

.field static final blacklist TRANSACTION_snapshotCeData:I = 0xb

.field static final blacklist TRANSACTION_stagePackages:I = 0x11

.field static final blacklist TRANSACTION_submitStagedSession:I = 0x1

.field static final blacklist TRANSACTION_unstagePackages:I = 0x10


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 140
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 141
    const-string v0, "android.apex.IApexService"

    invoke-virtual {p0, p0, v0}, Landroid/apex/IApexService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/apex/IApexService;
    .registers 3

    .line 149
    if-nez p0, :cond_4

    .line 150
    const/4 p0, 0x0

    return-object p0

    .line 152
    :cond_4
    const-string v0, "android.apex.IApexService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/apex/IApexService;

    if-eqz v1, :cond_13

    .line 154
    check-cast v0, Landroid/apex/IApexService;

    return-object v0

    .line 156
    :cond_13
    new-instance v0, Landroid/apex/IApexService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/apex/IApexService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 160
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    nop

    .line 165
    const-string v0, "android.apex.IApexService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 166
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 169
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    return v1

    .line 172
    :cond_17
    packed-switch p1, :pswitch_data_166

    .line 370
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 360
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 362
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2b

    move p2, v1

    goto :goto_2c

    :cond_2b
    const/4 p2, 0x0

    .line 363
    :goto_2c
    invoke-virtual {p0, p1, p2}, Landroid/apex/IApexService$Stub;->installAndActivatePackage(Ljava/lang/String;Z)Landroid/apex/ApexInfo;

    move-result-object p1

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 366
    goto/16 :goto_164

    .line 352
    :pswitch_38
    sget-object p1, Landroid/apex/CompressedApexInfoList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/apex/CompressedApexInfoList;

    .line 353
    invoke-virtual {p0, p1}, Landroid/apex/IApexService$Stub;->reserveSpaceForCompressedApex(Landroid/apex/CompressedApexInfoList;)V

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    goto/16 :goto_164

    .line 343
    :pswitch_48
    sget-object p1, Landroid/apex/CompressedApexInfoList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/apex/CompressedApexInfoList;

    .line 344
    invoke-virtual {p0, p1}, Landroid/apex/IApexService$Stub;->calculateSizeForCompressedApex(Landroid/apex/CompressedApexInfoList;)J

    move-result-wide p1

    .line 345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 347
    goto/16 :goto_164

    .line 336
    :pswitch_5c
    invoke-virtual {p0}, Landroid/apex/IApexService$Stub;->markBootCompleted()V

    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    goto/16 :goto_164

    .line 330
    :pswitch_64
    invoke-virtual {p0}, Landroid/apex/IApexService$Stub;->recollectPreinstalledData()V

    .line 331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    goto/16 :goto_164

    .line 324
    :pswitch_6c
    invoke-virtual {p0}, Landroid/apex/IApexService$Stub;->resumeRevertIfNeeded()V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    goto/16 :goto_164

    .line 317
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 318
    invoke-virtual {p0, p1}, Landroid/apex/IApexService$Stub;->stagePackages(Ljava/util/List;)V

    .line 319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    goto/16 :goto_164

    .line 309
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 310
    invoke-virtual {p0, p1}, Landroid/apex/IApexService$Stub;->unstagePackages(Ljava/util/List;)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    goto/16 :goto_164

    .line 299
    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p2

    .line 302
    invoke-virtual {p0, p1, p2}, Landroid/apex/IApexService$Stub;->destroyCeSnapshotsNotSpecified(I[I)V

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    goto/16 :goto_164

    .line 289
    :pswitch_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 292
    invoke-virtual {p0, p1, p2}, Landroid/apex/IApexService$Stub;->destroyCeSnapshots(II)V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    goto/16 :goto_164

    .line 281
    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 282
    invoke-virtual {p0, p1}, Landroid/apex/IApexService$Stub;->destroyDeSnapshots(I)V

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    goto/16 :goto_164

    .line 269
    :pswitch_b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 274
    invoke-virtual {p0, p1, p4, p2}, Landroid/apex/IApexService$Stub;->restoreCeData(IILjava/lang/String;)V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    goto/16 :goto_164

    .line 257
    :pswitch_cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 262
    invoke-virtual {p0, p1, p4, p2}, Landroid/apex/IApexService$Stub;->snapshotCeData(IILjava/lang/String;)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    goto/16 :goto_164

    .line 250
    :pswitch_e0
    invoke-virtual {p0}, Landroid/apex/IApexService$Stub;->revertActiveSessions()V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    goto/16 :goto_164

    .line 243
    :pswitch_e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 244
    invoke-virtual {p0, p1}, Landroid/apex/IApexService$Stub;->abortStagedSession(I)V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    goto/16 :goto_164

    .line 235
    :pswitch_f4
    invoke-virtual {p0}, Landroid/apex/IApexService$Stub;->getAllPackages()[Landroid/apex/ApexInfo;

    move-result-object p1

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 238
    goto :goto_164

    .line 228
    :pswitch_ff
    invoke-virtual {p0}, Landroid/apex/IApexService$Stub;->getActivePackages()[Landroid/apex/ApexInfo;

    move-result-object p1

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 231
    goto :goto_164

    .line 220
    :pswitch_10a
    sget-object p1, Landroid/apex/ApexSessionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/apex/ApexSessionParams;

    .line 221
    invoke-virtual {p0, p1}, Landroid/apex/IApexService$Stub;->getStagedApexInfos(Landroid/apex/ApexSessionParams;)[Landroid/apex/ApexInfo;

    move-result-object p1

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 224
    goto :goto_164

    .line 211
    :pswitch_11d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 212
    invoke-virtual {p0, p1}, Landroid/apex/IApexService$Stub;->getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;

    move-result-object p1

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 215
    goto :goto_164

    .line 203
    :pswitch_12c
    invoke-virtual {p0}, Landroid/apex/IApexService$Stub;->getSessions()[Landroid/apex/ApexSessionInfo;

    move-result-object p1

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 206
    goto :goto_164

    .line 196
    :pswitch_137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 197
    invoke-virtual {p0, p1}, Landroid/apex/IApexService$Stub;->markStagedSessionSuccessful(I)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    goto :goto_164

    .line 188
    :pswitch_142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 189
    invoke-virtual {p0, p1}, Landroid/apex/IApexService$Stub;->markStagedSessionReady(I)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    goto :goto_164

    .line 177
    :pswitch_14d
    sget-object p1, Landroid/apex/ApexSessionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/apex/ApexSessionParams;

    .line 179
    new-instance p2, Landroid/apex/ApexInfoList;

    invoke-direct {p2}, Landroid/apex/ApexInfoList;-><init>()V

    .line 180
    invoke-virtual {p0, p1, p2}, Landroid/apex/IApexService$Stub;->submitStagedSession(Landroid/apex/ApexSessionParams;Landroid/apex/ApexInfoList;)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 183
    nop

    .line 373
    :goto_164
    return v1

    nop

    :pswitch_data_166
    .packed-switch 0x1
        :pswitch_14d
        :pswitch_142
        :pswitch_137
        :pswitch_12c
        :pswitch_11d
        :pswitch_10a
        :pswitch_ff
        :pswitch_f4
        :pswitch_e8
        :pswitch_e0
        :pswitch_cc
        :pswitch_b8
        :pswitch_ac
        :pswitch_9c
        :pswitch_8c
        :pswitch_80
        :pswitch_74
        :pswitch_6c
        :pswitch_64
        :pswitch_5c
        :pswitch_48
        :pswitch_38
        :pswitch_1f
    .end packed-switch
.end method
