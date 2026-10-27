.class public final Landroid/util/EventLog$Event;
.super Ljava/lang/Object;
.source "EventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/EventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation


# static fields
.field private static final greylist-max-o FLOAT_TYPE:B = 0x4t

.field private static final greylist-max-o HEADER_SIZE_OFFSET:I = 0x2

.field private static final greylist-max-o INT_TYPE:B = 0x0t

.field private static final greylist-max-o LENGTH_OFFSET:I = 0x0

.field private static final greylist-max-o LIST_TYPE:B = 0x3t

.field private static final greylist-max-o LONG_TYPE:B = 0x1t

.field private static final greylist-max-o NANOSECONDS_OFFSET:I = 0x10

.field private static final greylist-max-o PROCESS_OFFSET:I = 0x4

.field private static final greylist-max-o SECONDS_OFFSET:I = 0xc

.field private static final greylist-max-o STRING_TYPE:B = 0x2t

.field private static final blacklist TAG_LENGTH:I = 0x4

.field private static final greylist-max-o THREAD_OFFSET:I = 0x8

.field private static final greylist-max-o UID_OFFSET:I = 0x18

.field private static final greylist-max-o V1_PAYLOAD_START:I = 0x14


# instance fields
.field private final greylist-max-o mBuffer:Ljava/nio/ByteBuffer;

.field private greylist-max-o mLastWtf:Ljava/lang/Exception;


