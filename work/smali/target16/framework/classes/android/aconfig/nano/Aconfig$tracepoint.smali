.class public final Landroid/aconfig/nano/Aconfig$tracepoint;
.super Landroid/internal/framework/protobuf/nano/MessageNano;
.source "Aconfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/aconfig/nano/Aconfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "tracepoint"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Landroid/aconfig/nano/Aconfig$tracepoint;


# instance fields
.field public blacklist permission:I

.field public blacklist source:Ljava/lang/String;

.field public blacklist state:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 763
    invoke-direct {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;-><init>()V

    .line 764
    invoke-virtual {p0}, Landroid/aconfig/nano/Aconfig$tracepoint;->clear()Landroid/aconfig/nano/Aconfig$tracepoint;

    .line 765
    return-void
.end method

.method public static blacklist emptyArray()[Landroid/aconfig/nano/Aconfig$tracepoint;
    .registers 2

    .line 743
    sget-object v0, Landroid/aconfig/nano/Aconfig$tracepoint;->_emptyArray:[Landroid/aconfig/nano/Aconfig$tracepoint;

    if-nez v0, :cond_15

    .line 744
    sget-object v0, Landroid/internal/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 746
    :try_start_7
    sget-object v1, Landroid/aconfig/nano/Aconfig$tracepoint;->_emptyArray:[Landroid/aconfig/nano/Aconfig$tracepoint;

    if-nez v1, :cond_10

    .line 747
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/aconfig/nano/Aconfig$tracepoint;

    sput-object v1, Landroid/aconfig/nano/Aconfig$tracepoint;->_emptyArray:[Landroid/aconfig/nano/Aconfig$tracepoint;

    .line 749
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 751
    :cond_15
    :goto_15
    sget-object v0, Landroid/aconfig/nano/Aconfig$tracepoint;->_emptyArray:[Landroid/aconfig/nano/Aconfig$tracepoint;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$tracepoint;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 859
    new-instance v0, Landroid/aconfig/nano/Aconfig$tracepoint;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$tracepoint;-><init>()V

    invoke-virtual {v0, p0}, Landroid/aconfig/nano/Aconfig$tracepoint;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$tracepoint;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Landroid/aconfig/nano/Aconfig$tracepoint;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 853
    new-instance v0, Landroid/aconfig/nano/Aconfig$tracepoint;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$tracepoint;-><init>()V

    invoke-static {v0, p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->mergeFrom(Landroid/internal/framework/protobuf/nano/MessageNano;[B)Landroid/internal/framework/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Landroid/aconfig/nano/Aconfig$tracepoint;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Landroid/aconfig/nano/Aconfig$tracepoint;
    .registers 2

    .line 768
    const-string v0, ""

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->source:Ljava/lang/String;

    .line 769
    const/4 v0, 0x1

    iput v0, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->state:I

    .line 770
    iput v0, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->permission:I

    .line 771
    const/4 v0, -0x1

    iput v0, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->cachedSize:I

    .line 772
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 5

    .line 792
    invoke-super {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 793
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->source:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_16

    .line 794
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->source:Ljava/lang/String;

    .line 795
    invoke-static {v2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 797
    :cond_16
    iget v1, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->state:I

    if-eq v1, v2, :cond_22

    .line 798
    iget v1, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->state:I

    .line 799
    const/4 v3, 0x2

    invoke-static {v3, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 801
    :cond_22
    iget v1, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->permission:I

    if-eq v1, v2, :cond_2e

    .line 802
    iget v1, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->permission:I

    .line 803
    const/4 v2, 0x3

    invoke-static {v2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 805
    :cond_2e
    return v0
.end method

.method public blacklist mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$tracepoint;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 813
    nop

    :goto_1
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 814
    sparse-switch v0, :sswitch_data_2e

    .line 818
    invoke-static {p1, v0}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 819
    return-object p0

    .line 838
    :sswitch_f
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 839
    packed-switch v0, :pswitch_data_40

    goto :goto_19

    .line 842
    :pswitch_17
    iput v0, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->permission:I

    .line 845
    :goto_19
    goto :goto_2d

    .line 828
    :sswitch_1a
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 829
    packed-switch v0, :pswitch_data_48

    goto :goto_24

    .line 832
    :pswitch_22
    iput v0, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->state:I

    .line 835
    :goto_24
    goto :goto_2d

    .line 824
    :sswitch_25
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->source:Ljava/lang/String;

    .line 825
    goto :goto_2d

    .line 816
    :sswitch_2c
    return-object p0

    .line 848
    :cond_2d
    :goto_2d
    goto :goto_1

    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_2c
        0xa -> :sswitch_25
        0x10 -> :sswitch_1a
        0x18 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_17
        :pswitch_17
    .end packed-switch

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_22
        :pswitch_22
    .end packed-switch
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

    .line 737
    invoke-virtual {p0, p1}, Landroid/aconfig/nano/Aconfig$tracepoint;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$tracepoint;

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

    .line 778
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->source:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_10

    .line 779
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->source:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 781
    :cond_10
    iget v0, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->state:I

    if-eq v0, v1, :cond_1a

    .line 782
    const/4 v0, 0x2

    iget v2, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->state:I

    invoke-virtual {p1, v0, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 784
    :cond_1a
    iget v0, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->permission:I

    if-eq v0, v1, :cond_24

    .line 785
    const/4 v0, 0x3

    iget v1, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->permission:I

    invoke-virtual {p1, v0, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 787
    :cond_24
    invoke-super {p0, p1}, Landroid/internal/framework/protobuf/nano/MessageNano;->writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 788
    return-void
.end method
