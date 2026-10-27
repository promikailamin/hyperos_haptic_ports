.class public Lcom/android/internal/util/jobs/FastPrintWriter;
.super Ljava/io/PrintWriter;
.source "FastPrintWriter.java"


# instance fields
.field private final mAutoFlush:Z

.field private final mBufferLen:I

.field private final mBytes:Ljava/nio/ByteBuffer;

.field private mCharset:Ljava/nio/charset/CharsetEncoder;

.field private mIoError:Z

.field private final mOutputStream:Ljava/io/OutputStream;

.field private mPos:I

.field private final mPrinter:Landroid/util/Printer;

.field private final mSeparator:Ljava/lang/String;

.field private final mText:[C

.field private final mWriter:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Landroid/util/Printer;)V
    .registers 3

    const/16 v0, 0x200

    .line 218
    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/jobs/FastPrintWriter;-><init>(Landroid/util/Printer;I)V

    return-void
.end method

.method public constructor <init>(Landroid/util/Printer;I)V
    .registers 6

    .line 235
    new-instance v0, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;-><init>(Lcom/android/internal/util/jobs/FastPrintWriter-IA;)V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    if-eqz p1, :cond_26

    .line 239
    iput p2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBufferLen:I

    .line 240
    new-array p2, p2, [C

    iput-object p2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    .line 241
    iput-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    .line 242
    iput-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    .line 243
    iput-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mWriter:Ljava/io/Writer;

    .line 244
    iput-object p1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    .line 245
    iput-boolean v2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mAutoFlush:Z

    .line 246
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mSeparator:Ljava/lang/String;

    .line 247
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->initDefaultEncoder()V

    return-void

    .line 237
    :cond_26
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "pr is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x2000

    .line 84
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/util/jobs/FastPrintWriter;-><init>(Ljava/io/OutputStream;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .registers 4

    const/16 v0, 0x2000

    .line 102
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/jobs/FastPrintWriter;-><init>(Ljava/io/OutputStream;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZI)V
    .registers 6

    .line 123
    new-instance v0, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;-><init>(Lcom/android/internal/util/jobs/FastPrintWriter-IA;)V

    invoke-direct {p0, v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    if-eqz p1, :cond_29

    .line 127
    iput p3, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBufferLen:I

    .line 128
    new-array v0, p3, [C

    iput-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    .line 129
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    .line 130
    iput-object p1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    .line 131
    iput-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mWriter:Ljava/io/Writer;

    .line 132
    iput-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    .line 133
    iput-boolean p2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mAutoFlush:Z

    .line 134
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mSeparator:Ljava/lang/String;

    .line 135
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->initDefaultEncoder()V

    return-void

    .line 125
    :cond_29
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "out is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x2000

    .line 153
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/util/jobs/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .registers 4

    const/16 v0, 0x2000

    .line 171
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/jobs/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ZI)V
    .registers 6

    .line 192
    new-instance v0, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;-><init>(Lcom/android/internal/util/jobs/FastPrintWriter-IA;)V

    invoke-direct {p0, v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    if-eqz p1, :cond_25

    .line 196
    iput p3, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBufferLen:I

    .line 197
    new-array p3, p3, [C

    iput-object p3, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    .line 198
    iput-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    .line 199
    iput-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    .line 200
    iput-object p1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mWriter:Ljava/io/Writer;

    .line 201
    iput-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    .line 202
    iput-boolean p2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mAutoFlush:Z

    .line 203
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mSeparator:Ljava/lang/String;

    .line 204
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->initDefaultEncoder()V

    return-void

    .line 194
    :cond_25
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "wr is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private appendLocked(C)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    iget v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    .line 302
    iget v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBufferLen:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_d

    .line 303
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flushLocked()V

    .line 304
    iget v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    .line 306
    :cond_d
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 307
    iput v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    return-void
.end method

.method private appendLocked(Ljava/lang/String;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    iget v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBufferLen:I

    if-le p3, v0, :cond_15

    add-int/2addr p3, p2

    :goto_5
    if-ge p2, p3, :cond_14

    add-int v1, p2, v0

    if-ge v1, p3, :cond_d

    move v2, v0

    goto :goto_f

    :cond_d
    sub-int v2, p3, p2

    .line 316
    :goto_f
    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V

    move p2, v1

    goto :goto_5

    :cond_14
    return-void

    .line 321
    :cond_15
    iget v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    add-int v2, v1, p3

    if-le v2, v0, :cond_20

    .line 323
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flushLocked()V

    .line 324
    iget v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    :cond_20
    add-int v0, p2, p3

    .line 326
    iget-object v2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    invoke-virtual {p1, p2, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v1, p3

    .line 327
    iput v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    return-void
.end method

.method private appendLocked([CII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    iget v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBufferLen:I

    if-le p3, v0, :cond_15

    add-int/2addr p3, p2

    :goto_5
    if-ge p2, p3, :cond_14

    add-int v1, p2, v0

    if-ge v1, p3, :cond_d

    move v2, v0

    goto :goto_f

    :cond_d
    sub-int v2, p3, p2

    .line 336
    :goto_f
    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked([CII)V

    move p2, v1

    goto :goto_5

    :cond_14
    return-void

    .line 341
    :cond_15
    iget v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    add-int v2, v1, p3

    if-le v2, v0, :cond_20

    .line 343
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flushLocked()V

    .line 344
    iget v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    .line 346
    :cond_20
    iget-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, p3

    .line 347
    iput v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    return-void
.end method

.method private flushBytesLocked()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    iget-boolean v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mIoError:Z

    if-nez v0, :cond_22

    .line 353
    iget-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_22

    .line 354
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 355
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 356
    iget-object p0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_22
    return-void
.end method

.method private flushLocked()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    iget v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    if-lez v0, :cond_a1

    .line 364
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4b

    .line 365
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    invoke-static {v1, v3, v0}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v4, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0, v4, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 367
    :goto_18
    iget-boolean v4, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mIoError:Z

    if-nez v4, :cond_3e

    .line 368
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v4

    if-nez v4, :cond_34

    .line 370
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 371
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flushBytesLocked()V

    .line 372
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v4, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0, v4, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    goto :goto_18

    .line 369
    :cond_34
    new-instance p0, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 377
    :cond_3e
    iget-boolean v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mIoError:Z

    if-nez v0, :cond_9f

    .line 378
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flushBytesLocked()V

    .line 379
    iget-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_9f

    .line 381
    :cond_4b
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mWriter:Ljava/io/Writer;

    if-eqz v1, :cond_5e

    .line 382
    iget-boolean v2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mIoError:Z

    if-nez v2, :cond_9f

    .line 383
    iget-object v2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/Writer;->write([CII)V

    .line 384
    iget-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    goto :goto_9f

    .line 388
    :cond_5e
    iget-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mSeparator:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 389
    iget v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    if-ge v0, v1, :cond_69

    goto :goto_6a

    :cond_69
    move v0, v1

    :goto_6a
    move v1, v3

    :goto_6b
    if-ge v1, v0, :cond_86

    .line 390
    iget-object v4, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    iget v5, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    sub-int/2addr v5, v2

    sub-int/2addr v5, v1

    aget-char v4, v4, v5

    iget-object v5, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mSeparator:Ljava/lang/String;

    .line 391
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v2

    sub-int/2addr v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_86

    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    .line 394
    :cond_86
    iget v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    if-lt v1, v0, :cond_92

    .line 395
    iget-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    const-string v1, ""

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_9f

    .line 397
    :cond_92
    iget-object v2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    sub-int/2addr v0, v1

    invoke-direct {v4, v5, v3, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 400
    :cond_9f
    :goto_9f
    iput v3, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    :cond_a1
    return-void
.end method

.method private final initDefaultEncoder()V
    .registers 3

    .line 295
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    .line 296
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 297
    iget-object p0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    return-void
.end method

.method private final initEncoder(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 252
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_15

    .line 256
    sget-object p1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 257
    iget-object p0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    return-void

    .line 254
    :catch_15
    new-instance p0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {p0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;
    .registers 4

    if-nez p1, :cond_5

    .line 699
    const-string/jumbo p1, "null"

    .line 701
    :cond_5
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 702
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/jobs/FastPrintWriter;->write(Ljava/lang/String;II)V

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/jobs/FastPrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/jobs/FastPrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    move-result-object p0

    return-object p0
.end method

.method public checkError()Z
    .registers 2

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flush()V

    .line 270
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_6
    iget-boolean p0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mIoError:Z

    monitor-exit v0

    return p0

    :catchall_a
    move-exception p0

    .line 272
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public clearError()V
    .registers 3

    .line 280
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 281
    :try_start_4
    iput-boolean v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mIoError:Z

    .line 282
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public close()V
    .registers 5

    .line 430
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 432
    :try_start_3
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flushLocked()V

    .line 433
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_12

    .line 434
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_24

    :catchall_e
    move-exception p0

    goto :goto_26

    :catch_10
    move-exception v1

    goto :goto_1a

    .line 435
    :cond_12
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mWriter:Ljava/io/Writer;

    if-eqz v1, :cond_24

    .line 436
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_19} :catch_10
    .catchall {:try_start_3 .. :try_end_19} :catchall_e

    goto :goto_24

    .line 439
    :goto_1a
    :try_start_1a
    const-string v2, "FastPrintWriter"

    const-string v3, "Write failure"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 442
    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_e

    throw p0
.end method

.method public flush()V
    .registers 5

    .line 411
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 413
    :try_start_3
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flushLocked()V

    .line 414
    iget-boolean v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mIoError:Z

    if-nez v1, :cond_28

    .line 415
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_16

    .line 416
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    goto :goto_28

    :catchall_12
    move-exception p0

    goto :goto_2a

    :catch_14
    move-exception v1

    goto :goto_1e

    .line 417
    :cond_16
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mWriter:Ljava/io/Writer;

    if-eqz v1, :cond_28

    .line 418
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1d} :catch_14
    .catchall {:try_start_3 .. :try_end_1d} :catchall_12

    goto :goto_28

    .line 422
    :goto_1e
    :try_start_1e
    const-string v2, "FastPrintWriter"

    const-string v3, "Write failure"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 423
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 425
    :cond_28
    :goto_28
    monitor-exit v0

    return-void

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_12

    throw p0
.end method

.method public print(C)V
    .registers 5

    .line 473
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 475
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked(C)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_9
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    goto :goto_14

    :catchall_7
    move-exception p0

    goto :goto_16

    :catch_9
    move-exception p1

    .line 477
    :try_start_a
    const-string v1, "FastPrintWriter"

    const-string v2, "Write failure"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 480
    :goto_14
    monitor-exit v0

    return-void

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_7

    throw p0
.end method

.method public print(I)V
    .registers 2

    if-nez p1, :cond_8

    .line 512
    const-string p1, "0"

    invoke-virtual {p0, p1}, Lcom/android/internal/util/jobs/FastPrintWriter;->print(Ljava/lang/String;)V

    return-void

    .line 514
    :cond_8
    invoke-super {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    return-void
.end method

.method public print(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_c

    .line 521
    const-string p1, "0"

    invoke-virtual {p0, p1}, Lcom/android/internal/util/jobs/FastPrintWriter;->print(Ljava/lang/String;)V

    return-void

    .line 523
    :cond_c
    invoke-super {p0, p1, p2}, Ljava/io/PrintWriter;->print(J)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_5

    .line 496
    const-string/jumbo p1, "null"

    .line 498
    :cond_5
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 500
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_10} :catch_13
    .catchall {:try_start_8 .. :try_end_10} :catchall_11

    goto :goto_1e

    :catchall_11
    move-exception p0

    goto :goto_20

    :catch_13
    move-exception p1

    .line 502
    :try_start_14
    const-string v1, "FastPrintWriter"

    const-string v2, "Write failure"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 503
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 505
    :goto_1e
    monitor-exit v0

    return-void

    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_11

    throw p0
.end method

.method public print([C)V
    .registers 5

    .line 454
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 456
    :try_start_3
    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked([CII)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    goto :goto_16

    :catchall_9
    move-exception p0

    goto :goto_18

    :catch_b
    move-exception p1

    .line 458
    :try_start_c
    const-string v1, "FastPrintWriter"

    const-string v2, "Write failure"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 461
    :goto_16
    monitor-exit v0

    return-void

    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_9

    throw p0
.end method

.method public println()V
    .registers 5

    .line 531
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 533
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mSeparator:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V

    .line 534
    iget-boolean v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mAutoFlush:Z

    if-eqz v1, :cond_22

    .line 535
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flushLocked()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_14} :catch_17
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    goto :goto_22

    :catchall_15
    move-exception p0

    goto :goto_24

    :catch_17
    move-exception v1

    .line 538
    :try_start_18
    const-string v2, "FastPrintWriter"

    const-string v3, "Write failure"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 539
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 541
    :cond_22
    :goto_22
    monitor-exit v0

    return-void

    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_15

    throw p0
.end method

.method public println(C)V
    .registers 2

    .line 576
    invoke-virtual {p0, p1}, Lcom/android/internal/util/jobs/FastPrintWriter;->print(C)V

    .line 577
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->println()V

    return-void
.end method

.method public println(I)V
    .registers 2

    if-nez p1, :cond_8

    .line 547
    const-string p1, "0"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 549
    :cond_8
    invoke-super {p0, p1}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public println(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_c

    .line 556
    const-string p1, "0"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 558
    :cond_c
    invoke-super {p0, p1, p2}, Ljava/io/PrintWriter;->println(J)V

    return-void
.end method

.method public println([C)V
    .registers 2

    .line 567
    invoke-virtual {p0, p1}, Lcom/android/internal/util/jobs/FastPrintWriter;->print([C)V

    .line 568
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->println()V

    return-void
.end method

.method public setError()V
    .registers 3

    .line 289
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 290
    :try_start_4
    iput-boolean v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mIoError:Z

    .line 291
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public write(I)V
    .registers 5

    .line 621
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    int-to-char p1, p1

    .line 623
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked(C)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_a
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    goto :goto_15

    :catchall_8
    move-exception p0

    goto :goto_17

    :catch_a
    move-exception p1

    .line 625
    :try_start_b
    const-string v1, "FastPrintWriter"

    const-string v2, "Write failure"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 626
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 628
    :goto_15
    monitor-exit v0

    return-void

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_8

    throw p0
.end method

.method public write(Ljava/lang/String;)V
    .registers 5

    .line 639
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 641
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_b} :catch_e
    .catchall {:try_start_3 .. :try_end_b} :catchall_c

    goto :goto_19

    :catchall_c
    move-exception p0

    goto :goto_1b

    :catch_e
    move-exception p1

    .line 643
    :try_start_f
    const-string v1, "FastPrintWriter"

    const-string v2, "Write failure"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 644
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 646
    :goto_19
    monitor-exit v0

    return-void

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_c

    throw p0
.end method

.method public write(Ljava/lang/String;II)V
    .registers 5

    .line 665
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 667
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_9
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    goto :goto_14

    :catchall_7
    move-exception p0

    goto :goto_16

    :catch_9
    move-exception p1

    .line 669
    :try_start_a
    const-string p2, "FastPrintWriter"

    const-string p3, "Write failure"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 672
    :goto_14
    monitor-exit v0

    return-void

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_7

    throw p0
.end method

.method public write([CII)V
    .registers 5

    .line 599
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 601
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked([CII)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_9
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    goto :goto_14

    :catchall_7
    move-exception p0

    goto :goto_16

    :catch_9
    move-exception p1

    .line 603
    :try_start_a
    const-string p2, "FastPrintWriter"

    const-string p3, "Write failure"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 604
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 606
    :goto_14
    monitor-exit v0

    return-void

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_7

    throw p0
.end method
