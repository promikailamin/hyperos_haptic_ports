.class public Landroid/ddm/DdmHandleViewDebug;
.super Landroid/ddm/DdmHandle;
.source "DdmHandleViewDebug.java"


# static fields
.field private static final greylist-max-o CHUNK_VULW:I

.field private static final greylist-max-o CHUNK_VUOP:I

.field private static final greylist-max-o CHUNK_VURT:I

.field private static final greylist-max-o ERR_EXCEPTION:I = -0x3

.field private static final greylist-max-o ERR_INVALID_OP:I = -0x1

.field private static final greylist-max-o ERR_INVALID_PARAM:I = -0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DdmViewDebug"

.field private static final greylist-max-o VUOP_CAPTURE_VIEW:I = 0x1

.field private static final greylist-max-o VUOP_DUMP_DISPLAYLIST:I = 0x2

.field private static final greylist-max-o VUOP_INVOKE_VIEW_METHOD:I = 0x4

.field private static final greylist-max-o VUOP_PROFILE_VIEW:I = 0x3

.field private static final greylist-max-o VUOP_SET_LAYOUT_PARAMETER:I = 0x5

.field private static final greylist-max-o VURT_CAPTURE_LAYERS:I = 0x2

.field private static final greylist-max-o VURT_DUMP_HIERARCHY:I = 0x1

.field private static final greylist-max-o VURT_DUMP_THEME:I = 0x3

.field private static final greylist-max-o sInstance:Landroid/ddm/DdmHandleViewDebug;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    const-string v0, "VULW"

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VULW:I

    .line 46
    const-string v0, "VURT"

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VURT:I

    .line 61
    const-string v0, "VUOP"

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUOP:I

    .line 89
    new-instance v0, Landroid/ddm/DdmHandleViewDebug;

    invoke-direct {v0}, Landroid/ddm/DdmHandleViewDebug;-><init>()V

    sput-object v0, Landroid/ddm/DdmHandleViewDebug;->sInstance:Landroid/ddm/DdmHandleViewDebug;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Landroid/ddm/DdmHandle;-><init>()V

    return-void
.end method

