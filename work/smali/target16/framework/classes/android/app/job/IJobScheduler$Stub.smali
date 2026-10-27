.class public abstract Landroid/app/job/IJobScheduler$Stub;
.super Landroid/os/Binder;
.source "IJobScheduler.java"

# interfaces
.implements Landroid/app/job/IJobScheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/IJobScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/IJobScheduler$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.job.IJobScheduler"

.field static final blacklist PERMISSIONS_notePendingUserRequestedAppStop:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_registerUserVisibleJobObserver:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_unregisterUserVisibleJobObserver:[Ljava/lang/String;

.field static final blacklist TRANSACTION_canRunUserInitiatedJobs:I = 0xd

.field static final greylist-max-o TRANSACTION_cancel:I = 0x4

.field static final greylist-max-o TRANSACTION_cancelAll:I = 0x5

.field static final blacklist TRANSACTION_cancelAllInNamespace:I = 0x6

.field static final greylist-max-o TRANSACTION_enqueue:I = 0x2

.field static final blacklist TRANSACTION_getAllJobSnapshots:I = 0x10

.field static final greylist-max-o TRANSACTION_getAllPendingJobs:I = 0x7

.field static final blacklist TRANSACTION_getAllPendingJobsInNamespace:I = 0x8

.field static final greylist-max-o TRANSACTION_getPendingJob:I = 0x9

.field static final blacklist TRANSACTION_getPendingJobReason:I = 0xa

.field static final blacklist TRANSACTION_getPendingJobReasons:I = 0xb

.field static final blacklist TRANSACTION_getPendingJobReasonsHistory:I = 0xc

.field static final blacklist TRANSACTION_getStartedJobs:I = 0xf

.field static final blacklist TRANSACTION_hasRunUserInitiatedJobsPermission:I = 0xe

.field static final blacklist TRANSACTION_notePendingUserRequestedAppStop:I = 0x13

.field static final blacklist TRANSACTION_registerUserVisibleJobObserver:I = 0x11

.field static final greylist-max-o TRANSACTION_schedule:I = 0x1

.field static final greylist-max-o TRANSACTION_scheduleAsPackage:I = 0x3

.field static final blacklist TRANSACTION_unregisterUserVisibleJobObserver:I = 0x12


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 834
    const-string v0, "android.permission.MANAGE_ACTIVITY_TASKS"

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/app/job/IJobScheduler$Stub;->PERMISSIONS_registerUserVisibleJobObserver:[Ljava/lang/String;

    .line 840
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/app/job/IJobScheduler$Stub;->PERMISSIONS_unregisterUserVisibleJobObserver:[Ljava/lang/String;

    .line 846
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/job/IJobScheduler$Stub;->PERMISSIONS_notePendingUserRequestedAppStop:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    nop

    .line 112
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 111
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/job/IJobScheduler$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 113
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 101
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 102
    const-string v0, "android.app.job.IJobScheduler"

    invoke-virtual {p0, p0, v0}, Landroid/app/job/IJobScheduler$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 103
    if-eqz p1, :cond_d

    .line 106
    iput-object p1, p0, Landroid/app/job/IJobScheduler$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 107
    return-void

    .line 104
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobScheduler;
    .registers 3

    .line 120
    if-nez p0, :cond_4

    .line 121
    const/4 p0, 0x0

    return-object p0

    .line 123
    :cond_4
    const-string v0, "android.app.job.IJobScheduler"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/job/IJobScheduler;

    if-eqz v1, :cond_13

    .line 125
    check-cast v0, Landroid/app/job/IJobScheduler;

    return-object v0

    .line 127
    :cond_13
    new-instance v0, Landroid/app/job/IJobScheduler$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/job/IJobScheduler$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 136
    packed-switch p0, :pswitch_data_44

    .line 216
    const/4 p0, 0x0

    return-object p0

    .line 212
    :pswitch_5
    const-string/jumbo p0, "notePendingUserRequestedAppStop"

    return-object p0

    .line 208
    :pswitch_9
    const-string/jumbo p0, "unregisterUserVisibleJobObserver"

    return-object p0

    .line 204
    :pswitch_d
    const-string/jumbo p0, "registerUserVisibleJobObserver"

    return-object p0

    .line 200
    :pswitch_11
    const-string p0, "getAllJobSnapshots"

    return-object p0

    .line 196
    :pswitch_14
    const-string p0, "getStartedJobs"

    return-object p0

    .line 192
    :pswitch_17
    const-string p0, "hasRunUserInitiatedJobsPermission"

    return-object p0

    .line 188
    :pswitch_1a
    const-string p0, "canRunUserInitiatedJobs"

    return-object p0

    .line 184
    :pswitch_1d
    const-string p0, "getPendingJobReasonsHistory"

    return-object p0

    .line 180
    :pswitch_20
    const-string p0, "getPendingJobReasons"

    return-object p0

    .line 176
    :pswitch_23
    const-string p0, "getPendingJobReason"

    return-object p0

    .line 172
    :pswitch_26
    const-string p0, "getPendingJob"

    return-object p0

    .line 168
    :pswitch_29
    const-string p0, "getAllPendingJobsInNamespace"

    return-object p0

    .line 164
    :pswitch_2c
    const-string p0, "getAllPendingJobs"

    return-object p0

    .line 160
    :pswitch_2f
    const-string p0, "cancelAllInNamespace"

    return-object p0

    .line 156
    :pswitch_32
    const-string p0, "cancelAll"

    return-object p0

    .line 152
    :pswitch_35
    const-string p0, "cancel"

    return-object p0

    .line 148
    :pswitch_38
    const-string/jumbo p0, "scheduleAsPackage"

    return-object p0

    .line 144
    :pswitch_3c
    const-string p0, "enqueue"

    return-object p0

    .line 140
    :pswitch_3f
    const-string/jumbo p0, "schedule"

    return-object p0

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_3c
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .registers 3

    .line 316
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 318
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 131
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 854
    const/16 v0, 0x12

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 223
    invoke-static {p1}, Landroid/app/job/IJobScheduler$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist notePendingUserRequestedAppStop_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 849
    iget-object v0, p0, Landroid/app/job/IJobScheduler$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/app/job/IJobScheduler$Stub;->PERMISSIONS_notePendingUserRequestedAppStop:[Ljava/lang/String;

    invoke-static {}, Landroid/app/job/IJobScheduler$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/app/job/IJobScheduler$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 850
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    nop

    .line 228
    const-string v0, "android.app.job.IJobScheduler"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 229
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 232
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    return v1

    .line 235
    :cond_17
    packed-switch p1, :pswitch_data_1be

    .line 449
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 437
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 439
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 443
    invoke-virtual {p0, p1, p4, v0}, Landroid/app/job/IJobScheduler$Stub;->notePendingUserRequestedAppStop(Ljava/lang/String;ILjava/lang/String;)V

    .line 444
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    goto/16 :goto_1bd

    .line 428
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/job/IUserVisibleJobObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IUserVisibleJobObserver;

    move-result-object p1

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 430
    invoke-virtual {p0, p1}, Landroid/app/job/IJobScheduler$Stub;->unregisterUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V

    .line 431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    goto/16 :goto_1bd

    .line 419
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/job/IUserVisibleJobObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IUserVisibleJobObserver;

    move-result-object p1

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 421
    invoke-virtual {p0, p1}, Landroid/app/job/IJobScheduler$Stub;->registerUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    goto/16 :goto_1bd

    .line 411
    :pswitch_5d
    invoke-virtual {p0}, Landroid/app/job/IJobScheduler$Stub;->getAllJobSnapshots()Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 414
    goto/16 :goto_1bd

    .line 404
    :pswitch_69
    invoke-virtual {p0}, Landroid/app/job/IJobScheduler$Stub;->getStartedJobs()Ljava/util/List;

    move-result-object p1

    .line 405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 407
    goto/16 :goto_1bd

    .line 393
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, p1, p4}, Landroid/app/job/IJobScheduler$Stub;->hasRunUserInitiatedJobsPermission(Ljava/lang/String;I)Z

    move-result p1

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 400
    goto/16 :goto_1bd

    .line 383
    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 385
    invoke-virtual {p0, p1}, Landroid/app/job/IJobScheduler$Stub;->canRunUserInitiatedJobs(Ljava/lang/String;)Z

    move-result p1

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 388
    goto/16 :goto_1bd

    .line 371
    :pswitch_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 375
    invoke-virtual {p0, p1, p4}, Landroid/app/job/IJobScheduler$Stub;->getPendingJobReasonsHistory(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 378
    goto/16 :goto_1bd

    .line 359
    :pswitch_b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 362
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {p0, p1, p4}, Landroid/app/job/IJobScheduler$Stub;->getPendingJobReasons(Ljava/lang/String;I)[I

    move-result-object p1

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 366
    goto/16 :goto_1bd

    .line 347
    :pswitch_cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    invoke-virtual {p0, p1, p4}, Landroid/app/job/IJobScheduler$Stub;->getPendingJobReason(Ljava/lang/String;I)I

    move-result p1

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    goto/16 :goto_1bd

    .line 335
    :pswitch_e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {p0, p1, p4}, Landroid/app/job/IJobScheduler$Stub;->getPendingJob(Ljava/lang/String;I)Landroid/app/job/JobInfo;

    move-result-object p1

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 342
    goto/16 :goto_1bd

    .line 325
    :pswitch_fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 327
    invoke-virtual {p0, p1}, Landroid/app/job/IJobScheduler$Stub;->getAllPendingJobsInNamespace(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 330
    goto/16 :goto_1bd

    .line 309
    :pswitch_10e
    invoke-virtual {p0}, Landroid/app/job/IJobScheduler$Stub;->getAllPendingJobs()Ljava/util/Map;

    move-result-object p1

    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    if-nez p1, :cond_11d

    .line 312
    const/4 p1, -0x1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1bd

    .line 314
    :cond_11d
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    new-instance p2, Landroid/app/job/IJobScheduler$Stub$$ExternalSyntheticLambda0;

    invoke-direct {p2, p3}, Landroid/app/job/IJobScheduler$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {p1, p2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 320
    goto/16 :goto_1bd

    .line 301
    :pswitch_12e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {p0, p1}, Landroid/app/job/IJobScheduler$Stub;->cancelAllInNamespace(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    goto/16 :goto_1bd

    .line 294
    :pswitch_13d
    invoke-virtual {p0}, Landroid/app/job/IJobScheduler$Stub;->cancelAll()V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    goto/16 :goto_1bd

    .line 284
    :pswitch_145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {p0, p1, p4}, Landroid/app/job/IJobScheduler$Stub;->cancel(Ljava/lang/String;I)V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    goto :goto_1bd

    .line 266
    :pswitch_157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 268
    sget-object p1, Landroid/app/job/JobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/app/job/JobInfo;

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/app/job/IJobScheduler$Stub;->scheduleAsPackage(Ljava/lang/String;Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    goto :goto_1bd

    .line 252
    :pswitch_17f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 254
    sget-object p4, Landroid/app/job/JobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/job/JobInfo;

    .line 256
    sget-object v0, Landroid/app/job/JobWorkItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobWorkItem;

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, p1, p4, v0}, Landroid/app/job/IJobScheduler$Stub;->enqueue(Ljava/lang/String;Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I

    move-result p1

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    goto :goto_1bd

    .line 240
    :pswitch_1a2
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 242
    sget-object p4, Landroid/app/job/JobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/job/JobInfo;

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {p0, p1, p4}, Landroid/app/job/IJobScheduler$Stub;->schedule(Ljava/lang/String;Landroid/app/job/JobInfo;)I

    move-result p1

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    nop

    .line 452
    :goto_1bd
    return v1

    :pswitch_data_1be
    .packed-switch 0x1
        :pswitch_1a2
        :pswitch_17f
        :pswitch_157
        :pswitch_145
        :pswitch_13d
        :pswitch_12e
        :pswitch_10e
        :pswitch_fb
        :pswitch_e4
        :pswitch_cd
        :pswitch_b6
        :pswitch_9f
        :pswitch_8c
        :pswitch_75
        :pswitch_69
        :pswitch_5d
        :pswitch_4a
        :pswitch_37
        :pswitch_20
    .end packed-switch
.end method

.method protected blacklist registerUserVisibleJobObserver_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 837
    iget-object v0, p0, Landroid/app/job/IJobScheduler$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/app/job/IJobScheduler$Stub;->PERMISSIONS_registerUserVisibleJobObserver:[Ljava/lang/String;

    invoke-static {}, Landroid/app/job/IJobScheduler$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/app/job/IJobScheduler$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 838
    return-void
.end method

.method protected blacklist unregisterUserVisibleJobObserver_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 843
    iget-object v0, p0, Landroid/app/job/IJobScheduler$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/app/job/IJobScheduler$Stub;->PERMISSIONS_unregisterUserVisibleJobObserver:[Ljava/lang/String;

    invoke-static {}, Landroid/app/job/IJobScheduler$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/app/job/IJobScheduler$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 844
    return-void
.end method
