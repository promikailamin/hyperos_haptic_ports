.class public abstract Landroid/app/usage/IStorageStatsManager$Stub;
.super Landroid/os/Binder;
.source "IStorageStatsManager.java"

# interfaces
.implements Landroid/app/usage/IStorageStatsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/IStorageStatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/IStorageStatsManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.usage.IStorageStatsManager"

.field static final greylist-max-o TRANSACTION_getCacheBytes:I = 0x5

.field static final greylist-max-o TRANSACTION_getCacheQuotaBytes:I = 0x6

.field static final greylist-max-o TRANSACTION_getFreeBytes:I = 0x4

.field static final greylist-max-o TRANSACTION_getTotalBytes:I = 0x3

.field static final greylist-max-o TRANSACTION_isQuotaSupported:I = 0x1

.field static final greylist-max-o TRANSACTION_isReservedSupported:I = 0x2

.field static final blacklist TRANSACTION_queryArtManagedStats:I = 0x8

.field static final blacklist TRANSACTION_queryCratesForPackage:I = 0xc

.field static final blacklist TRANSACTION_queryCratesForUid:I = 0xd

.field static final blacklist TRANSACTION_queryCratesForUser:I = 0xe

.field static final greylist-max-o TRANSACTION_queryExternalStatsForUser:I = 0xb

.field static final greylist-max-o TRANSACTION_queryStatsForPackage:I = 0x7

.field static final greylist-max-o TRANSACTION_queryStatsForUid:I = 0x9

.field static final greylist-max-o TRANSACTION_queryStatsForUser:I = 0xa


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 86
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 87
    const-string v0, "android.app.usage.IStorageStatsManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/usage/IStorageStatsManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/app/usage/IStorageStatsManager;
    .registers 3

    .line 95
    if-nez p0, :cond_4

    .line 96
    const/4 p0, 0x0

    return-object p0

    .line 98
    :cond_4
    const-string v0, "android.app.usage.IStorageStatsManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/usage/IStorageStatsManager;

    if-eqz v1, :cond_13

    .line 100
    check-cast v0, Landroid/app/usage/IStorageStatsManager;

    return-object v0

    .line 102
    :cond_13
    new-instance v0, Landroid/app/usage/IStorageStatsManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/usage/IStorageStatsManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 111
    packed-switch p0, :pswitch_data_38

    .line 171
    const/4 p0, 0x0

    return-object p0

    .line 167
    :pswitch_5
    const-string/jumbo p0, "queryCratesForUser"

    return-object p0

    .line 163
    :pswitch_9
    const-string/jumbo p0, "queryCratesForUid"

    return-object p0

    .line 159
    :pswitch_d
    const-string/jumbo p0, "queryCratesForPackage"

    return-object p0

    .line 155
    :pswitch_11
    const-string/jumbo p0, "queryExternalStatsForUser"

    return-object p0

    .line 151
    :pswitch_15
    const-string/jumbo p0, "queryStatsForUser"

    return-object p0

    .line 147
    :pswitch_19
    const-string/jumbo p0, "queryStatsForUid"

    return-object p0

    .line 143
    :pswitch_1d
    const-string/jumbo p0, "queryArtManagedStats"

    return-object p0

    .line 139
    :pswitch_21
    const-string/jumbo p0, "queryStatsForPackage"

    return-object p0

    .line 135
    :pswitch_25
    const-string p0, "getCacheQuotaBytes"

    return-object p0

    .line 131
    :pswitch_28
    const-string p0, "getCacheBytes"

    return-object p0

    .line 127
    :pswitch_2b
    const-string p0, "getFreeBytes"

    return-object p0

    .line 123
    :pswitch_2e
    const-string p0, "getTotalBytes"

    return-object p0

    .line 119
    :pswitch_31
    const-string/jumbo p0, "isReservedSupported"

    return-object p0

    .line 115
    :pswitch_35
    const-string p0, "isQuotaSupported"

    return-object p0

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_35
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 106
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 704
    const/16 v0, 0xd

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 178
    invoke-static {p1}, Landroid/app/usage/IStorageStatsManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 182
    nop

    .line 183
    const-string v0, "android.app.usage.IStorageStatsManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 184
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 187
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    return v1

    .line 190
    :cond_17
    packed-switch p1, :pswitch_data_188

    .line 384
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 371
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    invoke-virtual {p0, p1, p4, v0}, Landroid/app/usage/IStorageStatsManager$Stub;->queryCratesForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 380
    goto/16 :goto_187

    .line 357
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {p0, p1, p4, v0}, Landroid/app/usage/IStorageStatsManager$Stub;->queryCratesForUid(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 366
    goto/16 :goto_187

    .line 341
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/app/usage/IStorageStatsManager$Stub;->queryCratesForPackage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 352
    goto/16 :goto_187

    .line 327
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 333
    invoke-virtual {p0, p1, p4, v0}, Landroid/app/usage/IStorageStatsManager$Stub;->queryExternalStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/ExternalStorageStats;

    move-result-object p1

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 336
    goto/16 :goto_187

    .line 313
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 319
    invoke-virtual {p0, p1, p4, v0}, Landroid/app/usage/IStorageStatsManager$Stub;->queryStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;

    move-result-object p1

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 322
    goto/16 :goto_187

    .line 299
    :pswitch_aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, p1, p4, v0}, Landroid/app/usage/IStorageStatsManager$Stub;->queryStatsForUid(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;

    move-result-object p1

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 308
    goto/16 :goto_187

    .line 285
    :pswitch_c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, p1, p4, v0}, Landroid/app/usage/IStorageStatsManager$Stub;->queryArtManagedStats(Ljava/lang/String;II)Landroid/app/usage/StorageStats;

    move-result-object p1

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 294
    goto/16 :goto_187

    .line 269
    :pswitch_e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/app/usage/IStorageStatsManager$Stub;->queryStatsForPackage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;

    move-result-object p1

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 280
    goto/16 :goto_187

    .line 255
    :pswitch_ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {p0, p1, p4, v0}, Landroid/app/usage/IStorageStatsManager$Stub;->getCacheQuotaBytes(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide p1

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 264
    goto :goto_187

    .line 243
    :pswitch_119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, p1, p4}, Landroid/app/usage/IStorageStatsManager$Stub;->getCacheBytes(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 250
    goto :goto_187

    .line 231
    :pswitch_12f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, p1, p4}, Landroid/app/usage/IStorageStatsManager$Stub;->getFreeBytes(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 238
    goto :goto_187

    .line 219
    :pswitch_145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, p1, p4}, Landroid/app/usage/IStorageStatsManager$Stub;->getTotalBytes(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 226
    goto :goto_187

    .line 207
    :pswitch_15b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, p1, p4}, Landroid/app/usage/IStorageStatsManager$Stub;->isReservedSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 214
    goto :goto_187

    .line 195
    :pswitch_171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, p1, p4}, Landroid/app/usage/IStorageStatsManager$Stub;->isQuotaSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 202
    nop

    .line 387
    :goto_187
    return v1

    :pswitch_data_188
    .packed-switch 0x1
        :pswitch_171
        :pswitch_15b
        :pswitch_145
        :pswitch_12f
        :pswitch_119
        :pswitch_ff
        :pswitch_e0
        :pswitch_c5
        :pswitch_aa
        :pswitch_8f
        :pswitch_74
        :pswitch_55
        :pswitch_3a
        :pswitch_1f
    .end packed-switch
.end method
