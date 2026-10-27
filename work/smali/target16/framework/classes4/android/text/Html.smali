.class public Landroid/text/Html;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Html$ImageGetter;,
        Landroid/text/Html$TagHandler;,
        Landroid/text/Html$HtmlParser;
    }
.end annotation


# static fields
.field public static final whitelist FROM_HTML_MODE_COMPACT:I = 0x3f

.field public static final whitelist FROM_HTML_MODE_LEGACY:I = 0x0

.field public static final whitelist FROM_HTML_OPTION_USE_CSS_COLORS:I = 0x100

.field public static final whitelist FROM_HTML_SEPARATOR_LINE_BREAK_BLOCKQUOTE:I = 0x20

.field public static final whitelist FROM_HTML_SEPARATOR_LINE_BREAK_DIV:I = 0x10

.field public static final whitelist FROM_HTML_SEPARATOR_LINE_BREAK_HEADING:I = 0x2

.field public static final whitelist FROM_HTML_SEPARATOR_LINE_BREAK_LIST:I = 0x8

.field public static final whitelist FROM_HTML_SEPARATOR_LINE_BREAK_LIST_ITEM:I = 0x4

.field public static final whitelist FROM_HTML_SEPARATOR_LINE_BREAK_PARAGRAPH:I = 0x1

.field private static final greylist-max-o TO_HTML_PARAGRAPH_FLAG:I = 0x1

.field public static final whitelist TO_HTML_PARAGRAPH_LINES_CONSECUTIVE:I = 0x0

.field public static final whitelist TO_HTML_PARAGRAPH_LINES_INDIVIDUAL:I = 0x1


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o encodeTextAlignmentByDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V
    .registers 13

    .line 293
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v0

    .line 296
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_96

    .line 297
    const-class v3, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v2, v0, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    .line 298
    const-class v4, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v2, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ParagraphStyle;

    .line 299
    nop

    .line 300
    nop

    .line 302
    const-string v5, " "

    move v6, v1

    move v7, v6

    :goto_1c
    array-length v8, v4

    if-ge v6, v8, :cond_78

    .line 303
    aget-object v8, v4, v6

    instance-of v8, v8, Landroid/text/style/AlignmentSpan;

    if-eqz v8, :cond_75

    .line 304
    aget-object v7, v4, v6

    check-cast v7, Landroid/text/style/AlignmentSpan;

    .line 305
    invoke-interface {v7}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v7

    .line 306
    nop

    .line 307
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/4 v9, 0x1

    if-ne v7, v8, :cond_48

    .line 308
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "align=\"center\" "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v7, v9

    goto :goto_75

    .line 309
    :cond_48
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v7, v8, :cond_61

    .line 310
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "align=\"right\" "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v7, v9

    goto :goto_75

    .line 312
    :cond_61
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "align=\"left\" "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v7, v9

    .line 302
    :cond_75
    :goto_75
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 316
    :cond_78
    if-eqz v7, :cond_89

    .line 317
    const-string v4, "<div "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_89
    invoke-static {p0, p1, v2, v3, p2}, Landroid/text/Html;->withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V

    .line 322
    if-eqz v7, :cond_93

    .line 323
    const-string v2, "</div>"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_93
    move v2, v3

    goto/16 :goto_6

    .line 326
    :cond_96
    return-void
.end method

