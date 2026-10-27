.class public Lcom/miui/whetstone/Event/WhetstoneEventLog;
.super Ljava/lang/Object;
.source "WhetstoneEventLog.java"


# static fields
.field private static final blacklist DATA_START:I = 0x18

.field private static final blacklist INT_TYPE:B = 0x0t

.field private static final blacklist LENGTH_OFFSET:I = 0x0

.field private static final blacklist LIST_TYPE:B = 0x3t

.field private static final blacklist LONG_TYPE:B = 0x1t

.field private static final blacklist NANOSECONDS_OFFSET:I = 0x10

.field private static final blacklist PAYLOAD_START:I = 0x14

.field private static final blacklist PROCESS_OFFSET:I = 0x4

.field private static final blacklist SECONDS_OFFSET:I = 0xc

.field private static final blacklist STRING_TYPE:B = 0x2t

.field private static final blacklist TAG:Ljava/lang/String; = "WhetstoneEventLog"

.field private static final blacklist TAG_OFFSET:I = 0x14

.field private static final blacklist THREAD_OFFSET:I = 0x8


# instance fields
.field private final blacklist mBuffer:Ljava/nio/ByteBuffer;

.field private blacklist mData:Ljava/lang/Object;

.field private blacklist mLength:I


# direct methods
.method public constructor blacklist <init>([B)V
    .registers 4
    .param p1, "data"    # [B

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    .line 37
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mLength:I

    .line 39
    invoke-virtual {p0}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->getData()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mData:Ljava/lang/Object;

    .line 40
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_23

    .line 41
    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mLength:I

    goto :goto_2a

    .line 42
    :cond_23
    instance-of v0, v0, Ljava/lang/Object;

    if-eqz v0, :cond_2a

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mLength:I

    .line 45
    :cond_2a
    :goto_2a
    return-void
.end method

.method private blacklist decodeObject()Ljava/lang/Object;
    .registers 7

    .line 156
    iget-object v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 157
    .local v0, "type":B
    packed-switch v0, :pswitch_data_7e

    .line 184
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown entry type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    :pswitch_22
    iget-object v1, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 177
    .local v1, "length":I
    if-gez v1, :cond_2c

    add-int/lit16 v1, v1, 0x100

    .line 178
    :cond_2c
    new-array v2, v1, [Ljava/lang/Object;

    .line 179
    .local v2, "array":[Ljava/lang/Object;
    iput v1, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mLength:I

    .line 180
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_31
    if-ge v3, v1, :cond_3c

    invoke-direct {p0}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->decodeObject()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 181
    .end local v3    # "i":I
    :cond_3c
    return-object v2

    .line 166
    .end local v1    # "length":I
    .end local v2    # "array":[Ljava/lang/Object;
    :pswitch_3d
    :try_start_3d
    iget-object v1, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 167
    .restart local v1    # "length":I
    iget-object v2, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 168
    .local v2, "start":I
    iget-object v3, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    add-int v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 169
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v2, v1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_5d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3d .. :try_end_5d} :catch_5e

    return-object v3

    .line 170
    .end local v1    # "length":I
    .end local v2    # "start":I
    :catch_5e
    move-exception v1

    .line 171
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "WhetstoneEventLog"

    const-string v3, "UTF-8 is not supported"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    const/4 v2, 0x0

    return-object v2

    .line 162
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :pswitch_68
    iget-object v1, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 159
    :pswitch_73
    iget-object v1, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_73
        :pswitch_68
        :pswitch_3d
        :pswitch_22
    .end packed-switch
.end method

.method private blacklist getObject(I)Ljava/lang/Object;
    .registers 4
    .param p1, "pos"    # I

    .line 103
    if-ltz p1, :cond_15

    iget v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mLength:I

    if-lt p1, v0, :cond_7

    goto :goto_15

    .line 108
    :cond_7
    iget-object v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mData:Ljava/lang/Object;

    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_12

    .line 109
    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, p1

    .local v0, "temp":Ljava/lang/Object;
    goto :goto_14

    .line 111
    .end local v0    # "temp":Ljava/lang/Object;
    :cond_12
    iget-object v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mData:Ljava/lang/Object;

    .line 113
    .restart local v0    # "temp":Ljava/lang/Object;
    :goto_14
    return-object v0

    .line 104
    .end local v0    # "temp":Ljava/lang/Object;
    :cond_15
    :goto_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WhetstoneEventLog"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getParameter(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .registers 10
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "pos"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    const/4 v0, -0x1

    .line 62
    .local v0, "start":I
    const/4 v1, -0x1

    .line 63
    .local v1, "end":I
    const/4 v2, 0x0

    if-eqz p1, :cond_5f

    if-gtz p2, :cond_8

    goto :goto_5f

    .line 66
    :cond_8
    const/4 v3, 0x0

    .line 67
    .local v3, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v4, v5, :cond_5e

    .line 68
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_1a

    .line 69
    move v0, v4

    goto :goto_5b

    .line 70
    :cond_1a
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x5d

    if-ne v5, v6, :cond_38

    .line 71
    move v1, v4

    .line 72
    add-int/lit8 v3, v3, 0x1

    .line 73
    if-ne v3, p2, :cond_5e

    add-int/lit8 v5, v0, 0x1

    if-le v4, v5, :cond_5e

    .line 74
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v5, v4, -0x1

    invoke-interface {p1, v2, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 77
    :cond_38
    if-lez v0, :cond_5b

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_5b

    const/4 v5, -0x1

    if-ne v1, v5, :cond_5b

    .line 78
    add-int/lit8 v3, v3, 0x1

    .line 79
    if-ne v3, p2, :cond_5a

    add-int/lit8 v5, v0, 0x1

    if-le v4, v5, :cond_5a

    .line 80
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v5, v4, -0x1

    invoke-interface {p1, v2, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 82
    :cond_5a
    move v0, v4

    .line 67
    :cond_5b
    :goto_5b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 85
    .end local v4    # "i":I
    :cond_5e
    return-object v2

    .line 64
    .end local v3    # "n":I
    :cond_5f
    :goto_5f
    return-object v2
.end method


# virtual methods
.method public declared-synchronized blacklist getData()Ljava/lang/Object;
    .registers 6

    monitor-enter p0

    .line 142
    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    add-int/lit8 v2, v2, 0x14

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 143
    iget-object v1, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 144
    invoke-direct {p0}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->decodeObject()Ljava/lang/Object;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_19} :catch_3c
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_19} :catch_1d
    .catchall {:try_start_2 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-object v0

    .line 141
    .end local p0    # "this":Lcom/miui/whetstone/Event/WhetstoneEventLog;
    :catchall_1b
    move-exception v0

    goto :goto_5b

    .line 148
    :catch_1d
    move-exception v1

    .line 149
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    :try_start_1e
    const-string v2, "WhetstoneEventLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Truncated entry payload: tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->getTag()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a
    .catchall {:try_start_1e .. :try_end_3a} :catchall_1b

    .line 150
    monitor-exit p0

    return-object v0

    .line 145
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    :catch_3c
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3d
    const-string v2, "WhetstoneEventLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal entry payload: tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->getTag()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_59
    .catchall {:try_start_3d .. :try_end_59} :catchall_1b

    .line 147
    monitor-exit p0

    return-object v0

    .line 141
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_5b
    monitor-exit p0

    throw v0
.end method

.method public blacklist getInteger(I)Ljava/lang/Integer;
    .registers 4
    .param p1, "pos"    # I

    .line 88
    invoke-direct {p0, p1}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 89
    .local v0, "temp":Ljava/lang/Object;
    if-eqz v0, :cond_e

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_e

    .line 90
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    return-object v1

    .line 92
    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getLong(I)Ljava/lang/Long;
    .registers 4
    .param p1, "pos"    # I

    .line 95
    invoke-direct {p0, p1}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 96
    .local v0, "temp":Ljava/lang/Object;
    if-eqz v0, :cond_e

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_e

    .line 97
    move-object v1, v0

    check-cast v1, Ljava/lang/Long;

    return-object v1

    .line 99
    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getProcessId()I
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public blacklist getString(I)Ljava/lang/String;
    .registers 4
    .param p1, "pos"    # I

    .line 52
    invoke-direct {p0, p1}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 53
    .local v0, "temp":Ljava/lang/Object;
    if-eqz v0, :cond_e

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 54
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 56
    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getTag()I
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public blacklist getThreadId()I
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public blacklist getTimeNanos()J
    .registers 5

    .line 130
    iget-object v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    .line 131
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 130
    return-wide v0
.end method

.method public blacklist print()V
    .registers 5

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    invoke-virtual {p0}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->getProcessId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->getTimeNanos()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->getTag()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    const-string v1, "WhetstoneEventLog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method
