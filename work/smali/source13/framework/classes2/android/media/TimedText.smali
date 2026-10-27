.class public final Landroid/media/TimedText;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/TimedText$HyperText;,
        Landroid/media/TimedText$Karaoke;,
        Landroid/media/TimedText$Font;,
        Landroid/media/TimedText$Style;,
        Landroid/media/TimedText$Justification;,
        Landroid/media/TimedText$CharPos;
    }
.end annotation


# static fields
.field private static final greylist-max-o FIRST_PRIVATE_KEY:I = 0x65

.field private static final greylist-max-o FIRST_PUBLIC_KEY:I = 0x1

.field private static final greylist-max-o KEY_BACKGROUND_COLOR_RGBA:I = 0x3

.field private static final greylist-max-o KEY_DISPLAY_FLAGS:I = 0x1

.field private static final greylist-max-o KEY_END_CHAR:I = 0x68

.field private static final greylist-max-o KEY_FONT_ID:I = 0x69

.field private static final greylist-max-o KEY_FONT_SIZE:I = 0x6a

.field private static final greylist-max-o KEY_GLOBAL_SETTING:I = 0x65

.field private static final greylist-max-o KEY_HIGHLIGHT_COLOR_RGBA:I = 0x4

.field private static final greylist-max-o KEY_LOCAL_SETTING:I = 0x66

.field private static final greylist-max-o KEY_SCROLL_DELAY:I = 0x5

.field private static final greylist-max-o KEY_START_CHAR:I = 0x67

.field private static final greylist-max-o KEY_START_TIME:I = 0x7

.field private static final greylist-max-o KEY_STRUCT_BLINKING_TEXT_LIST:I = 0x8

.field private static final greylist-max-o KEY_STRUCT_FONT_LIST:I = 0x9

.field private static final greylist-max-o KEY_STRUCT_HIGHLIGHT_LIST:I = 0xa

.field private static final greylist-max-o KEY_STRUCT_HYPER_TEXT_LIST:I = 0xb

.field private static final greylist-max-o KEY_STRUCT_JUSTIFICATION:I = 0xf

.field private static final greylist-max-o KEY_STRUCT_KARAOKE_LIST:I = 0xc

.field private static final greylist-max-o KEY_STRUCT_STYLE_LIST:I = 0xd

.field private static final greylist-max-o KEY_STRUCT_TEXT:I = 0x10

.field private static final greylist-max-o KEY_STRUCT_TEXT_POS:I = 0xe

.field private static final greylist-max-o KEY_STYLE_FLAGS:I = 0x2

.field private static final greylist-max-o KEY_TEXT_COLOR_RGBA:I = 0x6b

.field private static final greylist-max-o KEY_WRAP_TEXT:I = 0x6

.field private static final greylist-max-o LAST_PRIVATE_KEY:I = 0x6b

.field private static final greylist-max-o LAST_PUBLIC_KEY:I = 0x10

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TimedText"


# instance fields
.field private greylist-max-o mBackgroundColorRGBA:I

.field private greylist-max-o mBlinkingPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDisplayFlags:I

.field private greylist-max-o mFontList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$Font;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHighlightColorRGBA:I

.field private greylist-max-o mHighlightPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHyperTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$HyperText;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mJustification:Landroid/media/TimedText$Justification;

.field private greylist-max-o mKaraokeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$Karaoke;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mKeyObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mScrollDelay:I

.field private greylist-max-o mStyleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$Style;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTextBounds:Landroid/graphics/Rect;

.field private greylist-max-o mTextChars:Ljava/lang/String;