.method public static whitelist escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v0, p0, v1, v2}, Landroid/text/Html;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    .line 280
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 190
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;
    .registers 3

    .line 201
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .registers 10

    .line 234
    new-instance v4, Lorg/ccil/cowan/tagsoup/Parser;

    invoke-direct {v4}, Lorg/ccil/cowan/tagsoup/Parser;-><init>()V

    .line 236
    :try_start_5
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    invoke-static {}, Landroid/text/Html$HtmlParser;->-$$Nest$sfgetschema()Lorg/ccil/cowan/tagsoup/HTMLSchema;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/ccil/cowan/tagsoup/Parser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_5 .. :try_end_e} :catch_25
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_5 .. :try_end_e} :catch_1d

    .line 243
    nop

    .line 245
    new-instance v0, Landroid/text/HtmlToSpannedConverter;

    move-object v1, p0

    move v5, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/HtmlToSpannedConverter;-><init>(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;Lorg/ccil/cowan/tagsoup/Parser;I)V

    .line 247
    invoke-virtual {v0}, Landroid/text/HtmlToSpannedConverter;->convert()Landroid/text/Spanned;

    move-result-object p0

    return-object p0

    .line 240
    :catch_1d
    move-exception v0

    move-object p0, v0

    .line 242
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 237
    :catch_25
    move-exception v0

    move-object p0, v0

    .line 239
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static whitelist fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getDisplayMetricsDensity()F
    .registers 1

    .line 512
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method private static blacklist getDisplayMetricsDensity$ravenwood()F
    .registers 1

    .line 516
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method private static greylist-max-o getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;
    .registers 4

    .line 348
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    sub-int/2addr p2, p1

    invoke-interface {v0, p0, p1, p2}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 349
    const-string p0, " dir=\"rtl\""

    return-object p0

    .line 351
    :cond_c
    const-string p0, " dir=\"ltr\""

    return-object p0
.end method

