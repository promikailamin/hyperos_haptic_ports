.class public final Landroid/content/res/XmlBlock$Parser;
.super Ljava/lang/Object;
.source "XmlBlock.java"

# interfaces
.implements Landroid/content/res/XmlResourceParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/XmlBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Parser"
.end annotation


# instance fields
.field private final greylist mBlock:Landroid/content/res/XmlBlock;

.field private greylist-max-o mDecNextDepth:Z

.field private greylist-max-o mDepth:I

.field private greylist-max-o mEventType:I

.field greylist-max-r mParseState:J

.field private greylist-max-o mStarted:Z

.field blacklist mValidator:Landroid/content/res/Validator;

.field final synthetic blacklist this$0:Landroid/content/res/XmlBlock;


# direct methods
.method constructor blacklist <init>(Landroid/content/res/XmlBlock;JLandroid/content/res/XmlBlock;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 132
    iput-object p1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    .line 660
    iput-boolean p1, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    .line 661
    iput p1, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    .line 662
    iput p1, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    .line 133
    iput-wide p2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    .line 134
    iput-object p4, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    .line 135
    invoke-static {p4}, Landroid/content/res/XmlBlock;->-$$Nest$fgetmOpenCount(Landroid/content/res/XmlBlock;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p4, p1}, Landroid/content/res/XmlBlock;->-$$Nest$fputmOpenCount(Landroid/content/res/XmlBlock;I)V

    .line 136
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/res/XmlBlock;JLandroid/content/res/XmlBlock;Landroid/content/res/Validator;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/XmlBlock$Parser;-><init>(Landroid/content/res/XmlBlock;JLandroid/content/res/XmlBlock;)V

    .line 140
    iput-object p5, p0, Landroid/content/res/XmlBlock$Parser;->mValidator:Landroid/content/res/Validator;

    .line 141
    return-void
.end method

.method private blacklist getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3

    .line 626
    if-eqz p1, :cond_7

    .line 633
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 630
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Retrieving a string from the StringPool of an XmlBlock should never fail"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 6

    .line 637
    iget-object v0, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    monitor-enter v0

    .line 638
    :try_start_3
    iget-wide v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_17

    .line 639
    iget-wide v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v1, v2}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeDestroyParseState(J)V

    .line 640
    iput-wide v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    .line 641
    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    invoke-static {v1}, Landroid/content/res/XmlBlock;->-$$Nest$mdecOpenCountLocked(Landroid/content/res/XmlBlock;)V

    .line 643
    :cond_17
    monitor-exit v0

    .line 644
    return-void

    .line 643
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public whitelist test-api defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 179
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p2, "defineEntityReplacementText() not supported"

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected whitelist test-api finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 647
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->close()V

    .line 648
    return-void
.end method

