.class public final Landroid/aconfig/nano/Aconfig$parsed_flags;
.super Landroid/internal/framework/protobuf/nano/MessageNano;
.source "Aconfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/aconfig/nano/Aconfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "parsed_flags"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Landroid/aconfig/nano/Aconfig$parsed_flags;


# instance fields
.field public blacklist parsedFlag:[Landroid/aconfig/nano/Aconfig$parsed_flag;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1201
    invoke-direct {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;-><init>()V

    .line 1202
    invoke-virtual {p0}, Landroid/aconfig/nano/Aconfig$parsed_flags;->clear()Landroid/aconfig/nano/Aconfig$parsed_flags;

    .line 1203
    return-void
.end method

.method public static blacklist emptyArray()[Landroid/aconfig/nano/Aconfig$parsed_flags;
    .registers 2

    .line 1187
    sget-object v0, Landroid/aconfig/nano/Aconfig$parsed_flags;->_emptyArray:[Landroid/aconfig/nano/Aconfig$parsed_flags;

    if-nez v0, :cond_15

    .line 1188
    sget-object v0, Landroid/internal/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1190
    :try_start_7
    sget-object v1, Landroid/aconfig/nano/Aconfig$parsed_flags;->_emptyArray:[Landroid/aconfig/nano/Aconfig$parsed_flags;

    if-nez v1, :cond_10

    .line 1191
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/aconfig/nano/Aconfig$parsed_flags;

    sput-object v1, Landroid/aconfig/nano/Aconfig$parsed_flags;->_emptyArray:[Landroid/aconfig/nano/Aconfig$parsed_flags;

    .line 1193
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 1195
    :cond_15
    :goto_15
    sget-object v0, Landroid/aconfig/nano/Aconfig$parsed_flags;->_emptyArray:[Landroid/aconfig/nano/Aconfig$parsed_flags;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$parsed_flags;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1287
    new-instance v0, Landroid/aconfig/nano/Aconfig$parsed_flags;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$parsed_flags;-><init>()V

    invoke-virtual {v0, p0}, Landroid/aconfig/nano/Aconfig$parsed_flags;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$parsed_flags;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Landroid/aconfig/nano/Aconfig$parsed_flags;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 1281
    new-instance v0, Landroid/aconfig/nano/Aconfig$parsed_flags;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$parsed_flags;-><init>()V

    invoke-static {v0, p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->mergeFrom(Landroid/internal/framework/protobuf/nano/MessageNano;[B)Landroid/internal/framework/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Landroid/aconfig/nano/Aconfig$parsed_flags;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Landroid/aconfig/nano/Aconfig$parsed_flags;
    .registers 2

    .line 1206
    invoke-static {}, Landroid/aconfig/nano/Aconfig$parsed_flag;->emptyArray()[Landroid/aconfig/nano/Aconfig$parsed_flag;

    move-result-object v0

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flags;->parsedFlag:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    .line 1207
    const/4 v0, -0x1

    iput v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flags;->cachedSize:I

    .line 1208
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 5

    .line 1227
    invoke-super {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1228
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flags;->parsedFlag:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flags;->parsedFlag:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    array-length v1, v1

    if-lez v1, :cond_23

    .line 1229
    const/4 v1, 0x0

    :goto_e
    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$parsed_flags;->parsedFlag:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    array-length v2, v2

    if-ge v1, v2, :cond_23

    .line 1230
    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$parsed_flags;->parsedFlag:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    aget-object v2, v2, v1

    .line 1231
    if-eqz v2, :cond_20

    .line 1232
    nop

    .line 1233
    const/4 v3, 0x1

    invoke-static {v3, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILandroid/internal/framework/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1229
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1237
    :cond_23
    return v0
.end method

.method public blacklist mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$parsed_flags;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1245
    nop

    :goto_1
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1246
    sparse-switch v0, :sswitch_data_52

    .line 1250
    invoke-static {p1, v0}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_50

    .line 1251
    return-object p0

    .line 1256
    :sswitch_f
    nop

    .line 1257
    const/16 v0, 0xa

    invoke-static {p1, v0}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1258
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flags;->parsedFlag:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    const/4 v2, 0x0

    if-nez v1, :cond_1d

    move v1, v2

    goto :goto_20

    :cond_1d
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flags;->parsedFlag:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    array-length v1, v1

    .line 1259
    :goto_20
    add-int/2addr v0, v1

    new-array v3, v0, [Landroid/aconfig/nano/Aconfig$parsed_flag;

    .line 1261
    if-eqz v1, :cond_2a

    .line 1262
    iget-object v4, p0, Landroid/aconfig/nano/Aconfig$parsed_flags;->parsedFlag:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1264
    :cond_2a
    :goto_2a
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_40

    .line 1265
    new-instance v2, Landroid/aconfig/nano/Aconfig$parsed_flag;

    invoke-direct {v2}, Landroid/aconfig/nano/Aconfig$parsed_flag;-><init>()V

    aput-object v2, v3, v1

    .line 1266
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Landroid/internal/framework/protobuf/nano/MessageNano;)V

    .line 1267
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1264
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 1270
    :cond_40
    new-instance v0, Landroid/aconfig/nano/Aconfig$parsed_flag;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$parsed_flag;-><init>()V

    aput-object v0, v3, v1

    .line 1271
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Landroid/internal/framework/protobuf/nano/MessageNano;)V

    .line 1272
    iput-object v3, p0, Landroid/aconfig/nano/Aconfig$parsed_flags;->parsedFlag:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    .line 1273
    goto :goto_50

    .line 1248
    :sswitch_4f
    return-object p0

    .line 1276
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

    .line 1181
    invoke-virtual {p0, p1}, Landroid/aconfig/nano/Aconfig$parsed_flags;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$parsed_flags;

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

    .line 1214
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flags;->parsedFlag:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flags;->parsedFlag:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    array-length v0, v0

    if-lez v0, :cond_1c

    .line 1215
    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flags;->parsedFlag:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 1216
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flags;->parsedFlag:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    aget-object v1, v1, v0

    .line 1217
    if-eqz v1, :cond_19

    .line 1218
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILandroid/internal/framework/protobuf/nano/MessageNano;)V

    .line 1215
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1222
    :cond_1c
    invoke-super {p0, p1}, Landroid/internal/framework/protobuf/nano/MessageNano;->writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1223
    return-void
.end method