# direct methods
.method constructor greylist-max-r <init>([B)V
    .registers 3

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    .line 98
    iget-object p1, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 99
    return-void
.end method

.method private greylist-max-o decodeObject()Ljava/lang/Object;
    .registers 6

    .line 189
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 190
    packed-switch v0, :pswitch_data_8a

    .line 220
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown entry type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    :pswitch_22
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 213
    :pswitch_2d
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 214
    if-gez v0, :cond_37

    add-int/lit16 v0, v0, 0x100

    .line 215
    :cond_37
    new-array v1, v0, [Ljava/lang/Object;

    .line 216
    const/4 v2, 0x0

    :goto_3a
    if-ge v2, v0, :cond_45

    invoke-direct {p0}, Landroid/util/EventLog$Event;->decodeObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 217
    :cond_45
    return-object v1

    .line 202
    :pswitch_46
    :try_start_46
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 203
    iget-object v1, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 204
    iget-object v2, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    add-int v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 205
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v1, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_66
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_46 .. :try_end_66} :catch_67

    return-object v2

    .line 206
    :catch_67
    move-exception v0

    .line 207
    const-string v1, "EventLog"

    const-string v2, "UTF-8 is not supported"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    iput-object v0, p0, Landroid/util/EventLog$Event;->mLastWtf:Ljava/lang/Exception;

    .line 209
    const/4 v0, 0x0

    return-object v0

    .line 195
    :pswitch_73
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 192
    :pswitch_7e
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_73
        :pswitch_46
        :pswitch_2d
        :pswitch_22
    .end packed-switch
.end method

.method private static blacklist encodeObject(Ljava/lang/Object;)[B
    .registers 7

    .line 225
    const/4 v0, 0x0

    if-nez p0, :cond_6

    .line 226
    new-array p0, v0, [B

    return-object p0

    .line 228
    :cond_6
    instance-of v1, p0, Ljava/lang/Integer;

    const/4 v2, 0x5

    if-eqz v1, :cond_2a

    .line 229
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 230
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 231
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    check-cast p0, Ljava/lang/Integer;

    .line 232
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 233
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    .line 229
    return-object p0

    .line 234
    :cond_2a
    instance-of v1, p0, Ljava/lang/Long;

    if-eqz v1, :cond_50

    .line 235
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 236
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 237
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    check-cast p0, Ljava/lang/Long;

    .line 238
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 239
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    .line 235
    return-object p0

    .line 240
    :cond_50
    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_74

    .line 241
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 242
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 243
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    check-cast p0, Ljava/lang/Float;

    .line 244
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 245
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    .line 241
    return-object p0

    .line 246
    :cond_74
    instance-of v1, p0, Ljava/lang/String;

    const/4 v3, 0x2

    if-eqz v1, :cond_a5

    .line 247
    check-cast p0, Ljava/lang/String;

    .line 250
    :try_start_7b
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_81
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7b .. :try_end_81} :catch_82

    .line 253
    goto :goto_85

    .line 251
    :catch_82
    move-exception p0

    .line 252
    new-array p0, v0, [B

    .line 254
    :goto_85
    array-length v0, p0

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 255
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 256
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v1, p0

    .line 257
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 258
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 259
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    .line 254
    return-object p0

    .line 260
    :cond_a5
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_f9

    .line 261
    check-cast p0, [Ljava/lang/Object;

    .line 262
    array-length v1, p0

    const/16 v2, 0xff

    if-gt v1, v2, :cond_f1

    .line 265
    array-length v1, p0

    new-array v1, v1, [[B

    .line 266
    nop

    .line 267
    move v2, v0

    move v4, v2

    :goto_b6
    array-length v5, p0

    if-ge v2, v5, :cond_c8

    .line 268
    aget-object v5, p0, v2

    invoke-static {v5}, Landroid/util/EventLog$Event;->encodeObject(Ljava/lang/Object;)[B

    move-result-object v5

    aput-object v5, v1, v2

    .line 269
    aget-object v5, v1, v2

    array-length v5, v5

    add-int/2addr v4, v5

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_b6

    .line 271
    :cond_c8
    add-int/2addr v4, v3

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 272
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 273
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    array-length v3, p0

    int-to-byte v3, v3

    .line 274
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 275
    nop

    :goto_e1
    array-length v3, p0

    if-ge v0, v3, :cond_ec

    .line 276
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_e1

    .line 278
    :cond_ec
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    .line 263
    :cond_f1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Object array too long"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 280
    :cond_f9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown object type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o fromBytes([B)Landroid/util/EventLog$Event;
    .registers 2

    .line 286
    new-instance v0, Landroid/util/EventLog$Event;

    invoke-direct {v0, p0}, Landroid/util/EventLog$Event;-><init>([B)V

    return-object v0
.end method

.method private blacklist getHeaderSize()I
    .registers 3

    .line 137
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    .line 138
    if-eqz v0, :cond_a

    .line 139
    return v0

    .line 141
    :cond_a
    const/16 v0, 0x14

    return v0
.end method


# virtual methods
.method public greylist-max-o clearError()V
    .registers 2

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/EventLog$Event;->mLastWtf:Ljava/lang/Exception;

    .line 311
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 320
    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 321
    :cond_4
    if-eqz p1, :cond_24

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_24

    .line 322
    :cond_11
    check-cast p1, Landroid/util/EventLog$Event;

    .line 323
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object p1, p1, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    .line 321
    :cond_24
    :goto_24
    const/4 p1, 0x0

    return p1
.end method

.method public greylist-max-o getBytes()[B
    .registers 3

    .line 291
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 292
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized whitelist getData()Ljava/lang/Object;
    .registers 6

    monitor-enter p0

    .line 146
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0}, Landroid/util/EventLog$Event;->getHeaderSize()I

    move-result v1

    .line 147
    iget-object v2, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 148
    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_1b} :catch_4d
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_1b} :catch_2c
    .catchall {:try_start_2 .. :try_end_1b} :catchall_2a

    if-lt v1, v2, :cond_1f

    .line 150
    monitor-exit p0

    return-object v0

    .line 152
    :cond_1f
    :try_start_1f
    iget-object v2, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 153
    invoke-direct {p0}, Landroid/util/EventLog$Event;->decodeObject()Ljava/lang/Object;

    move-result-object v0
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_28} :catch_4d
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1f .. :try_end_28} :catch_2c
    .catchall {:try_start_1f .. :try_end_28} :catchall_2a

    monitor-exit p0

    return-object v0

    .line 145
    :catchall_2a
    move-exception v0

    goto :goto_6e

    .line 158
    :catch_2c
    move-exception v1

    .line 159
    :try_start_2d
    const-string v2, "EventLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Truncated entry payload: tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/util/EventLog$Event;->getTag()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    iput-object v1, p0, Landroid/util/EventLog$Event;->mLastWtf:Ljava/lang/Exception;
    :try_end_4b
    .catchall {:try_start_2d .. :try_end_4b} :catchall_2a

    .line 161
    monitor-exit p0

    return-object v0

    .line 154
    :catch_4d
    move-exception v1

    .line 155
    :try_start_4e
    const-string v2, "EventLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal entry payload: tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/util/EventLog$Event;->getTag()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    iput-object v1, p0, Landroid/util/EventLog$Event;->mLastWtf:Ljava/lang/Exception;
    :try_end_6c
    .catchall {:try_start_4e .. :try_end_6c} :catchall_2a

    .line 157
    monitor-exit p0

    return-object v0

    .line 145
    :goto_6e
    :try_start_6e
    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_2a

    throw v0
.end method

.method public greylist-max-o getLastError()Ljava/lang/Exception;
    .registers 2

    .line 301
    iget-object v0, p0, Landroid/util/EventLog$Event;->mLastWtf:Ljava/lang/Exception;

    return-object v0
.end method

.method public whitelist getProcessId()I
    .registers 3

    .line 103
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public whitelist getTag()I
    .registers 3

    .line 133
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Landroid/util/EventLog$Event;->getHeaderSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public whitelist getThreadId()I
    .registers 3

    .line 122
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public whitelist getTimeNanos()J
    .registers 5

    .line 127
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    iget-object v2, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    .line 128
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 127
    return-wide v0
.end method

.method public whitelist getUid()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 113
    :try_start_0
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 114
    :catch_9
    move-exception v0

    .line 116
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 333
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public blacklist withNewData(Ljava/lang/Object;)Landroid/util/EventLog$Event;
    .registers 6

    .line 171
    invoke-static {p1}, Landroid/util/EventLog$Event;->encodeObject(Ljava/lang/Object;)[B

    move-result-object p1

    .line 172
    array-length v0, p1

    const v1, 0xfffb

    if-gt v0, v1, :cond_31

    .line 175
    invoke-direct {p0}, Landroid/util/EventLog$Event;->getHeaderSize()I

    move-result v0

    .line 176
    add-int/lit8 v0, v0, 0x4

    array-length v1, p1

    add-int/2addr v1, v0

    new-array v1, v1, [B

    .line 178
    iget-object v2, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    new-instance v0, Landroid/util/EventLog$Event;

    invoke-direct {v0, v1}, Landroid/util/EventLog$Event;-><init>([B)V

    .line 183
    iget-object v1, v0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    array-length p1, p1

    add-int/lit8 p1, p1, 0x4

    int-to-short p1, p1

    invoke-virtual {v1, v3, p1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 184
    return-object v0

    .line 173
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Payload too long"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