.method public whitelist getAttributeBooleanValue(IZ)Z
    .registers 8

    .line 516
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeDataType(JI)I

    move-result v0

    .line 517
    const-string v1, "Null document"

    const v2, -0x7ffffff8

    if-eq v0, v2, :cond_2a

    .line 522
    const/16 v3, 0x10

    if-lt v0, v3, :cond_29

    const/16 v3, 0x1f

    if-gt v0, v3, :cond_29

    .line 523
    iget-wide v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v3, v4, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeData(JI)I

    move-result p1

    .line 524
    if-eq p1, v2, :cond_23

    .line 527
    if-eqz p1, :cond_21

    const/4 p1, 0x1

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    :goto_22
    return p1

    .line 525
    :cond_23
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 529
    :cond_29
    return p2

    .line 518
    :cond_2a
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6

    .line 458
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 459
    if-ltz p1, :cond_d

    .line 460
    invoke-virtual {p0, p1, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeBooleanValue(IZ)Z

    move-result p1

    return p1

    .line 462
    :cond_d
    return p3
.end method

.method public whitelist test-api getAttributeCount()I
    .registers 3

    .line 277
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 278
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeCount(J)I

    move-result v0

    .line 279
    const v1, -0x7ffffff8

    if-eq v0, v1, :cond_11

    .line 282
    return v0

    .line 280
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null document"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_19
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getAttributeFloatValue(IF)F
    .registers 7

    .line 580
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeDataType(JI)I

    move-result p2

    .line 581
    const-string v0, "Null document"

    const v1, -0x7ffffff8

    if-eq p2, v1, :cond_2c

    .line 586
    const/4 v2, 0x4

    if-ne p2, v2, :cond_23

    .line 587
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeData(JI)I

    move-result p1

    .line 588
    if-eq p1, v1, :cond_1d

    .line 591
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1

    .line 589
    :cond_1d
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 593
    :cond_23
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "not a float!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 582
    :cond_2c
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F
    .registers 6

    .line 491
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 492
    if-ltz p1, :cond_d

    .line 493
    invoke-virtual {p0, p1, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeFloatValue(IF)F

    move-result p1

    return p1

    .line 495
    :cond_d
    return p3
.end method

.method public whitelist getAttributeIntValue(II)I
    .registers 8

    .line 548
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeDataType(JI)I

    move-result v0

    .line 549
    const-string v1, "Null document"

    const v2, -0x7ffffff8

    if-eq v0, v2, :cond_25

    .line 554
    const/16 v3, 0x10

    if-lt v0, v3, :cond_24

    const/16 v3, 0x1f

    if-gt v0, v3, :cond_24

    .line 555
    iget-wide v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v3, v4, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeData(JI)I

    move-result p1

    .line 556
    if-eq p1, v2, :cond_1e

    .line 559
    return p1

    .line 557
    :cond_1e
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 561
    :cond_24
    return p2

    .line 550
    :cond_25
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6

    .line 474
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 475
    if-ltz p1, :cond_d

    .line 476
    invoke-virtual {p0, p1, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeIntValue(II)I

    move-result p1

    return p1

    .line 478
    :cond_d
    return p3
.end method

.method public whitelist getAttributeListValue(I[Ljava/lang/String;I)I
    .registers 9

    .line 500
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeDataType(JI)I

    move-result v0

    .line 501
    const-string v1, "Null document"

    const v2, -0x7ffffff8

    if-eq v0, v2, :cond_2c

    .line 504
    iget-wide v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v3, v4, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeData(JI)I

    move-result p1

    .line 505
    if-eq p1, v2, :cond_26

    .line 508
    const/4 v1, 0x3

    if-ne v0, v1, :cond_25

    .line 509
    iget-object v0, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v0, v0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    .line 510
    invoke-virtual {v0, p1}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 509
    invoke-static {p1, p2, p3}, Lcom/android/internal/util/XmlUtils;->convertValueToList(Ljava/lang/CharSequence;[Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 512
    :cond_25
    return p1

    .line 506
    :cond_26
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 502
    :cond_2c
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getAttributeListValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .registers 7

    .line 450
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 451
    if-ltz p1, :cond_d

    .line 452
    invoke-virtual {p0, p1, p3, p4}, Landroid/content/res/XmlBlock$Parser;->getAttributeListValue(I[Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 454
    :cond_d
    return p4
.end method

.method public whitelist test-api getAttributeName(I)Ljava/lang/String;
    .registers 4

    .line 261
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeName(JI)I

    move-result v0

    .line 263
    const v1, -0x7ffffff8

    if-eq v0, v1, :cond_24

    .line 266
    if-ltz v0, :cond_1a

    iget-object p1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object p1, p1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {p1, v0}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 267
    :cond_1a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_24
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null document"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getAttributeNameResource(I)I
    .registers 4

    .line 441
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeResource(JI)I

    move-result p1

    .line 442
    const v0, -0x7ffffff8

    if-eq p1, v0, :cond_c

    .line 445
    return p1

    .line 443
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null document"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api getAttributeNamespace(I)Ljava/lang/String;
    .registers 4

    .line 250
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeNamespace(JI)I

    move-result v0

    .line 251
    const v1, -0x7ffffff8

    if-eq v0, v1, :cond_2a

    .line 255
    if-ltz v0, :cond_1a

    iget-object p1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object p1, p1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {p1, v0}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 256
    :cond_1a
    const/4 v1, -0x1

    if-ne v0, v1, :cond_20

    const-string p1, ""

    return-object p1

    .line 257
    :cond_20
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_2a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null document"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api getAttributePrefix(I)Ljava/lang/String;
    .registers 3

    .line 270
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "getAttributePrefix not supported"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getAttributeResourceValue(II)I
    .registers 8

    .line 532
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeDataType(JI)I

    move-result v0

    .line 533
    const-string v1, "Null document"

    const v2, -0x7ffffff8

    if-eq v0, v2, :cond_20

    .line 538
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1f

    .line 539
    iget-wide v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v3, v4, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeData(JI)I

    move-result p1

    .line 540
    if-eq p1, v2, :cond_19

    .line 543
    return p1

    .line 541
    :cond_19
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 545
    :cond_1f
    return p2

    .line 534
    :cond_20
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6

    .line 466
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 467
    if-ltz p1, :cond_d

    .line 468
    invoke-virtual {p0, p1, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeResourceValue(II)I

    move-result p1

    return p1

    .line 470
    :cond_d
    return p3
.end method

.method public whitelist test-api getAttributeType(I)Ljava/lang/String;
    .registers 2

    .line 312
    const-string p1, "CDATA"

    return-object p1
.end method

.method public whitelist getAttributeUnsignedIntValue(II)I
    .registers 8

    .line 564
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeDataType(JI)I

    move-result v0

    .line 565
    const-string v1, "Null document"

    const v2, -0x7ffffff8

    if-eq v0, v2, :cond_25

    .line 570
    const/16 v3, 0x10

    if-lt v0, v3, :cond_24

    const/16 v3, 0x1f

    if-gt v0, v3, :cond_24

    .line 571
    iget-wide v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v3, v4, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeData(JI)I

    move-result p1

    .line 572
    if-eq p1, v2, :cond_1e

    .line 575
    return p1

    .line 573
    :cond_1e
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 577
    :cond_24
    return p2

    .line 566
    :cond_25
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6

    .line 483
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 484
    if-ltz p1, :cond_d

    .line 485
    invoke-virtual {p0, p1, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeUnsignedIntValue(II)I

    move-result p1

    return p1

    .line 487
    :cond_d
    return p3
.end method

.method public whitelist test-api getAttributeValue(I)Ljava/lang/String;
    .registers 7

    .line 289
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeStringValue(JI)I

    move-result v0

    .line 290
    const-string v1, "Null document"

    const v2, -0x7ffffff8

    if-eq v0, v2, :cond_49

    .line 294
    if-ltz v0, :cond_1c

    iget-object p1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object p1, p1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {p1, v0}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 297
    :cond_1c
    iget-wide v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v3, v4, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeDataType(JI)I

    move-result v0

    .line 298
    if-eq v0, v2, :cond_43

    .line 301
    if-eqz v0, :cond_39

    .line 305
    iget-wide v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v3, v4, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeData(JI)I

    move-result p1

    .line 306
    if-eq p1, v2, :cond_33

    .line 309
    invoke-static {v0, p1}, Landroid/util/TypedValue;->coerceToString(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 307
    :cond_33
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 302
    :cond_39
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_43
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 291
    :cond_49
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 321
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 322
    if-ltz p1, :cond_16

    .line 329
    invoke-virtual {p0, p1}, Landroid/content/res/XmlBlock$Parser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    .line 330
    iget-object v0, p0, Landroid/content/res/XmlBlock$Parser;->mValidator:Landroid/content/res/Validator;

    if-eqz v0, :cond_15

    .line 331
    iget-object v0, p0, Landroid/content/res/XmlBlock$Parser;->mValidator:Landroid/content/res/Validator;

    invoke-virtual {v0, p0, p2, p1}, Landroid/content/res/Validator;->validateStrAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_15
    return-object p1

    .line 335
    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getClassAttribute()Ljava/lang/String;
    .registers 3

    .line 605
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetClassAttribute(J)I

    move-result v0

    .line 606
    const v1, -0x7ffffff8

    if-eq v0, v1, :cond_1c

    .line 609
    if-ltz v0, :cond_1a

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return-object v0

    .line 607
    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null document"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getColumnNumber()I
    .registers 2

    .line 200
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api getDepth()I
    .registers 2

    .line 203
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    return v0
.end method

.method public whitelist test-api getEventType()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 218
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    return v0
.end method

.method public whitelist test-api getFeature(Ljava/lang/String;)Z
    .registers 4

    .line 158
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 159
    return v1

    .line 161
    :cond_a
    const-string v0, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 162
    return v1

    .line 164
    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist getIdAttribute()Ljava/lang/String;
    .registers 3

    .line 597
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetIdAttribute(J)I

    move-result v0

    .line 598
    const v1, -0x7ffffff8

    if-eq v0, v1, :cond_1c

    .line 601
    if-ltz v0, :cond_1a

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return-object v0

    .line 599
    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null document"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getIdAttributeResourceValue(I)I
    .registers 4

    .line 614
    const/4 v0, 0x0

    const-string v1, "id"

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/res/XmlBlock$Parser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public whitelist test-api getInputEncoding()Ljava/lang/String;
    .registers 2

    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getLineNumber()I
    .registers 3

    .line 211
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetLineNumber(J)I

    move-result v0

    .line 212
    const v1, -0x7ffffff8

    if-eq v0, v1, :cond_c

    .line 215
    return v0

    .line 213
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null document"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 3

    .line 245
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->nativeGetName(J)I

    move-result v0

    .line 246
    if-ltz v0, :cond_15

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return-object v0
.end method

.method public whitelist test-api getNamespace()Ljava/lang/String;
    .registers 3

    .line 240
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetNamespace(J)I

    move-result v0

    .line 241
    if-ltz v0, :cond_15

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_15
    const-string v0, ""

    :goto_17
    return-object v0
.end method

.method public whitelist test-api getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 188
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "getNamespace() not supported"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api getNamespaceCount(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 191
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "getNamespaceCount() not supported"

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api getNamespacePrefix(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 182
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "getNamespacePrefix() not supported"

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api getNamespaceUri(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 197
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "getNamespaceUri() not supported"

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final greylist-max-o getPooledString(I)Ljava/lang/CharSequence;
    .registers 3

    .line 652
    iget-object v0, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v0, v0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v0, p1}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api getPositionDescription()Ljava/lang/String;
    .registers 3

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binary XML file line #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPrefix()Ljava/lang/String;
    .registers 3

    .line 225
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getPrefix not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 170
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist getSourceResId()I
    .registers 3

    .line 145
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetSourceResId(J)I

    move-result v0

    return v0
.end method

.method public whitelist getStyleAttribute()I
    .registers 3

    .line 618
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetStyleAttribute(J)I

    move-result v0

    .line 619
    const v1, -0x7ffffff8

    if-eq v0, v1, :cond_c

    .line 622
    return v0

    .line 620
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null document"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getText()Ljava/lang/String;
    .registers 3

    .line 207
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetText(J)I

    move-result v0

    .line 208
    if-ltz v0, :cond_15

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return-object v0
.end method

.method public whitelist test-api getTextCharacters([I)[C
    .registers 6

    .line 228
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 229
    nop

    .line 230
    if-eqz v0, :cond_1f

    .line 231
    const/4 v1, 0x0

    aput v1, p1, v1

    .line 232
    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    aput v3, p1, v2

    .line 233
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    new-array p1, p1, [C

    .line 234
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1, v1}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_20

    .line 230
    :cond_1f
    const/4 p1, 0x0

    .line 236
    :goto_20
    return-object p1
.end method

.method public whitelist test-api isAttributeDefault(I)Z
    .registers 2

    .line 315
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist test-api isEmptyElementTag()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isWhitespace()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api next()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    iget-boolean v0, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_9

    .line 339
    iput-boolean v2, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    .line 340
    return v1

    .line 342
    :cond_9
    iget-wide v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_12

    .line 343
    return v2

    .line 345
    :cond_12
    iget-wide v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v3, v4}, Landroid/content/res/XmlBlock;->nativeNext(J)I

    move-result v0

    .line 346
    invoke-static {}, Landroid/content/res/XmlBlock;->-$$Nest$sfgetERROR_BAD_DOCUMENT()I

    move-result v3

    const-string v4, "Corrupt XML binary file"

    if-eq v0, v3, :cond_ac

    .line 350
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->layoutReadwriteFlags()Z

    move-result v3

    if-eqz v3, :cond_83

    iget-object v3, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    invoke-static {v3}, Landroid/content/res/XmlBlock;->-$$Nest$fgetmUsesFeatureFlags(Landroid/content/res/XmlBlock;)Z

    move-result v3

    if-eqz v3, :cond_83

    const/4 v3, 0x2

    if-ne v0, v3, :cond_83

    .line 351
    iget-wide v5, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v5, v6}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetFlagInfo(J)Landroid/content/res/XmlBlock$FlagInfo;

    move-result-object v5

    .line 352
    if-eqz v5, :cond_83

    invoke-static {v5}, Landroid/content/res/XmlBlock$FlagInfo;->-$$Nest$fgetmNameIndex(Landroid/content/res/XmlBlock$FlagInfo;)I

    move-result v6

    if-lez v6, :cond_83

    .line 353
    invoke-static {}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getAconfigFlags()Lcom/android/internal/pm/pkg/component/AconfigFlags;

    move-result-object v6

    .line 354
    iget-object v7, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v7, v7, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-static {v5}, Landroid/content/res/XmlBlock$FlagInfo;->-$$Nest$fgetmNameIndex(Landroid/content/res/XmlBlock$FlagInfo;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 355
    const/4 v8, 0x0

    invoke-static {v5}, Landroid/content/res/XmlBlock$FlagInfo;->-$$Nest$fgetmNegated(Landroid/content/res/XmlBlock$FlagInfo;)Z

    move-result v5

    invoke-virtual {v6, v8, v7, v5}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skip(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 356
    nop

    .line 357
    :goto_5f
    if-lez v2, :cond_7e

    .line 358
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->nativeNext(J)I

    move-result v0

    .line 359
    invoke-static {}, Landroid/content/res/XmlBlock;->-$$Nest$sfgetERROR_BAD_DOCUMENT()I

    move-result v1

    if-eq v0, v1, :cond_78

    .line 361
    if-ne v0, v3, :cond_72

    .line 362
    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    .line 363
    :cond_72
    const/4 v1, 0x3

    if-ne v0, v1, :cond_77

    .line 364
    add-int/lit8 v2, v2, -0x1

    .line 366
    :cond_77
    :goto_77
    goto :goto_5f

    .line 360
    :cond_78
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_7e
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    return v0

    .line 371
    :cond_83
    iget-boolean v3, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    if-eqz v3, :cond_8e

    .line 372
    iget v3, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    sub-int/2addr v3, v2

    iput v3, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    .line 373
    iput-boolean v1, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    .line 375
    :cond_8e
    packed-switch v0, :pswitch_data_b2

    goto :goto_9b

    .line 380
    :pswitch_92
    iput-boolean v2, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    goto :goto_9b

    .line 377
    :pswitch_95
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    .line 378
    nop

    .line 383
    :goto_9b
    iput v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    .line 384
    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->mValidator:Landroid/content/res/Validator;

    if-eqz v1, :cond_a6

    .line 385
    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->mValidator:Landroid/content/res/Validator;

    invoke-virtual {v1, p0}, Landroid/content/res/Validator;->validate(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 387
    :cond_a6
    if-ne v0, v2, :cond_ab

    .line 392
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->close()V

    .line 394
    :cond_ab
    return v0

    .line 347
    :cond_ac
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_b2
    .packed-switch 0x2
        :pswitch_95
        :pswitch_92
    .end packed-switch
.end method

.method public whitelist test-api nextTag()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    .line 429
    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->isWhitespace()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 430
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    .line 432
    :cond_11
    const/4 v1, 0x2

    if-eq v0, v1, :cond_36

    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    goto :goto_36

    .line 433
    :cond_18
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": expected start or end tag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 437
    :cond_36
    :goto_36
    return v0
.end method

.method public whitelist test-api nextText()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5a

    .line 409
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    .line 410
    const/4 v1, 0x4

    const/4 v3, 0x3

    if-ne v0, v1, :cond_38

    .line 411
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 412
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v1

    .line 413
    if-ne v1, v3, :cond_1b

    .line 418
    return-object v0

    .line 414
    :cond_1b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": event TEXT it must be immediately followed by END_TAG"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 419
    :cond_38
    if-ne v0, v3, :cond_3d

    .line 420
    const-string v0, ""

    return-object v0

    .line 422
    :cond_3d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": parser must be on START_TAG or TEXT to read text"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 405
    :cond_5a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": parser must be on START_TAG to read next text"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist test-api nextToken()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    return v0
.end method

.method public whitelist test-api require(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getEventType()I

    move-result v0

    if-ne p1, v0, :cond_1f

    if-eqz p2, :cond_12

    .line 399
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1f

    :cond_12
    if-eqz p3, :cond_1e

    .line 400
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 402
    :cond_1e
    return-void

    .line 401
    :cond_1f
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "expected "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    sget-object v0, Landroid/content/res/XmlBlock$Parser;->TYPES:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public whitelist test-api setFeature(Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 149
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p2, :cond_b

    .line 150
    return-void

    .line 152
    :cond_b
    const-string v0, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz p2, :cond_16

    .line 153
    return-void

    .line 155
    :cond_16
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported feature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public whitelist test-api setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 176
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo p2, "setInput() not supported"

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api setInput(Ljava/io/Reader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 173
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v0, "setInput() not supported"

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 167
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo p2, "setProperty() not supported"

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