.method private static greylist-max-o getTextStyles(Landroid/text/Spanned;IIZZ)Ljava/lang/String;
    .registers 8

    .line 357
    nop

    .line 358
    nop

    .line 360
    const/4 v0, 0x0

    if-eqz p3, :cond_8

    .line 361
    const-string p3, "margin-top:0; margin-bottom:0;"

    goto :goto_9

    .line 360
    :cond_8
    move-object p3, v0

    .line 363
    :goto_9
    if-eqz p4, :cond_3f

    .line 364
    const-class p4, Landroid/text/style/AlignmentSpan;

    invoke-interface {p0, p1, p2, p4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/AlignmentSpan;

    .line 367
    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    :goto_16
    if-ltz p2, :cond_3f

    .line 368
    aget-object p4, p1, p2

    .line 369
    invoke-interface {p0, p4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    const/16 v2, 0x33

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3c

    .line 370
    invoke-interface {p4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object p0

    .line 371
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne p0, p1, :cond_2e

    .line 372
    const-string v0, "text-align:start;"

    goto :goto_3f

    .line 373
    :cond_2e
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne p0, p1, :cond_35

    .line 374
    const-string v0, "text-align:center;"

    goto :goto_3f

    .line 375
    :cond_35
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne p0, p1, :cond_3f

    .line 376
    const-string v0, "text-align:end;"

    goto :goto_3f

    .line 367
    :cond_3c
    add-int/lit8 p2, p2, -0x1

    goto :goto_16

    .line 383
    :cond_3f
    :goto_3f
    if-nez p3, :cond_46

    if-nez v0, :cond_46

    .line 384
    const-string p0, ""

    return-object p0

    .line 387
    :cond_46
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, " style=\""

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 388
    if-eqz p3, :cond_5f

    if-eqz v0, :cond_5f

    .line 389
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6a

    .line 390
    :cond_5f
    if-eqz p3, :cond_65

    .line 391
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6a

    .line 392
    :cond_65
    if-eqz v0, :cond_6a

    .line 393
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :cond_6a
    :goto_6a
    const-string p1, "\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist toHtml(Landroid/text/Spanned;)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 255
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist toHtml(Landroid/text/Spanned;I)Ljava/lang/String;
    .registers 3

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    invoke-static {v0, p0, p1}, Landroid/text/Html;->withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V

    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V
    .registers 5

    .line 401
    and-int/lit8 p4, p4, 0x1

    if-nez p4, :cond_8

    .line 402
    invoke-static {p0, p1, p2, p3}, Landroid/text/Html;->withinBlockquoteConsecutive(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    goto :goto_b

    .line 404
    :cond_8
    invoke-static {p0, p1, p2, p3}, Landroid/text/Html;->withinBlockquoteIndividual(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 406
    :goto_b
    return-void
.end method

.method private static greylist-max-o withinBlockquoteConsecutive(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .registers 12

    .line 475
    const-string v0, "<p"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2, p3}, Landroid/text/Html;->getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    move v1, p2

    :goto_14
    const-string v3, "</p>\n"

    if-ge v1, p3, :cond_5e

    .line 479
    const/16 v4, 0xa

    invoke-static {p1, v4, v1, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v5

    .line 480
    if-gez v5, :cond_21

    .line 481
    move v5, p3

    .line 484
    :cond_21
    const/4 v6, 0x0

    .line 486
    :goto_22
    if-ge v5, p3, :cond_2f

    invoke-interface {p1, v5}, Landroid/text/Spanned;->charAt(I)C

    move-result v7

    if-ne v7, v4, :cond_2f

    .line 487
    add-int/lit8 v6, v6, 0x1

    .line 488
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 491
    :cond_2f
    sub-int v4, v5, v6

    invoke-static {p0, p1, v1, v4}, Landroid/text/Html;->withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 493
    const/4 v1, 0x1

    if-ne v6, v1, :cond_3d

    .line 494
    const-string v1, "<br>\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5c

    .line 496
    :cond_3d
    const/4 v1, 0x2

    :goto_3e
    if-ge v1, v6, :cond_48

    .line 497
    const-string v4, "<br>"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 499
    :cond_48
    if-eq v5, p3, :cond_5c

    .line 501
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2, p3}, Landroid/text/Html;->getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    :cond_5c
    :goto_5c
    move v1, v5

    goto :goto_14

    .line 507
    :cond_5e
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    return-void
.end method

.method private static greylist-max-o withinBlockquoteIndividual(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .registers 15

    .line 410
    nop

    .line 412
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-gt p2, p3, :cond_a9

    .line 413
    const/16 v2, 0xa

    invoke-static {p1, v2, p2, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    .line 414
    if-gez v2, :cond_e

    .line 415
    move v2, p3

    .line 418
    :cond_e
    const-string v3, "</ul>\n"

    if-ne v2, p2, :cond_20

    .line 419
    if-eqz v1, :cond_19

    .line 421
    nop

    .line 422
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    .line 424
    :cond_19
    const-string p2, "<br>\n"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a5

    .line 426
    :cond_20
    nop

    .line 427
    const-class v4, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, p2, v2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ParagraphStyle;

    .line 428
    array-length v5, v4

    move v6, v0

    :goto_2b
    const/4 v7, 0x1

    if-ge v6, v5, :cond_43

    aget-object v8, v4, v6

    .line 429
    invoke-interface {p1, v8}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    .line 430
    const/16 v10, 0x33

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_40

    instance-of v8, v8, Landroid/text/style/BulletSpan;

    if-eqz v8, :cond_40

    .line 432
    nop

    .line 433
    move v4, v7

    goto :goto_44

    .line 428
    :cond_40
    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    :cond_43
    move v4, v0

    .line 437
    :goto_44
    const-string v5, ">\n"

    if-eqz v4, :cond_5d

    if-nez v1, :cond_5d

    .line 439
    nop

    .line 440
    const-string v1, "<ul"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 441
    invoke-static {p1, p2, v2, v7, v0}, Landroid/text/Html;->getTextStyles(Landroid/text/Spanned;IIZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 442
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v7

    .line 445
    :cond_5d
    if-eqz v1, :cond_66

    if-nez v4, :cond_66

    .line 447
    nop

    .line 448
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    .line 451
    :cond_66
    if-eqz v4, :cond_6b

    const-string v6, "li"

    goto :goto_6d

    :cond_6b
    const-string v6, "p"

    .line 452
    :goto_6d
    const-string v8, "<"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 453
    invoke-static {p1, p2, v2}, Landroid/text/Html;->getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    xor-int/lit8 v4, v4, 0x1

    .line 454
    invoke-static {p1, p2, v2, v4, v7}, Landroid/text/Html;->getTextStyles(Landroid/text/Spanned;IIZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 455
    const-string v7, ">"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-static {p0, p1, p2, v2}, Landroid/text/Html;->withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 459
    const-string p2, "</"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    if-ne v2, p3, :cond_a5

    if-eqz v1, :cond_a5

    .line 464
    nop

    .line 465
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    .line 469
    :cond_a5
    :goto_a5
    add-int/lit8 p2, v2, 0x1

    .line 412
    goto/16 :goto_3

    .line 471
    :cond_a9
    return-void
.end method

.method private static greylist-max-o withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V
    .registers 11

    .line 331
    nop

    :goto_1
    if-ge p2, p3, :cond_32

    .line 332
    const-class v0, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    .line 333
    const-class v1, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, p2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/QuoteSpan;

    .line 335
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v4, v2, :cond_20

    aget-object v5, v1, v4

    .line 336
    const-string v5, "<blockquote>"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 339
    :cond_20
    invoke-static {p0, p1, p2, v0, p4}, Landroid/text/Html;->withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V

    .line 341
    array-length p2, v1

    :goto_24
    if-ge v3, p2, :cond_30

    aget-object v2, v1, v3

    .line 342
    const-string v2, "</blockquote>\n"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 331
    :cond_30
    move p2, v0

    goto :goto_1

    .line 345
    :cond_32
    return-void
.end method

.method private static greylist-max-o withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V
    .registers 5

    .line 284
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_8

    .line 285
    invoke-static {p0, p1, p2}, Landroid/text/Html;->encodeTextAlignmentByDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V

    .line 286
    return-void

    .line 289
    :cond_8
    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v1

    invoke-static {p0, p1, v0, v1, p2}, Landroid/text/Html;->withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V

    .line 290
    return-void
.end method

.method private static greylist-max-o withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .registers 10

    .line 521
    nop

    :goto_1
    if-ge p2, p3, :cond_1e5

    .line 522
    const-class v0, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    .line 523
    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, p2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/CharacterStyle;

    .line 525
    const/4 v2, 0x0

    :goto_12
    array-length v3, v1

    const-string v4, "monospace"

    if-ge v2, v3, :cond_142

    .line 526
    aget-object v3, v1, v2

    instance-of v3, v3, Landroid/text/style/StyleSpan;

    if-eqz v3, :cond_37

    .line 527
    aget-object v3, v1, v2

    check-cast v3, Landroid/text/style/StyleSpan;

    invoke-virtual {v3}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v3

    .line 529
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_2e

    .line 530
    const-string v5, "<b>"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    :cond_2e
    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_37

    .line 533
    const-string v3, "<i>"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    :cond_37
    aget-object v3, v1, v2

    instance-of v3, v3, Landroid/text/style/TypefaceSpan;

    if-eqz v3, :cond_50

    .line 537
    aget-object v3, v1, v2

    check-cast v3, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v3}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v3

    .line 539
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 540
    const-string v3, "<tt>"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    :cond_50
    aget-object v3, v1, v2

    instance-of v3, v3, Landroid/text/style/SuperscriptSpan;

    if-eqz v3, :cond_5b

    .line 544
    const-string v3, "<sup>"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :cond_5b
    aget-object v3, v1, v2

    instance-of v3, v3, Landroid/text/style/SubscriptSpan;

    if-eqz v3, :cond_66

    .line 547
    const-string v3, "<sub>"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :cond_66
    aget-object v3, v1, v2

    instance-of v3, v3, Landroid/text/style/UnderlineSpan;

    if-eqz v3, :cond_71

    .line 550
    const-string v3, "<u>"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    :cond_71
    aget-object v3, v1, v2

    instance-of v3, v3, Landroid/text/style/StrikethroughSpan;

    if-eqz v3, :cond_7c

    .line 553
    const-string v3, "<span style=\"text-decoration:line-through;\">"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    :cond_7c
    aget-object v3, v1, v2

    instance-of v3, v3, Landroid/text/style/URLSpan;

    const-string v4, "\">"

    if-eqz v3, :cond_97

    .line 556
    const-string v3, "<a href=\""

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    aget-object v3, v1, v2

    check-cast v3, Landroid/text/style/URLSpan;

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    :cond_97
    aget-object v3, v1, v2

    instance-of v3, v3, Landroid/text/style/ImageSpan;

    if-eqz v3, :cond_b1

    .line 561
    const-string p2, "<img src=\""

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    aget-object p2, v1, v2

    check-cast p2, Landroid/text/style/ImageSpan;

    invoke-virtual {p2}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    move p2, v0

    .line 568
    :cond_b1
    aget-object v3, v1, v2

    instance-of v3, v3, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v3, :cond_dc

    .line 569
    aget-object v3, v1, v2

    check-cast v3, Landroid/text/style/AbsoluteSizeSpan;

    .line 570
    invoke-virtual {v3}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v4

    int-to-float v4, v4

    .line 571
    invoke-virtual {v3}, Landroid/text/style/AbsoluteSizeSpan;->getDip()Z

    move-result v3

    if-nez v3, :cond_cb

    .line 572
    invoke-static {}, Landroid/text/Html;->getDisplayMetricsDensity()F

    move-result v3

    div-float/2addr v4, v3

    .line 576
    :cond_cb
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "<span style=\"font-size:%.0fpx\";>"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    :cond_dc
    aget-object v3, v1, v2

    instance-of v3, v3, Landroid/text/style/RelativeSizeSpan;

    if-eqz v3, :cond_fb

    .line 579
    aget-object v3, v1, v2

    check-cast v3, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v3}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    move-result v3

    .line 580
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "<span style=\"font-size:%.2fem;\">"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    :cond_fb
    aget-object v3, v1, v2

    instance-of v3, v3, Landroid/text/style/ForegroundColorSpan;

    const v4, 0xffffff

    if-eqz v3, :cond_11e

    .line 583
    aget-object v3, v1, v2

    check-cast v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v3}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v3

    .line 584
    and-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "<span style=\"color:#%06X;\">"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    :cond_11e
    aget-object v3, v1, v2

    instance-of v3, v3, Landroid/text/style/BackgroundColorSpan;

    if-eqz v3, :cond_13e

    .line 587
    aget-object v3, v1, v2

    check-cast v3, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v3}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v3

    .line 588
    and-int/2addr v3, v4

    .line 589
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 588
    const-string v4, "<span style=\"background-color:#%06X;\">"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    :cond_13e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_12

    .line 593
    :cond_142
    invoke-static {p0, p1, p2, v0}, Landroid/text/Html;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    .line 595
    array-length p2, v1

    add-int/lit8 p2, p2, -0x1

    :goto_148
    if-ltz p2, :cond_1e2

    .line 596
    aget-object v2, v1, p2

    instance-of v2, v2, Landroid/text/style/BackgroundColorSpan;

    const-string v3, "</span>"

    if-eqz v2, :cond_155

    .line 597
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    :cond_155
    aget-object v2, v1, p2

    instance-of v2, v2, Landroid/text/style/ForegroundColorSpan;

    if-eqz v2, :cond_15e

    .line 600
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    :cond_15e
    aget-object v2, v1, p2

    instance-of v2, v2, Landroid/text/style/RelativeSizeSpan;

    if-eqz v2, :cond_167

    .line 603
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    :cond_167
    aget-object v2, v1, p2

    instance-of v2, v2, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v2, :cond_170

    .line 606
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    :cond_170
    aget-object v2, v1, p2

    instance-of v2, v2, Landroid/text/style/URLSpan;

    if-eqz v2, :cond_17b

    .line 609
    const-string v2, "</a>"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    :cond_17b
    aget-object v2, v1, p2

    instance-of v2, v2, Landroid/text/style/StrikethroughSpan;

    if-eqz v2, :cond_184

    .line 612
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    :cond_184
    aget-object v2, v1, p2

    instance-of v2, v2, Landroid/text/style/UnderlineSpan;

    if-eqz v2, :cond_18f

    .line 615
    const-string v2, "</u>"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    :cond_18f
    aget-object v2, v1, p2

    instance-of v2, v2, Landroid/text/style/SubscriptSpan;

    if-eqz v2, :cond_19a

    .line 618
    const-string v2, "</sub>"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    :cond_19a
    aget-object v2, v1, p2

    instance-of v2, v2, Landroid/text/style/SuperscriptSpan;

    if-eqz v2, :cond_1a5

    .line 621
    const-string v2, "</sup>"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    :cond_1a5
    aget-object v2, v1, p2

    instance-of v2, v2, Landroid/text/style/TypefaceSpan;

    if-eqz v2, :cond_1be

    .line 624
    aget-object v2, v1, p2

    check-cast v2, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v2}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v2

    .line 626
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1be

    .line 627
    const-string v2, "</tt>"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    :cond_1be
    aget-object v2, v1, p2

    instance-of v2, v2, Landroid/text/style/StyleSpan;

    if-eqz v2, :cond_1de

    .line 631
    aget-object v2, v1, p2

    check-cast v2, Landroid/text/style/StyleSpan;

    invoke-virtual {v2}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v2

    .line 633
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_1d5

    .line 634
    const-string v3, "</b>"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    :cond_1d5
    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1de

    .line 637
    const-string v2, "</i>"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    :cond_1de
    add-int/lit8 p2, p2, -0x1

    goto/16 :goto_148

    .line 521
    :cond_1e2
    move p2, v0

    goto/16 :goto_1

    .line 642
    :cond_1e5
    return-void
.end method

.method private static greylist-max-r withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V
    .registers 12

    .line 647
    nop

    :goto_1
    if-ge p2, p3, :cond_90

    .line 648
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 650
    const/16 v1, 0x3c

    if-ne v0, v1, :cond_12

    .line 651
    const-string v0, "&lt;"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8c

    .line 652
    :cond_12
    const/16 v1, 0x3e

    if-ne v0, v1, :cond_1d

    .line 653
    const-string v0, "&gt;"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8c

    .line 654
    :cond_1d
    const/16 v1, 0x26

    if-ne v0, v1, :cond_28

    .line 655
    const-string v0, "&amp;"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8c

    .line 656
    :cond_28
    const-string v1, ";"

    const-string v2, "&#"

    const v3, 0xd800

    if-lt v0, v3, :cond_5d

    const v4, 0xdfff

    if-gt v0, v4, :cond_5d

    .line 657
    const v5, 0xdc00

    if-ge v0, v5, :cond_8c

    add-int/lit8 v6, p2, 0x1

    if-ge v6, p3, :cond_8c

    .line 658
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 659
    if-lt v7, v5, :cond_5c

    if-gt v7, v4, :cond_5c

    .line 660
    nop

    .line 661
    sub-int/2addr v0, v3

    shl-int/lit8 p2, v0, 0xa

    const/high16 v0, 0x10000

    or-int/2addr p2, v0

    sub-int/2addr v7, v5

    or-int/2addr p2, v7

    .line 662
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p2, v6

    .line 664
    :cond_5c
    goto :goto_8c

    .line 665
    :cond_5d
    const/16 v3, 0x7e

    if-gt v0, v3, :cond_81

    const/16 v3, 0x20

    if-ge v0, v3, :cond_66

    goto :goto_81

    .line 667
    :cond_66
    if-ne v0, v3, :cond_7d

    .line 668
    :goto_68
    add-int/lit8 v0, p2, 0x1

    if-ge v0, p3, :cond_79

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_79

    .line 669
    const-string p2, "&nbsp;"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    move p2, v0

    goto :goto_68

    .line 673
    :cond_79
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8c

    .line 675
    :cond_7d
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8c

    .line 666
    :cond_81
    :goto_81
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    :cond_8c
    :goto_8c
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_1

    .line 678
    :cond_90
    return-void
.end method
