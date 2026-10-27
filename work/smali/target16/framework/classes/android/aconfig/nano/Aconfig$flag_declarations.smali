.class public final Landroid/aconfig/nano/Aconfig$flag_declarations;
.super Landroid/internal/framework/protobuf/nano/MessageNano;
.source "Aconfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/aconfig/nano/Aconfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "flag_declarations"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Landroid/aconfig/nano/Aconfig$flag_declarations;


# instance fields
.field public blacklist container:Ljava/lang/String;

.field public blacklist flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

.field public blacklist package_:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 372
    invoke-direct {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;-><init>()V

    .line 373
    invoke-virtual {p0}, Landroid/aconfig/nano/Aconfig$flag_declarations;->clear()Landroid/aconfig/nano/Aconfig$flag_declarations;

    .line 374
    return-void
.end method

.method public static blacklist emptyArray()[Landroid/aconfig/nano/Aconfig$flag_declarations;
    .registers 2

    .line 352
    sget-object v0, Landroid/aconfig/nano/Aconfig$flag_declarations;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_declarations;

    if-nez v0, :cond_15

    .line 353
    sget-object v0, Landroid/internal/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_7
    sget-object v1, Landroid/aconfig/nano/Aconfig$flag_declarations;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_declarations;

    if-nez v1, :cond_10

    .line 356
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/aconfig/nano/Aconfig$flag_declarations;

    sput-object v1, Landroid/aconfig/nano/Aconfig$flag_declarations;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_declarations;

    .line 358
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 360
    :cond_15
    :goto_15
    sget-object v0, Landroid/aconfig/nano/Aconfig$flag_declarations;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_declarations;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_declarations;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    new-instance v0, Landroid/aconfig/nano/Aconfig$flag_declarations;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$flag_declarations;-><init>()V

    invoke-virtual {v0, p0}, Landroid/aconfig/nano/Aconfig$flag_declarations;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_declarations;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Landroid/aconfig/nano/Aconfig$flag_declarations;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 476
    new-instance v0, Landroid/aconfig/nano/Aconfig$flag_declarations;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$flag_declarations;-><init>()V

    invoke-static {v0, p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->mergeFrom(Landroid/internal/framework/protobuf/nano/MessageNano;[B)Landroid/internal/framework/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Landroid/aconfig/nano/Aconfig$flag_declarations;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Landroid/aconfig/nano/Aconfig$flag_declarations;
    .registers 3

    .line 377
    const-string v0, ""

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->package_:Ljava/lang/String;

    .line 378
    invoke-static {}, Landroid/aconfig/nano/Aconfig$flag_declaration;->emptyArray()[Landroid/aconfig/nano/Aconfig$flag_declaration;

    move-result-object v1

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    .line 379
    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->container:Ljava/lang/String;

    .line 380
    const/4 v0, -0x1

    iput v0, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->cachedSize:I

    .line 381
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 6

    .line 406
    invoke-super {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 407
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->package_:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 408
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->package_:Ljava/lang/String;

    .line 409
    const/4 v3, 0x1

    invoke-static {v3, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 411
    :cond_16
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    if-eqz v1, :cond_35

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    array-length v1, v1

    if-lez v1, :cond_35

    .line 412
    const/4 v1, 0x0

    :goto_20
    iget-object v3, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    array-length v3, v3

    if-ge v1, v3, :cond_35

    .line 413
    iget-object v3, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    aget-object v3, v3, v1

    .line 414
    if-eqz v3, :cond_32

    .line 415
    nop

    .line 416
    const/4 v4, 0x2

    invoke-static {v4, v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILandroid/internal/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 412
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 420
    :cond_35
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->container:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 421
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->container:Ljava/lang/String;

    .line 422
    const/4 v2, 0x3

    invoke-static {v2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 424
    :cond_45
    return v0
.end method

.method public blacklist mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_declarations;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 432
    nop

    :goto_1
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 433
    sparse-switch v0, :sswitch_data_60

    .line 437
    invoke-static {p1, v0}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 438
    return-object p0

    .line 467
    :sswitch_f
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->container:Ljava/lang/String;

    goto :goto_5e

    .line 447
    :sswitch_16
    nop

    .line 448
    const/16 v0, 0x12

    invoke-static {p1, v0}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 449
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    const/4 v2, 0x0

    if-nez v1, :cond_24

    move v1, v2

    goto :goto_27

    :cond_24
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    array-length v1, v1

    .line 450
    :goto_27
    add-int/2addr v0, v1

    new-array v3, v0, [Landroid/aconfig/nano/Aconfig$flag_declaration;

    .line 452
    if-eqz v1, :cond_31

    .line 453
    iget-object v4, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 455
    :cond_31
    :goto_31
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_47

    .line 456
    new-instance v2, Landroid/aconfig/nano/Aconfig$flag_declaration;

    invoke-direct {v2}, Landroid/aconfig/nano/Aconfig$flag_declaration;-><init>()V

    aput-object v2, v3, v1

    .line 457
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Landroid/internal/framework/protobuf/nano/MessageNano;)V

    .line 458
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 461
    :cond_47
    new-instance v0, Landroid/aconfig/nano/Aconfig$flag_declaration;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$flag_declaration;-><init>()V

    aput-object v0, v3, v1

    .line 462
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Landroid/internal/framework/protobuf/nano/MessageNano;)V

    .line 463
    iput-object v3, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    .line 464
    goto :goto_5e

    .line 443
    :sswitch_56
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->package_:Ljava/lang/String;

    .line 444
    goto :goto_5e

    .line 435
    :sswitch_5d
    return-object p0

    .line 471
    :cond_5e
    :goto_5e
    goto :goto_1

    nop

    :sswitch_data_60
    .sparse-switch
        0x0 -> :sswitch_5d
        0xa -> :sswitch_56
        0x12 -> :sswitch_16
        0x1a -> :sswitch_f
    .end sparse-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/internal/framework/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    invoke-virtual {p0, p1}, Landroid/aconfig/nano/Aconfig$flag_declarations;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_declarations;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->package_:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 388
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->package_:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 390
    :cond_10
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    array-length v0, v0

    if-lez v0, :cond_2c

    .line 391
    const/4 v0, 0x0

    :goto_1a
    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    array-length v2, v2

    if-ge v0, v2, :cond_2c

    .line 392
    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    aget-object v2, v2, v0

    .line 393
    if-eqz v2, :cond_29

    .line 394
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILandroid/internal/framework/protobuf/nano/MessageNano;)V

    .line 391
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 398
    :cond_2c
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->container:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 399
    const/4 v0, 0x3

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->container:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 401
    :cond_3a
    invoke-super {p0, p1}, Landroid/internal/framework/protobuf/nano/MessageNano;->writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 402
    return-void
.end method
