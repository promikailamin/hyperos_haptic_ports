.class public final Landroid/aconfig/nano/Aconfig$flag_values;
.super Landroid/internal/framework/protobuf/nano/MessageNano;
.source "Aconfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/aconfig/nano/Aconfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "flag_values"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Landroid/aconfig/nano/Aconfig$flag_values;


# instance fields
.field public blacklist flagValue:[Landroid/aconfig/nano/Aconfig$flag_value;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 647
    invoke-direct {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;-><init>()V

    .line 648
    invoke-virtual {p0}, Landroid/aconfig/nano/Aconfig$flag_values;->clear()Landroid/aconfig/nano/Aconfig$flag_values;

    .line 649
    return-void
.end method

.method public static blacklist emptyArray()[Landroid/aconfig/nano/Aconfig$flag_values;
    .registers 2

    .line 633
    sget-object v0, Landroid/aconfig/nano/Aconfig$flag_values;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_values;

    if-nez v0, :cond_15

    .line 634
    sget-object v0, Landroid/internal/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 636
    :try_start_7
    sget-object v1, Landroid/aconfig/nano/Aconfig$flag_values;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_values;

    if-nez v1, :cond_10

    .line 637
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/aconfig/nano/Aconfig$flag_values;

    sput-object v1, Landroid/aconfig/nano/Aconfig$flag_values;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_values;

    .line 639
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 641
    :cond_15
    :goto_15
    sget-object v0, Landroid/aconfig/nano/Aconfig$flag_values;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_values;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_values;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 733
    new-instance v0, Landroid/aconfig/nano/Aconfig$flag_values;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$flag_values;-><init>()V

    invoke-virtual {v0, p0}, Landroid/aconfig/nano/Aconfig$flag_values;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_values;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Landroid/aconfig/nano/Aconfig$flag_values;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 727
    new-instance v0, Landroid/aconfig/nano/Aconfig$flag_values;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$flag_values;-><init>()V

    invoke-static {v0, p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->mergeFrom(Landroid/internal/framework/protobuf/nano/MessageNano;[B)Landroid/internal/framework/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Landroid/aconfig/nano/Aconfig$flag_values;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Landroid/aconfig/nano/Aconfig$flag_values;
    .registers 2

    .line 652
    invoke-static {}, Landroid/aconfig/nano/Aconfig$flag_value;->emptyArray()[Landroid/aconfig/nano/Aconfig$flag_value;

    move-result-object v0

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_values;->flagValue:[Landroid/aconfig/nano/Aconfig$flag_value;

    .line 653
    const/4 v0, -0x1

    iput v0, p0, Landroid/aconfig/nano/Aconfig$flag_values;->cachedSize:I

    .line 654
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 5

    .line 673
    invoke-super {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 674
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_values;->flagValue:[Landroid/aconfig/nano/Aconfig$flag_value;

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_values;->flagValue:[Landroid/aconfig/nano/Aconfig$flag_value;

    array-length v1, v1

    if-lez v1, :cond_23

    .line 675
    const/4 v1, 0x0

    :goto_e
    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$flag_values;->flagValue:[Landroid/aconfig/nano/Aconfig$flag_value;

    array-length v2, v2

    if-ge v1, v2, :cond_23

    .line 676
    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$flag_values;->flagValue:[Landroid/aconfig/nano/Aconfig$flag_value;

    aget-object v2, v2, v1

    .line 677
    if-eqz v2, :cond_20

    .line 678
    nop

    .line 679
    const/4 v3, 0x1

    invoke-static {v3, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILandroid/internal/framework/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 675
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 683
    :cond_23
    return v0
.end method

.method public blacklist mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_values;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 691
    nop

    :goto_1
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 692
    sparse-switch v0, :sswitch_data_52

    .line 696
    invoke-static {p1, v0}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_50

    .line 697
    return-object p0

    .line 702
    :sswitch_f
    nop

    .line 703
    const/16 v0, 0xa

    invoke-static {p1, v0}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 704
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_values;->flagValue:[Landroid/aconfig/nano/Aconfig$flag_value;

    const/4 v2, 0x0

    if-nez v1, :cond_1d

    move v1, v2

    goto :goto_20

    :cond_1d
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_values;->flagValue:[Landroid/aconfig/nano/Aconfig$flag_value;

    array-length v1, v1

    .line 705
    :goto_20
    add-int/2addr v0, v1

    new-array v3, v0, [Landroid/aconfig/nano/Aconfig$flag_value;

    .line 707
    if-eqz v1, :cond_2a

    .line 708
    iget-object v4, p0, Landroid/aconfig/nano/Aconfig$flag_values;->flagValue:[Landroid/aconfig/nano/Aconfig$flag_value;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 710
    :cond_2a
    :goto_2a
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_40

    .line 711
    new-instance v2, Landroid/aconfig/nano/Aconfig$flag_value;

    invoke-direct {v2}, Landroid/aconfig/nano/Aconfig$flag_value;-><init>()V

    aput-object v2, v3, v1

    .line 712
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Landroid/internal/framework/protobuf/nano/MessageNano;)V

    .line 713
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 710
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 716
    :cond_40
    new-instance v0, Landroid/aconfig/nano/Aconfig$flag_value;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$flag_value;-><init>()V

    aput-object v0, v3, v1

    .line 717
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Landroid/internal/framework/protobuf/nano/MessageNano;)V

    .line 718
    iput-object v3, p0, Landroid/aconfig/nano/Aconfig$flag_values;->flagValue:[Landroid/aconfig/nano/Aconfig$flag_value;

    .line 719
    goto :goto_50

    .line 694
    :sswitch_4f
    return-object p0

    .line 722
    :cond_50
    :goto_50
    goto :goto_1

    nop

    :sswitch_data_52
    .sparse-switch
        0x0 -> :sswitch_4f
        0xa -> :sswitch_f
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

    .line 627
    invoke-virtual {p0, p1}, Landroid/aconfig/nano/Aconfig$flag_values;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_values;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 660
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_values;->flagValue:[Landroid/aconfig/nano/Aconfig$flag_value;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_values;->flagValue:[Landroid/aconfig/nano/Aconfig$flag_value;

    array-length v0, v0

    if-lez v0, :cond_1c

    .line 661
    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_values;->flagValue:[Landroid/aconfig/nano/Aconfig$flag_value;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 662
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_values;->flagValue:[Landroid/aconfig/nano/Aconfig$flag_value;

    aget-object v1, v1, v0

    .line 663
    if-eqz v1, :cond_19

    .line 664
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILandroid/internal/framework/protobuf/nano/MessageNano;)V

    .line 661
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 668
    :cond_1c
    invoke-super {p0, p1}, Landroid/internal/framework/protobuf/nano/MessageNano;->writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 669
    return-void
.end method