.method private greylist-max-o captureLayers(Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 6

    .line 244
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 245
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 247
    :try_start_c
    invoke-static {p1, v1}, Landroid/view/ViewDebug;->captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_25
    .catchall {:try_start_c .. :try_end_f} :catchall_23

    .line 253
    :try_start_f
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_13

    .line 256
    goto :goto_15

    .line 254
    :catch_13
    move-exception p1

    .line 257
    nop

    .line 259
    :goto_15
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 260
    new-instance v0, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v1, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VURT:I

    const/4 v2, 0x0

    array-length v3, p1

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    return-object v0

    .line 252
    :catchall_23
    move-exception p1

    goto :goto_48

    .line 248
    :catch_25
    move-exception p1

    .line 249
    :try_start_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error while obtaining view hierarchy: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 250
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 249
    const/4 v0, 0x1

    invoke-static {v0, p1}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object p1
    :try_end_42
    .catchall {:try_start_26 .. :try_end_42} :catchall_23

    .line 253
    :try_start_42
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    .line 256
    goto :goto_47

    .line 254
    :catch_46
    move-exception v0

    .line 249
    :goto_47
    return-object p1

    .line 253
    :goto_48
    :try_start_48
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    .line 256
    goto :goto_4d

    .line 254
    :catch_4c
    move-exception v0

    .line 257
    :goto_4d
    throw p1
.end method

.method private greylist-max-o captureView(Landroid/view/View;Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 6

    .line 280
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 282
    :try_start_7
    invoke-static {p1, v0, p2}, Landroid/view/ViewDebug;->capture(Landroid/view/View;Ljava/io/OutputStream;Landroid/view/View;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_19

    .line 286
    nop

    .line 288
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 289
    new-instance p2, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUOP:I

    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {p2, v0, p1, v1, v2}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    return-object p2

    .line 283
    :catch_19
    move-exception p1

    .line 284
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected error while capturing view: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 285
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 284
    const/4 p2, 0x1

    invoke-static {p2, p1}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o dumpDisplayLists(Landroid/view/View;Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 4

    .line 294
    new-instance v0, Landroid/ddm/DdmHandleViewDebug$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/ddm/DdmHandleViewDebug$1;-><init>(Landroid/ddm/DdmHandleViewDebug;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 300
    const/4 p1, 0x0

    return-object p1
.end method

.method private greylist-max-o dumpHierarchy(Landroid/view/View;Ljava/nio/ByteBuffer;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 11

    .line 217
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    .line 218
    :goto_b
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    if-lez v3, :cond_13

    move v3, v1

    goto :goto_14

    :cond_13
    move v3, v2

    .line 219
    :goto_14
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    if-lez p2, :cond_22

    move p2, v1

    goto :goto_23

    :cond_22
    move p2, v2

    .line 221
    :goto_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 223
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/high16 v7, 0x200000

    invoke-direct {v6, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 225
    if-eqz p2, :cond_34

    .line 226
    :try_start_30
    invoke-static {p1, v6}, Landroid/view/ViewDebug;->dumpv2(Landroid/view/View;Ljava/io/ByteArrayOutputStream;)V

    goto :goto_37

    .line 228
    :cond_34
    invoke-static {p1, v0, v3, v6}, Landroid/view/ViewDebug;->dump(Landroid/view/View;ZZLjava/io/OutputStream;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_37} :catch_62
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_37} :catch_62

    .line 233
    :goto_37
    nop

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time to obtain view hierarchy (ms): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long/2addr p1, v4

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DdmViewDebug"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 239
    new-instance p2, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VURT:I

    array-length v1, p1

    invoke-direct {p2, v0, p1, v2, v1}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    return-object p2

    .line 230
    :catch_62
    move-exception p1

    .line 231
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected error while obtaining view hierarchy: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 232
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 231
    invoke-static {v1, p1}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o dumpTheme(Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 6

    .line 267
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 269
    :try_start_7
    invoke-static {p1, v0}, Landroid/view/ViewDebug;->dumpTheme(Landroid/view/View;Ljava/io/OutputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_19

    .line 273
    nop

    .line 275
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 276
    new-instance v0, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v1, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VURT:I

    const/4 v2, 0x0

    array-length v3, p1

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    return-object v0

    .line 270
    :catch_19
    move-exception p1

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected error while dumping the theme: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 272
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 271
    const/4 v0, 0x1

    invoke-static {v0, p1}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o getRootView(Ljava/nio/ByteBuffer;)Landroid/view/View;
    .registers 3

    .line 185
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 186
    invoke-static {p1, v0}, Landroid/ddm/DdmHandleViewDebug;->getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowManagerGlobal;->getRootView(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1
    :try_end_10
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_10} :catch_11

    return-object p1

    .line 188
    :catch_11
    move-exception p1

    .line 189
    const/4 p1, 0x0

    return-object p1
.end method

.method private greylist-max-o getTargetView(Landroid/view/View;Ljava/nio/ByteBuffer;)Landroid/view/View;
    .registers 4

    .line 198
    :try_start_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 199
    invoke-static {p2, v0}, Landroid/ddm/DdmHandleViewDebug;->getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object p2
    :try_end_8
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_8} :catch_e

    .line 202
    nop

    .line 204
    invoke-static {p1, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 200
    :catch_e
    move-exception p1

    .line 201
    const/4 p1, 0x0

    return-object p1
.end method

.method private greylist-max-o invokeViewMethod(Landroid/view/View;Landroid/view/View;Ljava/nio/ByteBuffer;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 6

    .line 350
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    .line 351
    invoke-static {p3, p1}, Landroid/ddm/DdmHandleViewDebug;->getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object p1

    .line 354
    :try_start_8
    invoke-static {p2, p1, p3}, Landroid/view/ViewDebug;->invokeViewMethod(Landroid/view/View;Ljava/lang/String;Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    .line 355
    new-instance p2, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget p3, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUOP:I

    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p2, p3, p1, v1, v0}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V
    :try_end_15
    .catch Landroid/view/ViewDebug$ViewMethodInvocationSerializationException; {:try_start_8 .. :try_end_15} :catch_21
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_16

    return-object p2

    .line 358
    :catch_16
    move-exception p1

    .line 359
    const/4 p2, -0x3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object p1

    return-object p1

    .line 356
    :catch_21
    move-exception p1

    .line 357
    const/4 p2, -0x2

    invoke-virtual {p1}, Landroid/view/ViewDebug$ViewMethodInvocationSerializationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o listWindows()Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 7

    .line 163
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManagerGlobal;->getViewRootNames()[Ljava/lang/String;

    move-result-object v0

    .line 165
    nop

    .line 166
    array-length v1, v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    move v4, v3

    :goto_d
    if-ge v4, v1, :cond_1d

    aget-object v5, v0, v4

    .line 167
    add-int/lit8 v2, v2, 0x4

    .line 168
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    .line 166
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 171
    :cond_1d
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 172
    sget-object v2, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 174
    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 175
    array-length v2, v0

    :goto_2b
    if-ge v3, v2, :cond_3c

    aget-object v4, v0, v3

    .line 176
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 177
    invoke-static {v1, v4}, Landroid/ddm/DdmHandleViewDebug;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 175
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 180
    :cond_3c
    new-instance v0, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v2, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VULW:I

    invoke-direct {v0, v2, v1}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v0
.end method

.method private greylist-max-o profileView(Landroid/view/View;Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 6

    .line 380
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    const v0, 0x8000

    invoke-direct {p1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 381
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 383
    :try_start_12
    invoke-static {p2, v1}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_2b
    .catchall {:try_start_12 .. :try_end_15} :catchall_29

    .line 388
    :try_start_15
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_19

    .line 391
    goto :goto_1b

    .line 389
    :catch_19
    move-exception p2

    .line 392
    nop

    .line 394
    :goto_1b
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 395
    new-instance p2, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUOP:I

    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {p2, v0, p1, v1, v2}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    return-object p2

    .line 387
    :catchall_29
    move-exception p1

    goto :goto_4e

    .line 384
    :catch_2b
    move-exception p1

    .line 385
    :try_start_2c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected error while profiling view: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2, p1}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object p1
    :try_end_48
    .catchall {:try_start_2c .. :try_end_48} :catchall_29

    .line 388
    :try_start_48
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    .line 391
    goto :goto_4d

    .line 389
    :catch_4c
    move-exception p2

    .line 385
    :goto_4d
    return-object p1

    .line 388
    :goto_4e
    :try_start_4e
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    .line 391
    goto :goto_53

    .line 389
    :catch_52
    move-exception p2

    .line 392
    :goto_53
    throw p1
.end method

.method public static greylist-max-o register()V
    .registers 2

    .line 95
    sget v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VULW:I

    sget-object v1, Landroid/ddm/DdmHandleViewDebug;->sInstance:Landroid/ddm/DdmHandleViewDebug;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 96
    sget v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VURT:I

    sget-object v1, Landroid/ddm/DdmHandleViewDebug;->sInstance:Landroid/ddm/DdmHandleViewDebug;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 97
    sget v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUOP:I

    sget-object v1, Landroid/ddm/DdmHandleViewDebug;->sInstance:Landroid/ddm/DdmHandleViewDebug;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 98
    return-void
.end method

.method private greylist-max-o setLayoutParameter(Landroid/view/View;Landroid/view/View;Ljava/nio/ByteBuffer;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 5

    .line 364
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    .line 365
    invoke-static {p3, p1}, Landroid/ddm/DdmHandleViewDebug;->getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object p1

    .line 366
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p3

    .line 368
    :try_start_c
    invoke-static {p2, p1, p3}, Landroid/view/ViewDebug;->setLayoutParameter(Landroid/view/View;Ljava/lang/String;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_12

    .line 373
    nop

    .line 375
    const/4 p1, 0x0

    return-object p1

    .line 369
    :catch_12
    move-exception p2

    .line 370
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception setting layout parameter: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "DdmViewDebug"

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error accessing field "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 372
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 371
    const/4 p2, -0x3

    invoke-static {p2, p1}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public blacklist test-api handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 8

    .line 110
    iget v0, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    .line 112
    sget v1, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VULW:I

    if-ne v0, v1, :cond_b

    .line 113
    invoke-direct {p0}, Landroid/ddm/DdmHandleViewDebug;->listWindows()Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object p1

    return-object p1

    .line 116
    :cond_b
    invoke-static {p1}, Landroid/ddm/DdmHandleViewDebug;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 119
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleViewDebug;->getRootView(Ljava/nio/ByteBuffer;)Landroid/view/View;

    move-result-object v2

    .line 120
    const/4 v3, -0x2

    if-nez v2, :cond_21

    .line 121
    const-string p1, "Invalid View Root"

    invoke-static {v3, p1}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object p1

    return-object p1

    .line 124
    :cond_21
    sget v4, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VURT:I

    const/4 v5, -0x1

    if-ne v0, v4, :cond_56

    .line 125
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2e

    .line 126
    invoke-direct {p0, v2, p1}, Landroid/ddm/DdmHandleViewDebug;->dumpHierarchy(Landroid/view/View;Ljava/nio/ByteBuffer;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object p1

    return-object p1

    .line 127
    :cond_2e
    const/4 p1, 0x2

    if-ne v1, p1, :cond_36

    .line 128
    invoke-direct {p0, v2}, Landroid/ddm/DdmHandleViewDebug;->captureLayers(Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object p1

    return-object p1

    .line 129
    :cond_36
    const/4 p1, 0x3

    if-ne v1, p1, :cond_3e

    .line 130
    invoke-direct {p0, v2}, Landroid/ddm/DdmHandleViewDebug;->dumpTheme(Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object p1

    return-object p1

    .line 132
    :cond_3e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown view root operation: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object p1

    return-object p1

    .line 136
    :cond_56
    invoke-direct {p0, v2, p1}, Landroid/ddm/DdmHandleViewDebug;->getTargetView(Landroid/view/View;Ljava/nio/ByteBuffer;)Landroid/view/View;

    move-result-object v4

    .line 137
    if-nez v4, :cond_63

    .line 138
    const-string p1, "Invalid target view"

    invoke-static {v3, p1}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object p1

    return-object p1

    .line 141
    :cond_63
    sget v3, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUOP:I

    if-ne v0, v3, :cond_9b

    .line 142
    packed-switch v1, :pswitch_data_b8

    .line 154
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown view operation: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object p1

    return-object p1

    .line 152
    :pswitch_82
    invoke-direct {p0, v2, v4, p1}, Landroid/ddm/DdmHandleViewDebug;->setLayoutParameter(Landroid/view/View;Landroid/view/View;Ljava/nio/ByteBuffer;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object p1

    return-object p1

    .line 150
    :pswitch_87
    invoke-direct {p0, v2, v4, p1}, Landroid/ddm/DdmHandleViewDebug;->invokeViewMethod(Landroid/view/View;Landroid/view/View;Ljava/nio/ByteBuffer;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object p1

    return-object p1

    .line 148
    :pswitch_8c
    invoke-direct {p0, v2, v4}, Landroid/ddm/DdmHandleViewDebug;->profileView(Landroid/view/View;Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object p1

    return-object p1

    .line 146
    :pswitch_91
    invoke-direct {p0, v2, v4}, Landroid/ddm/DdmHandleViewDebug;->dumpDisplayLists(Landroid/view/View;Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object p1

    return-object p1

    .line 144
    :pswitch_96
    invoke-direct {p0, v2, v4}, Landroid/ddm/DdmHandleViewDebug;->captureView(Landroid/view/View;Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object p1

    return-object p1

    .line 157
    :cond_9b
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown packet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/ddm/DdmHandleViewDebug;->name(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_96
        :pswitch_91
        :pswitch_8c
        :pswitch_87
        :pswitch_82
    .end packed-switch
.end method

.method public blacklist test-api onConnected()V
    .registers 1

    .line 102
    return-void
.end method

.method public blacklist test-api onDisconnected()V
    .registers 1

    .line 106
    return-void
.end method
