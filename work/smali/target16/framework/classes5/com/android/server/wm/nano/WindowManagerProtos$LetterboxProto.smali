.class public final Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WindowManagerProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/nano/WindowManagerProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LetterboxProto"
.end annotation


# static fields
.field public static final blacklist LETTERBOX_HORIZONTAL_REACHABILITY_POSITION_CENTER:I = 0x1

.field public static final blacklist LETTERBOX_HORIZONTAL_REACHABILITY_POSITION_LEFT:I = 0x0

.field public static final blacklist LETTERBOX_HORIZONTAL_REACHABILITY_POSITION_RIGHT:I = 0x2

.field public static final blacklist LETTERBOX_VERTICAL_REACHABILITY_POSITION_BOTTOM:I = 0x2

.field public static final blacklist LETTERBOX_VERTICAL_REACHABILITY_POSITION_CENTER:I = 0x1

.field public static final blacklist LETTERBOX_VERTICAL_REACHABILITY_POSITION_TOP:I

.field private static volatile blacklist _emptyArray:[Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;


# instance fields
.field public blacklist letterboxPositionForBookModeReachability:I

.field public blacklist letterboxPositionForHorizontalReachability:I

.field public blacklist letterboxPositionForTabletopModeReachability:I

.field public blacklist letterboxPositionForVerticalReachability:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 448
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 449
    invoke-virtual {p0}, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->clear()Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;

    .line 450
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;
    .registers 2

    .line 425
    sget-object v0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->_emptyArray:[Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;

    if-nez v0, :cond_15

    .line 426
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 428
    :try_start_7
    sget-object v1, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->_emptyArray:[Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;

    if-nez v1, :cond_10

    .line 429
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;

    sput-object v1, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->_emptyArray:[Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;

    .line 431
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 433
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->_emptyArray:[Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 572
    new-instance v0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;

    invoke-direct {v0}, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 566
    new-instance v0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;

    invoke-direct {v0}, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;
    .registers 2

    .line 453
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForHorizontalReachability:I

    .line 454
    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForVerticalReachability:I

    .line 455
    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForBookModeReachability:I

    .line 456
    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForTabletopModeReachability:I

    .line 457
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->cachedSize:I

    .line 458
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 481
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 482
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForHorizontalReachability:I

    if-eqz v1, :cond_10

    .line 483
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForHorizontalReachability:I

    .line 484
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 486
    :cond_10
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForVerticalReachability:I

    if-eqz v1, :cond_1c

    .line 487
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForVerticalReachability:I

    .line 488
    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 490
    :cond_1c
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForBookModeReachability:I

    if-eqz v1, :cond_28

    .line 491
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForBookModeReachability:I

    .line 492
    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 494
    :cond_28
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForTabletopModeReachability:I

    if-eqz v1, :cond_34

    .line 495
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForTabletopModeReachability:I

    .line 496
    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 498
    :cond_34
    return v0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
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

    .line 409
    invoke-virtual {p0, p1}, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 506
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 507
    sparse-switch v0, :sswitch_data_3e

    .line 511
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 512
    return-object p0

    .line 550
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 551
    packed-switch v0, :pswitch_data_54

    goto :goto_19

    .line 555
    :pswitch_17
    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForTabletopModeReachability:I

    .line 558
    :goto_19
    goto :goto_3c

    .line 539
    :sswitch_1a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 540
    packed-switch v0, :pswitch_data_5e

    goto :goto_24

    .line 544
    :pswitch_22
    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForBookModeReachability:I

    .line 547
    :goto_24
    goto :goto_3c

    .line 528
    :sswitch_25
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 529
    packed-switch v0, :pswitch_data_68

    goto :goto_2f

    .line 533
    :pswitch_2d
    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForVerticalReachability:I

    .line 536
    :goto_2f
    goto :goto_3c

    .line 517
    :sswitch_30
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 518
    packed-switch v0, :pswitch_data_72

    goto :goto_3a

    .line 522
    :pswitch_38
    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForHorizontalReachability:I

    .line 525
    :goto_3a
    goto :goto_3c

    .line 509
    :sswitch_3b
    return-object p0

    .line 561
    :cond_3c
    :goto_3c
    goto :goto_1

    nop

    :sswitch_data_3e
    .sparse-switch
        0x0 -> :sswitch_3b
        0x8 -> :sswitch_30
        0x10 -> :sswitch_25
        0x18 -> :sswitch_1a
        0x20 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_22
        :pswitch_22
        :pswitch_22
    .end packed-switch

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
    .end packed-switch

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_38
        :pswitch_38
        :pswitch_38
    .end packed-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    iget v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForHorizontalReachability:I

    if-eqz v0, :cond_a

    .line 465
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForHorizontalReachability:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 467
    :cond_a
    iget v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForVerticalReachability:I

    if-eqz v0, :cond_14

    .line 468
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForVerticalReachability:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 470
    :cond_14
    iget v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForBookModeReachability:I

    if-eqz v0, :cond_1e

    .line 471
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForBookModeReachability:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 473
    :cond_1e
    iget v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForTabletopModeReachability:I

    if-eqz v0, :cond_28

    .line 474
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForTabletopModeReachability:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 476
    :cond_28
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 477
    return-void
.end method