.field private greylist-max-o mWrapText:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    .line 95
    const/4 v1, -0x1

    iput v1, p0, Landroid/media/TimedText;->mDisplayFlags:I

    .line 96
    iput v1, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    .line 97
    iput v1, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    .line 98
    iput v1, p0, Landroid/media/TimedText;->mScrollDelay:I

    .line 99
    iput v1, p0, Landroid/media/TimedText;->mWrapText:I

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 102
    iput-object v1, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 103
    iput-object v1, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    .line 104
    iput-object v1, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    .line 105
    iput-object v1, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    .line 106
    iput-object v1, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    .line 108
    iput-object v1, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    .line 109
    iput-object v1, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    .line 362
    invoke-direct {p0, p1}, Landroid/media/TimedText;->parseParcel(Landroid/os/Parcel;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 366
    return-void

    .line 363
    :cond_2d
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 364
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parseParcel() fails"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/TimedText;->mDisplayFlags:I

    .line 96
    iput v0, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    .line 97
    iput v0, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    .line 98
    iput v0, p0, Landroid/media/TimedText;->mScrollDelay:I

    .line 99
    iput v0, p0, Landroid/media/TimedText;->mWrapText:I

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 102
    iput-object v0, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 103
    iput-object v0, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    .line 104
    iput-object v0, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    .line 105
    iput-object v0, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    .line 106
    iput-object v0, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    .line 108
    iput-object v0, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    .line 109
    iput-object v0, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    .line 374
    iput-object p1, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    .line 375
    iput-object p2, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    .line 376
    return-void
.end method

.method private greylist-max-o containsKey(I)Z
    .registers 4
    .param p1, "key"    # I

    .line 718
    invoke-direct {p0, p1}, Landroid/media/TimedText;->isValidKey(I)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 719
    const/4 v0, 0x1

    return v0

    .line 721
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-r getObject(I)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # I

    .line 742
    invoke-direct {p0, p1}, Landroid/media/TimedText;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 743
    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 745
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o isValidKey(I)Z
    .registers 4
    .param p1, "key"    # I

    .line 704
    const/4 v0, 0x1

    if-lt p1, v0, :cond_7

    const/16 v1, 0x10

    if-le p1, v1, :cond_10

    :cond_7
    const/16 v1, 0x65

    if-lt p1, v1, :cond_11

    const/16 v1, 0x6b

    if-le p1, v1, :cond_10

    goto :goto_11

    .line 708
    :cond_10
    return v0

    .line 706
    :cond_11
    :goto_11
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o keySet()Ljava/util/Set;
    .registers 2

    .line 728
    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o parseParcel(Landroid/os/Parcel;)Z
    .registers 13
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 407
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-nez v1, :cond_b

    .line 409
    return v0

    .line 412
    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 413
    .local v1, "type":I
    const/16 v2, 0x66

    const-string v3, "Invalid timed text key found: "

    const-string v4, "TimedText"

    if-ne v1, v2, :cond_53

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 415
    const/4 v2, 0x7

    if-eq v1, v2, :cond_1f

    .line 416
    return v0

    .line 418
    :cond_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 419
    .local v2, "mStartTimeMs":I
    iget-object v5, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 422
    const/16 v5, 0x10

    if-eq v1, v5, :cond_39

    .line 423
    return v0

    .line 426
    :cond_39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 427
    .local v5, "textLen":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 428
    .local v6, "text":[B
    if-eqz v6, :cond_4f

    array-length v7, v6

    if-nez v7, :cond_47

    goto :goto_4f

    .line 431
    :cond_47
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v7, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    goto :goto_6c

    .line 429
    :cond_4f
    :goto_4f
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    goto :goto_6c

    .line 434
    .end local v2    # "mStartTimeMs":I
    .end local v5    # "textLen":I
    .end local v6    # "text":[B
    :cond_53
    const/16 v2, 0x65

    if-eq v1, v2, :cond_6c

    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    return v0

    .line 434
    :cond_6c
    :goto_6c
    nop

    .line 439
    :goto_6d
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v2

    if-lez v2, :cond_140

    .line 440
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 441
    .local v2, "key":I
    invoke-direct {p0, v2}, Landroid/media/TimedText;->isValidKey(I)Z

    move-result v5

    if-nez v5, :cond_92

    .line 442
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return v0

    .line 446
    :cond_92
    const/4 v5, 0x0

    .line 448
    .local v5, "object":Ljava/lang/Object;
    packed-switch v2, :pswitch_data_142

    :pswitch_96
    goto/16 :goto_11e

    .line 498
    :pswitch_98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 499
    .local v6, "horizontal":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 500
    .local v7, "vertical":I
    new-instance v8, Landroid/media/TimedText$Justification;

    invoke-direct {v8, v6, v7}, Landroid/media/TimedText$Justification;-><init>(II)V

    iput-object v8, p0, Landroid/media/TimedText;->mJustification:Landroid/media/TimedText$Justification;

    .line 502
    iget-object v5, p0, Landroid/media/TimedText;->mJustification:Landroid/media/TimedText$Justification;

    .line 503
    goto/16 :goto_11e

    .line 511
    .end local v6    # "horizontal":I
    .end local v7    # "vertical":I
    :pswitch_ab
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 512
    .local v6, "top":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 513
    .local v7, "left":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 514
    .local v8, "bottom":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 515
    .local v9, "right":I
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v7, v6, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    .line 517
    goto :goto_11e

    .line 450
    .end local v6    # "top":I
    .end local v7    # "left":I
    .end local v8    # "bottom":I
    .end local v9    # "right":I
    :pswitch_c3
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readStyle(Landroid/os/Parcel;)V

    .line 451
    iget-object v5, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    .line 452
    goto :goto_11e

    .line 465
    :pswitch_c9
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readKaraoke(Landroid/os/Parcel;)V

    .line 466
    iget-object v5, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    .line 467
    goto :goto_11e

    .line 470
    :pswitch_cf
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readHyperText(Landroid/os/Parcel;)V

    .line 471
    iget-object v5, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    .line 473
    goto :goto_11e

    .line 460
    :pswitch_d5
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readHighlight(Landroid/os/Parcel;)V

    .line 461
    iget-object v5, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 462
    goto :goto_11e

    .line 455
    :pswitch_db
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readFont(Landroid/os/Parcel;)V

    .line 456
    iget-object v5, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    .line 457
    goto :goto_11e

    .line 476
    :pswitch_e1
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readBlinkingText(Landroid/os/Parcel;)V

    .line 477
    iget-object v5, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 479
    goto :goto_11e

    .line 482
    :pswitch_e7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/media/TimedText;->mWrapText:I

    .line 483
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 484
    goto :goto_11e

    .line 520
    :pswitch_f2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/media/TimedText;->mScrollDelay:I

    .line 521
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 522
    goto :goto_11e

    .line 487
    :pswitch_fd
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    .line 488
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 489
    goto :goto_11e

    .line 506
    :pswitch_108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    .line 507
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 508
    goto :goto_11e

    .line 492
    :pswitch_113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/media/TimedText;->mDisplayFlags:I

    .line 493
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 494
    nop

    .line 529
    :goto_11e
    if-eqz v5, :cond_13e

    .line 530
    iget-object v6, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_135

    .line 531
    iget-object v6, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    :cond_135
    iget-object v6, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    .end local v2    # "key":I
    .end local v5    # "object":Ljava/lang/Object;
    :cond_13e
    goto/16 :goto_6d

    .line 538
    :cond_140
    const/4 v0, 0x1

    return v0

    :pswitch_data_142
    .packed-switch 0x1
        :pswitch_113
        :pswitch_96
        :pswitch_108
        :pswitch_fd
        :pswitch_f2
        :pswitch_e7
        :pswitch_96
        :pswitch_e1
        :pswitch_db
        :pswitch_d5
        :pswitch_cf
        :pswitch_c9
        :pswitch_c3
        :pswitch_ab
        :pswitch_98
    .end packed-switch
.end method

.method private greylist-max-o readBlinkingText(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 688
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 689
    .local v0, "startChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 690
    .local v1, "endChar":I
    new-instance v2, Landroid/media/TimedText$CharPos;

    invoke-direct {v2, v0, v1}, Landroid/media/TimedText$CharPos;-><init>(II)V

    .line 692
    .local v2, "blinkingPos":Landroid/media/TimedText$CharPos;
    iget-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    if-nez v3, :cond_18

    .line 693
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 695
    :cond_18
    iget-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    return-void
.end method

.method private greylist-max-o readFont(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 608
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 610
    .local v0, "entryCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_31

    .line 611
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 612
    .local v2, "id":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 614
    .local v3, "nameLen":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 615
    .local v4, "text":[B
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6, v3}, Ljava/lang/String;-><init>([BII)V

    .line 617
    .local v5, "name":Ljava/lang/String;
    new-instance v6, Landroid/media/TimedText$Font;

    invoke-direct {v6, v2, v5}, Landroid/media/TimedText$Font;-><init>(ILjava/lang/String;)V

    .line 619
    .local v6, "font":Landroid/media/TimedText$Font;
    iget-object v7, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    if-nez v7, :cond_29

    .line 620
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    .line 622
    :cond_29
    iget-object v7, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    .end local v2    # "id":I
    .end local v3    # "nameLen":I
    .end local v4    # "text":[B
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "font":Landroid/media/TimedText$Font;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 624
    .end local v1    # "i":I
    :cond_31
    return-void
.end method

.method private greylist-max-o readHighlight(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 630
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 631
    .local v0, "startChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 632
    .local v1, "endChar":I
    new-instance v2, Landroid/media/TimedText$CharPos;

    invoke-direct {v2, v0, v1}, Landroid/media/TimedText$CharPos;-><init>(II)V

    .line 634
    .local v2, "pos":Landroid/media/TimedText$CharPos;
    iget-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    if-nez v3, :cond_18

    .line 635
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 637
    :cond_18
    iget-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    return-void
.end method

.method private greylist-max-o readHyperText(Landroid/os/Parcel;)V
    .registers 11
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 665
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 666
    .local v0, "startChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 668
    .local v1, "endChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 669
    .local v2, "len":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 670
    .local v3, "url":[B
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5, v2}, Ljava/lang/String;-><init>([BII)V

    .line 672
    .local v4, "urlString":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 673
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 674
    .local v6, "alt":[B
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6, v5, v2}, Ljava/lang/String;-><init>([BII)V

    move-object v5, v7

    .line 675
    .local v5, "altString":Ljava/lang/String;
    new-instance v7, Landroid/media/TimedText$HyperText;

    invoke-direct {v7, v0, v1, v4, v5}, Landroid/media/TimedText$HyperText;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 678
    .local v7, "hyperText":Landroid/media/TimedText$HyperText;
    iget-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    if-nez v8, :cond_34

    .line 679
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    .line 681
    :cond_34
    iget-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    return-void
.end method

.method private greylist-max-o readKaraoke(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 644
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 646
    .local v0, "entryCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_2f

    .line 647
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 648
    .local v2, "startTimeMs":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 649
    .local v3, "endTimeMs":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 650
    .local v4, "startChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 651
    .local v5, "endChar":I
    new-instance v6, Landroid/media/TimedText$Karaoke;

    invoke-direct {v6, v2, v3, v4, v5}, Landroid/media/TimedText$Karaoke;-><init>(IIII)V

    .line 654
    .local v6, "kara":Landroid/media/TimedText$Karaoke;
    iget-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    if-nez v7, :cond_27

    .line 655
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    .line 657
    :cond_27
    iget-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    .end local v2    # "startTimeMs":I
    .end local v3    # "endTimeMs":I
    .end local v4    # "startChar":I
    .end local v5    # "endChar":I
    .end local v6    # "kara":Landroid/media/TimedText$Karaoke;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 659
    .end local v1    # "i":I
    :cond_2f
    return-void
.end method

.method private greylist-max-o readStyle(Landroid/os/Parcel;)V
    .registers 22
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 545
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 546
    .local v1, "endOfStyle":Z
    const/4 v2, -0x1

    .line 547
    .local v2, "startChar":I
    const/4 v3, -0x1

    .line 548
    .local v3, "endChar":I
    const/4 v4, -0x1

    .line 549
    .local v4, "fontId":I
    const/4 v5, 0x0

    .line 550
    .local v5, "isBold":Z
    const/4 v6, 0x0

    .line 551
    .local v6, "isItalic":Z
    const/4 v7, 0x0

    .line 552
    .local v7, "isUnderlined":Z
    const/4 v8, -0x1

    .line 553
    .local v8, "fontSize":I
    const/4 v9, -0x1

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    .line 554
    .end local v2    # "startChar":I
    .end local v3    # "endChar":I
    .end local v4    # "fontId":I
    .end local v5    # "isBold":Z
    .end local v6    # "isItalic":Z
    .end local v7    # "isUnderlined":Z
    .end local v8    # "fontSize":I
    .local v11, "startChar":I
    .local v12, "endChar":I
    .local v13, "fontId":I
    .local v14, "isBold":Z
    .local v15, "isItalic":Z
    .local v16, "isUnderlined":Z
    .local v17, "fontSize":I
    .local v18, "colorRGBA":I
    :goto_16
    if-nez v1, :cond_7d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v2

    if-lez v2, :cond_7d

    .line 555
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 556
    .local v2, "key":I
    sparse-switch v2, :sswitch_data_a2

    .line 589
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    move-object/from16 v10, p1

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 590
    const/4 v1, 0x1

    goto :goto_7c

    .line 583
    :sswitch_32
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 584
    .end local v18    # "colorRGBA":I
    .local v3, "colorRGBA":I
    move-object/from16 v10, p1

    move/from16 v18, v3

    goto :goto_7c

    .line 579
    .end local v3    # "colorRGBA":I
    .restart local v18    # "colorRGBA":I
    :sswitch_3b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 580
    .end local v17    # "fontSize":I
    .local v3, "fontSize":I
    move-object/from16 v10, p1

    move/from16 v17, v3

    goto :goto_7c

    .line 566
    .end local v3    # "fontSize":I
    .restart local v17    # "fontSize":I
    :sswitch_44
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 567
    .end local v13    # "fontId":I
    .local v3, "fontId":I
    move-object/from16 v10, p1

    move v13, v3

    goto :goto_7c

    .line 562
    .end local v3    # "fontId":I
    .restart local v13    # "fontId":I
    :sswitch_4c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 563
    .end local v12    # "endChar":I
    .local v3, "endChar":I
    move-object/from16 v10, p1

    move v12, v3

    goto :goto_7c

    .line 558
    .end local v3    # "endChar":I
    .restart local v12    # "endChar":I
    :sswitch_54
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 559
    .end local v11    # "startChar":I
    .local v3, "startChar":I
    move-object/from16 v10, p1

    move v11, v3

    goto :goto_7c

    .line 570
    .end local v3    # "startChar":I
    .restart local v11    # "startChar":I
    :sswitch_5c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 573
    .local v3, "flags":I
    rem-int/lit8 v4, v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_68

    move v4, v6

    goto :goto_69

    :cond_68
    move v4, v5

    .line 574
    .end local v14    # "isBold":Z
    .local v4, "isBold":Z
    :goto_69
    rem-int/lit8 v7, v3, 0x4

    const/4 v8, 0x2

    if-lt v7, v8, :cond_70

    move v7, v6

    goto :goto_71

    :cond_70
    move v7, v5

    .line 575
    .end local v15    # "isItalic":Z
    .local v7, "isItalic":Z
    :goto_71
    div-int/lit8 v8, v3, 0x4

    if-ne v8, v6, :cond_76

    move v5, v6

    .line 576
    .end local v16    # "isUnderlined":Z
    .local v5, "isUnderlined":Z
    :cond_76
    move-object/from16 v10, p1

    move v14, v4

    move/from16 v16, v5

    move v15, v7

    .line 594
    .end local v2    # "key":I
    .end local v3    # "flags":I
    .end local v4    # "isBold":Z
    .end local v5    # "isUnderlined":Z
    .end local v7    # "isItalic":Z
    .restart local v14    # "isBold":Z
    .restart local v15    # "isItalic":Z
    .restart local v16    # "isUnderlined":Z
    :goto_7c
    goto :goto_16

    .line 554
    :cond_7d
    move-object/from16 v10, p1

    .line 596
    new-instance v19, Landroid/media/TimedText$Style;

    move-object/from16 v2, v19

    move v3, v11

    move v4, v12

    move v5, v13

    move v6, v14

    move v7, v15

    move/from16 v8, v16

    move/from16 v9, v17

    move/from16 v10, v18

    invoke-direct/range {v2 .. v10}, Landroid/media/TimedText$Style;-><init>(IIIZZZII)V

    .line 598
    .local v2, "style":Landroid/media/TimedText$Style;
    iget-object v3, v0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    if-nez v3, :cond_9c

    .line 599
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    .line 601
    :cond_9c
    iget-object v3, v0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    return-void

    :sswitch_data_a2
    .sparse-switch
        0x2 -> :sswitch_5c
        0x67 -> :sswitch_54
        0x68 -> :sswitch_4c
        0x69 -> :sswitch_44
        0x6a -> :sswitch_3b
        0x6b -> :sswitch_32
    .end sparse-switch
.end method


# virtual methods
.method public whitelist getBounds()Landroid/graphics/Rect;
    .registers 2

    .line 398
    iget-object v0, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/String;
    .registers 2

    .line 386
    iget-object v0, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    return-object v0
.end method
