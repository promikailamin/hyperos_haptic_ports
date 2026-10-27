.class public final Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;
.super Ljava/lang/Object;
.source "IGnssNiCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnssNiCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssNiNotification"
.end annotation


# instance fields
.field public blacklist defaultResponse:B

.field public blacklist niType:B

.field public blacklist notificationId:I

.field public blacklist notificationIdEncoding:I

.field public blacklist notificationMessage:Ljava/lang/String;

.field public blacklist notifyFlags:I

.field public blacklist requestorId:Ljava/lang/String;

.field public blacklist requestorIdEncoding:I

.field public blacklist timeoutSec:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->notificationId:I

    .line 306
    iput-byte v0, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->niType:B

    .line 316
    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->timeoutSec:I

    .line 320
    iput-byte v0, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->defaultResponse:B

    .line 325
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->requestorId:Ljava/lang/String;

    .line 330
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->notificationMessage:Ljava/lang/String;

    .line 334
    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->requestorIdEncoding:I

    .line 338
    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->notificationIdEncoding:I

    return-void
.end method

.method public static final blacklist readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;",
            ">;"
        }
    .end annotation

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 429
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 432
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 433
    mul-int/lit8 v3, v2, 0x40

    int-to-long v5, v3

    .line 434
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 433
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 437
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 438
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 439
    new-instance v3, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;

    invoke-direct {v3}, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;-><init>()V

    .line 440
    mul-int/lit8 v5, v1, 0x40

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 441
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 445
    :cond_37
    return-object v0
.end method

.method public static final blacklist writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;",
            ">;)V"
        }
    .end annotation

    .line 481
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 483
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 484
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 485
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 486
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x40

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 487
    nop

    :goto_1e
    if-ge v4, v1, :cond_2f

    .line 488
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;

    mul-int/lit8 v5, v4, 0x40

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 487
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 490
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 493
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 494
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 342
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 343
    return v0

    .line 345
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 346
    return v1

    .line 348
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;

    if-eq v2, v3, :cond_11

    .line 349
    return v1

    .line 351
    :cond_11
    check-cast p1, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;

    .line 352
    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->notificationId:I

    iget v3, p1, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->notificationId:I

    if-eq v2, v3, :cond_1a

    .line 353
    return v1

    .line 355
    :cond_1a
    iget-byte v2, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->niType:B

    iget-byte v3, p1, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->niType:B

    if-eq v2, v3, :cond_21

    .line 356
    return v1

    .line 358
    :cond_21
    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->notifyFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->notifyFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 359
    return v1

    .line 361
    :cond_34
    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->timeoutSec:I

    iget v3, p1, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->timeoutSec:I

    if-eq v2, v3, :cond_3b

    .line 362
    return v1

    .line 364
    :cond_3b
    iget-byte v2, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->defaultResponse:B

    iget-byte v3, p1, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->defaultResponse:B

    if-eq v2, v3, :cond_42

    .line 365
    return v1

    .line 367
    :cond_42
    iget-object v2, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->requestorId:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->requestorId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 368
    return v1

    .line 370
    :cond_4d
    iget-object v2, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->notificationMessage:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->notificationMessage:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    .line 371
    return v1

    .line 373
    :cond_58
    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->requestorIdEncoding:I

    iget v3, p1, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->requestorIdEncoding:I

    if-eq v2, v3, :cond_5f

    .line 374
    return v1

    .line 376
    :cond_5f
    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->notificationIdEncoding:I

    iget p1, p1, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->notificationIdEncoding:I

    if-eq v2, p1, :cond_66

    .line 377
    return v1

    .line 379
    :cond_66
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 11

    .line 384
    iget v0, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->notificationId:I

    .line 385
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-byte v0, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->niType:B

    .line 386
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->notifyFlags:I

    .line 387
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->timeoutSec:I

    .line 388
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-byte v0, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->defaultResponse:B

    .line 389
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->requestorId:Ljava/lang/String;

    .line 390
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->notificationMessage:Ljava/lang/String;

    .line 391
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->requestorIdEncoding:I

    .line 392
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->notificationIdEncoding:I

    .line 393
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    .line 384
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 28

    .line 450
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->notificationId:I

    .line 451
    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->niType:B

    .line 452
    const-wide/16 v4, 0x8

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->notifyFlags:I

    .line 453
    const-wide/16 v4, 0xc

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->timeoutSec:I

    .line 454
    const-wide/16 v4, 0x10

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->defaultResponse:B

    .line 455
    const-wide/16 v4, 0x18

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->requestorId:Ljava/lang/String;

    .line 457
    iget-object v6, v0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->requestorId:Ljava/lang/String;

    .line 458
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 459
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 457
    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 462
    const-wide/16 v4, 0x28

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->notificationMessage:Ljava/lang/String;

    .line 464
    iget-object v6, v0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->notificationMessage:Ljava/lang/String;

    .line 465
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    .line 466
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v18

    add-long v20, v4, v2

    .line 464
    const/16 v22, 0x0

    move-object/from16 v15, p1

    move-wide/from16 v16, v6

    invoke-virtual/range {v15 .. v22}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 469
    const-wide/16 v2, 0x38

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->requestorIdEncoding:I

    .line 470
    const-wide/16 v2, 0x3c

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->notificationIdEncoding:I

    .line 471
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 423
    const-wide/16 v0, 0x40

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 424
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 425
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    const-string v1, ".notificationId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    iget v1, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->notificationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 402
    const-string v1, ", .niType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    iget-byte v1, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->niType:B

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiType;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    const-string v1, ", .notifyFlags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    iget v1, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->notifyFlags:I

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotifyFlags;->dumpBitfield(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const-string v1, ", .timeoutSec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    iget v1, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->timeoutSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 408
    const-string v1, ", .defaultResponse = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    iget-byte v1, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->defaultResponse:B

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssUserResponseType;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    const-string v1, ", .requestorId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    iget-object v1, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->requestorId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    const-string v1, ", .notificationMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    iget-object v1, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->notificationMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    const-string v1, ", .requestorIdEncoding = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    iget v1, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->requestorIdEncoding:I

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiEncodingType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const-string v1, ", .notificationIdEncoding = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    iget v1, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->notificationIdEncoding:I

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiEncodingType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    .line 498
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->notificationId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 499
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->niType:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 500
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->notifyFlags:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 501
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->timeoutSec:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 502
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->defaultResponse:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 503
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->requestorId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 504
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->notificationMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 505
    const-wide/16 v0, 0x38

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->requestorIdEncoding:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 506
    const-wide/16 v0, 0x3c

    add-long/2addr p2, v0

    iget v0, p0, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->notificationIdEncoding:I

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 507
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 474
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 475
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiNotification;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 476
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 477
    return-void
.end method
