.class public final Landroid/aconfig/nano/Aconfig$flag_metadata;
.super Landroid/internal/framework/protobuf/nano/MessageNano;
.source "Aconfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/aconfig/nano/Aconfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "flag_metadata"
.end annotation


# static fields
.field public static final blacklist ACONFIGD:I = 0x1

.field public static final blacklist DEVICE_CONFIG:I = 0x2

.field public static final blacklist NONE:I = 0x3

.field public static final blacklist PURPOSE_BUGFIX:I = 0x2

.field public static final blacklist PURPOSE_FEATURE:I = 0x1

.field public static final blacklist PURPOSE_UNSPECIFIED:I

.field public static final blacklist UNSPECIFIED:I

.field private static volatile blacklist _emptyArray:[Landroid/aconfig/nano/Aconfig$flag_metadata;


# instance fields
.field public blacklist purpose:I

.field public blacklist storage:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 255
    invoke-direct {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;-><init>()V

    .line 256
    invoke-virtual {p0}, Landroid/aconfig/nano/Aconfig$flag_metadata;->clear()Landroid/aconfig/nano/Aconfig$flag_metadata;

    .line 257
    return-void
.end method

.method public static blacklist emptyArray()[Landroid/aconfig/nano/Aconfig$flag_metadata;
    .registers 2

    .line 238
    sget-object v0, Landroid/aconfig/nano/Aconfig$flag_metadata;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_metadata;

    if-nez v0, :cond_15

    .line 239
    sget-object v0, Landroid/internal/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_7
    sget-object v1, Landroid/aconfig/nano/Aconfig$flag_metadata;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_metadata;

    if-nez v1, :cond_10

    .line 242
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/aconfig/nano/Aconfig$flag_metadata;

    sput-object v1, Landroid/aconfig/nano/Aconfig$flag_metadata;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_metadata;

    .line 244
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 246
    :cond_15
    :goto_15
    sget-object v0, Landroid/aconfig/nano/Aconfig$flag_metadata;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_metadata;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_metadata;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    new-instance v0, Landroid/aconfig/nano/Aconfig$flag_metadata;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$flag_metadata;-><init>()V

    invoke-virtual {v0, p0}, Landroid/aconfig/nano/Aconfig$flag_metadata;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_metadata;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Landroid/aconfig/nano/Aconfig$flag_metadata;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 336
    new-instance v0, Landroid/aconfig/nano/Aconfig$flag_metadata;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$flag_metadata;-><init>()V

    invoke-static {v0, p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->mergeFrom(Landroid/internal/framework/protobuf/nano/MessageNano;[B)Landroid/internal/framework/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Landroid/aconfig/nano/Aconfig$flag_metadata;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Landroid/aconfig/nano/Aconfig$flag_metadata;
    .registers 2

    .line 260
    const/4 v0, 0x0

    iput v0, p0, Landroid/aconfig/nano/Aconfig$flag_metadata;->purpose:I

    .line 261
    iput v0, p0, Landroid/aconfig/nano/Aconfig$flag_metadata;->storage:I

    .line 262
    const/4 v0, -0x1

    iput v0, p0, Landroid/aconfig/nano/Aconfig$flag_metadata;->cachedSize:I

    .line 263
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 280
    invoke-super {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 281
    iget v1, p0, Landroid/aconfig/nano/Aconfig$flag_metadata;->purpose:I

    if-eqz v1, :cond_10

    .line 282
    iget v1, p0, Landroid/aconfig/nano/Aconfig$flag_metadata;->purpose:I

    .line 283
    const/4 v2, 0x1

    invoke-static {v2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 285
    :cond_10
    iget v1, p0, Landroid/aconfig/nano/Aconfig$flag_metadata;->storage:I

    if-eqz v1, :cond_1c

    .line 286
    iget v1, p0, Landroid/aconfig/nano/Aconfig$flag_metadata;->storage:I

    .line 287
    const/4 v2, 0x2

    invoke-static {v2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 289
    :cond_1c
    return v0
.end method

.method public blacklist mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_metadata;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    nop

    :goto_1
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 298
    sparse-switch v0, :sswitch_data_28

    .line 302
    invoke-static {p1, v0}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_26

    .line 303
    return-object p0

    .line 319
    :sswitch_f
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 320
    packed-switch v0, :pswitch_data_36

    goto :goto_19

    .line 325
    :pswitch_17
    iput v0, p0, Landroid/aconfig/nano/Aconfig$flag_metadata;->storage:I

    .line 328
    :goto_19
    goto :goto_26

    .line 308
    :sswitch_1a
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 309
    packed-switch v0, :pswitch_data_42

    goto :goto_24

    .line 313
    :pswitch_22
    iput v0, p0, Landroid/aconfig/nano/Aconfig$flag_metadata;->purpose:I

    .line 316
    :goto_24
    goto :goto_26

    .line 300
    :sswitch_25
    return-object p0

    .line 331
    :cond_26
    :goto_26
    goto :goto_1

    nop

    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_25
        0x8 -> :sswitch_1a
        0x10 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_22
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

    .line 221
    invoke-virtual {p0, p1}, Landroid/aconfig/nano/Aconfig$flag_metadata;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_metadata;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    iget v0, p0, Landroid/aconfig/nano/Aconfig$flag_metadata;->purpose:I

    if-eqz v0, :cond_a

    .line 270
    const/4 v0, 0x1

    iget v1, p0, Landroid/aconfig/nano/Aconfig$flag_metadata;->purpose:I

    invoke-virtual {p1, v0, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 272
    :cond_a
    iget v0, p0, Landroid/aconfig/nano/Aconfig$flag_metadata;->storage:I

    if-eqz v0, :cond_14

    .line 273
    const/4 v0, 0x2

    iget v1, p0, Landroid/aconfig/nano/Aconfig$flag_metadata;->storage:I

    invoke-virtual {p1, v0, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 275
    :cond_14
    invoke-super {p0, p1}, Landroid/internal/framework/protobuf/nano/MessageNano;->writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 276
    return-void
.end method
