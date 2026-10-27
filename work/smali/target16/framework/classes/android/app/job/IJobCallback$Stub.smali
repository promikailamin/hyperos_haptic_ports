.class public abstract Landroid/app/job/IJobCallback$Stub;
.super Landroid/os/Binder;
.source "IJobCallback.java"

# interfaces
.implements Landroid/app/job/IJobCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/IJobCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/IJobCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.job.IJobCallback"

.field static final blacklist TRANSACTION_acknowledgeGetTransferredDownloadBytesMessage:I = 0x1

.field static final blacklist TRANSACTION_acknowledgeGetTransferredUploadBytesMessage:I = 0x2

.field static final greylist-max-o TRANSACTION_acknowledgeStartMessage:I = 0x3

.field static final greylist-max-o TRANSACTION_acknowledgeStopMessage:I = 0x4

.field static final greylist-max-o TRANSACTION_completeWork:I = 0x6

.field static final greylist-max-o TRANSACTION_dequeueWork:I = 0x5

.field static final blacklist TRANSACTION_handleAbandonedJob:I = 0x8

.field static final greylist-max-o TRANSACTION_jobFinished:I = 0x7

.field static final blacklist TRANSACTION_setNotification:I = 0xb

.field static final blacklist TRANSACTION_updateEstimatedNetworkBytes:I = 0x9

.field static final blacklist TRANSACTION_updateTransferredNetworkBytes:I = 0xa


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 142
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 143
    const-string v0, "android.app.job.IJobCallback"

    invoke-virtual {p0, p0, v0}, Landroid/app/job/IJobCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobCallback;
    .registers 3

    .line 151
    if-nez p0, :cond_4

    .line 152
    const/4 p0, 0x0

    return-object p0

    .line 154
    :cond_4
    const-string v0, "android.app.job.IJobCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/job/IJobCallback;

    if-eqz v1, :cond_13

    .line 156
    check-cast v0, Landroid/app/job/IJobCallback;

    return-object v0

    .line 158
    :cond_13
    new-instance v0, Landroid/app/job/IJobCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/job/IJobCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 167
    packed-switch p0, :pswitch_data_2a

    .line 215
    const/4 p0, 0x0

    return-object p0

    .line 211
    :pswitch_5
    const-string/jumbo p0, "setNotification"

    return-object p0

    .line 207
    :pswitch_9
    const-string/jumbo p0, "updateTransferredNetworkBytes"

    return-object p0

    .line 203
    :pswitch_d
    const-string/jumbo p0, "updateEstimatedNetworkBytes"

    return-object p0

    .line 199
    :pswitch_11
    const-string p0, "handleAbandonedJob"

    return-object p0

    .line 195
    :pswitch_14
    const-string/jumbo p0, "jobFinished"

    return-object p0

    .line 191
    :pswitch_18
    const-string p0, "completeWork"

    return-object p0

    .line 187
    :pswitch_1b
    const-string p0, "dequeueWork"

    return-object p0

    .line 183
    :pswitch_1e
    const-string p0, "acknowledgeStopMessage"

    return-object p0

    .line 179
    :pswitch_21
    const-string p0, "acknowledgeStartMessage"

    return-object p0

    .line 175
    :pswitch_24
    const-string p0, "acknowledgeGetTransferredUploadBytesMessage"

    return-object p0

    .line 171
    :pswitch_27
    const-string p0, "acknowledgeGetTransferredDownloadBytesMessage"

    return-object p0

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 162
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 669
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 222
    invoke-static {p1}, Landroid/app/job/IJobCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    nop

    .line 227
    const-string v3, "android.app.job.IJobCallback"

    const/4 v7, 0x1

    if-lt p1, v7, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 228
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 231
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    return v7

    .line 234
    :cond_17
    packed-switch p1, :pswitch_data_11c

    .line 373
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 359
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 363
    sget-object v4, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Notification;

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/app/job/IJobCallback$Stub;->setNotification(IILandroid/app/Notification;I)V

    .line 368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    goto/16 :goto_11a

    .line 344
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 346
    sget-object v3, Landroid/app/job/JobWorkItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobWorkItem;

    .line 348
    move-object v2, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/job/IJobCallback$Stub;->updateTransferredNetworkBytes(ILandroid/app/job/JobWorkItem;JJ)V

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    goto/16 :goto_11a

    .line 329
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 331
    sget-object v0, Landroid/app/job/JobWorkItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/job/JobWorkItem;

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/job/IJobCallback$Stub;->updateEstimatedNetworkBytes(ILandroid/app/job/JobWorkItem;JJ)V

    .line 338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    goto/16 :goto_11a

    .line 320
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {p0, v1}, Landroid/app/job/IJobCallback$Stub;->handleAbandonedJob(I)V

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    goto/16 :goto_11a

    .line 309
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {p0, v1, v2}, Landroid/app/job/IJobCallback$Stub;->jobFinished(IZ)V

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    goto/16 :goto_11a

    .line 297
    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {p0, v1, v2}, Landroid/app/job/IJobCallback$Stub;->completeWork(II)Z

    move-result v0

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 304
    goto :goto_11a

    .line 287
    :pswitch_b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 289
    invoke-virtual {p0, v1}, Landroid/app/job/IJobCallback$Stub;->dequeueWork(I)Landroid/app/job/JobWorkItem;

    move-result-object v0

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 292
    goto :goto_11a

    .line 276
    :pswitch_ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {p0, v1, v2}, Landroid/app/job/IJobCallback$Stub;->acknowledgeStopMessage(IZ)V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    goto :goto_11a

    .line 265
    :pswitch_dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, v1, v2}, Landroid/app/job/IJobCallback$Stub;->acknowledgeStartMessage(IZ)V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    goto :goto_11a

    .line 252
    :pswitch_ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/job/IJobCallback$Stub;->acknowledgeGetTransferredUploadBytesMessage(IIJ)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    goto :goto_11a

    .line 239
    :pswitch_104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/job/IJobCallback$Stub;->acknowledgeGetTransferredDownloadBytesMessage(IIJ)V

    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    nop

    .line 376
    :goto_11a
    return v7

    nop

    :pswitch_data_11c
    .packed-switch 0x1
        :pswitch_104
        :pswitch_ee
        :pswitch_dc
        :pswitch_ca
        :pswitch_b8
        :pswitch_a2
        :pswitch_8f
        :pswitch_80
        :pswitch_5f
        :pswitch_3e
        :pswitch_1f
    .end packed-switch
.end method
