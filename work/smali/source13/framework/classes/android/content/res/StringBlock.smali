.class public final Landroid/content/res/StringBlock;
.super Ljava/lang/Object;
.source "StringBlock.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/StringBlock$Height;,
        Landroid/content/res/StringBlock$StyleIDs;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "AssetManager"

.field private static final greylist-max-o localLOGV:Z = false


# instance fields
.field private final greylist-max-o mNative:J

.field private blacklist mOpen:Z

.field private final greylist-max-o mOwnsNative:Z

.field private greylist-max-o mSparseStrings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mStrings:[Ljava/lang/CharSequence;

.field greylist-max-o mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

.field private final greylist-max-o mUseSparse:Z


# direct methods
.method public constructor greylist <init>(JZ)V
    .registers 5
    .param p1, "obj"    # J
    .param p3, "useSparse"    # Z

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOpen:Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 552
    iput-wide p1, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 553
    iput-boolean p3, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    .line 554
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    .line 557
    return-void
.end method

.method public constructor greylist-max-o <init>([BIIZ)V
    .registers 8
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "useSparse"    # Z

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOpen:Z

    .line 74
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 85
    invoke-static {p1, p2, p3}, Landroid/content/res/StringBlock;->nativeCreate([BII)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 86
    iput-boolean p4, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    .line 87
    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    .line 90
    return-void
.end method

.method public constructor greylist-max-o <init>([BZ)V
    .registers 6
    .param p1, "data"    # [B
    .param p2, "useSparse"    # Z

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOpen:Z

    .line 74
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 77
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Landroid/content/res/StringBlock;->nativeCreate([BII)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 78
    iput-boolean p2, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    .line 79
    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    .line 82
    return-void
.end method

.method private static greylist-max-o addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 7
    .param p0, "buffer"    # Landroid/text/Spannable;
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 430
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 432
    .local v0, "len":I
    const/16 v1, 0xa

    if-eqz p2, :cond_1e

    if-eq p2, v0, :cond_1e

    add-int/lit8 v2, p2, -0x1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_1e

    .line 433
    :cond_12
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_1e

    .line 434
    add-int/lit8 v2, p2, -0x1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_12

    .line 440
    :cond_1e
    if-eqz p3, :cond_36

    if-eq p3, v0, :cond_36

    add-int/lit8 v2, p3, -0x1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_36

    .line 441
    :cond_2a
    add-int/lit8 p3, p3, 0x1

    if-ge p3, v0, :cond_36

    .line 442
    add-int/lit8 v2, p3, -0x1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_2a

    .line 448
    :cond_36
    const/16 v1, 0x33

    invoke-interface {p0, p1, p2, p3, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 449
    return-void
.end method

.method private greylist-max-o applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;)Ljava/lang/CharSequence;
    .registers 21
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "style"    # [I
    .param p3, "ids"    # Landroid/content/res/StringBlock$StyleIDs;

    .line 230
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    array-length v2, v1

    if-nez v2, :cond_8

    .line 231
    return-object v0

    .line 233
    :cond_8
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 234
    .local v2, "buffer":Landroid/text/SpannableString;
    const/4 v3, 0x0

    .line 235
    .local v3, "i":I
    :goto_e
    array-length v4, v1

    if-ge v3, v4, :cond_280

    .line 236
    aget v4, v1, v3

    .line 241
    .local v4, "type":I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetboldId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    const/16 v6, 0x21

    const/4 v7, 0x1

    if-ne v4, v5, :cond_40

    .line 242
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v5

    .line 243
    .local v5, "application":Landroid/app/Application;
    nop

    .line 244
    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 245
    .local v8, "fontWeightAdjustment":I
    new-instance v9, Landroid/text/style/StyleSpan;

    invoke-direct {v9, v7, v8}, Landroid/text/style/StyleSpan;-><init>(II)V

    add-int/lit8 v10, v3, 0x1

    aget v10, v1, v10

    add-int/lit8 v11, v3, 0x2

    aget v11, v1, v11

    add-int/2addr v11, v7

    invoke-virtual {v2, v9, v10, v11, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 248
    .end local v5    # "application":Landroid/app/Application;
    .end local v8    # "fontWeightAdjustment":I
    move-object/from16 v5, p0

    goto/16 :goto_279

    :cond_40
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetitalicId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-ne v4, v5, :cond_5c

    .line 249
    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v8, 0x2

    invoke-direct {v5, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v8, v3, 0x1

    aget v8, v1, v8

    add-int/lit8 v9, v3, 0x2

    aget v9, v1, v9

    add-int/2addr v9, v7

    invoke-virtual {v2, v5, v8, v9, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v5, p0

    goto/16 :goto_279

    .line 252
    :cond_5c
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetunderlineId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-ne v4, v5, :cond_77

    .line 253
    new-instance v5, Landroid/text/style/UnderlineSpan;

    invoke-direct {v5}, Landroid/text/style/UnderlineSpan;-><init>()V

    add-int/lit8 v8, v3, 0x1

    aget v8, v1, v8

    add-int/lit8 v9, v3, 0x2

    aget v9, v1, v9

    add-int/2addr v9, v7

    invoke-virtual {v2, v5, v8, v9, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v5, p0

    goto/16 :goto_279

    .line 256
    :cond_77
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetttId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-ne v4, v5, :cond_95

    .line 257
    new-instance v5, Landroid/text/style/TypefaceSpan;

    const-string/jumbo v8, "monospace"

    invoke-direct {v5, v8}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v3, 0x1

    aget v8, v1, v8

    add-int/lit8 v9, v3, 0x2

    aget v9, v1, v9

    add-int/2addr v9, v7

    invoke-virtual {v2, v5, v8, v9, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v5, p0

    goto/16 :goto_279

    .line 260
    :cond_95
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetbigId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-ne v4, v5, :cond_b2

    .line 261
    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    const/high16 v8, 0x3fa00000    # 1.25f

    invoke-direct {v5, v8}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v8, v3, 0x1

    aget v8, v1, v8

    add-int/lit8 v9, v3, 0x2

    aget v9, v1, v9

    add-int/2addr v9, v7

    invoke-virtual {v2, v5, v8, v9, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v5, p0

    goto/16 :goto_279

    .line 264
    :cond_b2
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsmallId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-ne v4, v5, :cond_d0

    .line 265
    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    const v8, 0x3f4ccccd    # 0.8f

    invoke-direct {v5, v8}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v8, v3, 0x1

    aget v8, v1, v8

    add-int/lit8 v9, v3, 0x2

    aget v9, v1, v9

    add-int/2addr v9, v7

    invoke-virtual {v2, v5, v8, v9, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v5, p0

    goto/16 :goto_279

    .line 268
    :cond_d0
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsubId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-ne v4, v5, :cond_eb

    .line 269
    new-instance v5, Landroid/text/style/SubscriptSpan;

    invoke-direct {v5}, Landroid/text/style/SubscriptSpan;-><init>()V

    add-int/lit8 v8, v3, 0x1

    aget v8, v1, v8

    add-int/lit8 v9, v3, 0x2

    aget v9, v1, v9

    add-int/2addr v9, v7

    invoke-virtual {v2, v5, v8, v9, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v5, p0

    goto/16 :goto_279

    .line 272
    :cond_eb
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsupId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-ne v4, v5, :cond_106

    .line 273
    new-instance v5, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v5}, Landroid/text/style/SuperscriptSpan;-><init>()V

    add-int/lit8 v8, v3, 0x1

    aget v8, v1, v8

    add-int/lit8 v9, v3, 0x2

    aget v9, v1, v9

    add-int/2addr v9, v7

    invoke-virtual {v2, v5, v8, v9, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v5, p0

    goto/16 :goto_279

    .line 276
    :cond_106
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetstrikeId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-ne v4, v5, :cond_121

    .line 277
    new-instance v5, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v5}, Landroid/text/style/StrikethroughSpan;-><init>()V

    add-int/lit8 v8, v3, 0x1

    aget v8, v1, v8

    add-int/lit8 v9, v3, 0x2

    aget v9, v1, v9

    add-int/2addr v9, v7

    invoke-virtual {v2, v5, v8, v9, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v5, p0

    goto/16 :goto_279

    .line 280
    :cond_121
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetlistItemId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-ne v4, v5, :cond_13e

    .line 281
    new-instance v5, Landroid/text/style/BulletSpan;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Landroid/text/style/BulletSpan;-><init>(I)V

    add-int/lit8 v6, v3, 0x1

    aget v6, v1, v6

    add-int/lit8 v8, v3, 0x2

    aget v8, v1, v8

    add-int/2addr v8, v7

    invoke-static {v2, v5, v6, v8}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    move-object/from16 v5, p0

    goto/16 :goto_279

    .line 283
    :cond_13e
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetmarqueeId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-ne v4, v5, :cond_158

    .line 284
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    add-int/lit8 v6, v3, 0x1

    aget v6, v1, v6

    add-int/lit8 v8, v3, 0x2

    aget v8, v1, v8

    add-int/2addr v8, v7

    const/16 v7, 0x12

    invoke-virtual {v2, v5, v6, v8, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v5, p0

    goto/16 :goto_279

    .line 288
    :cond_158
    move-object/from16 v5, p0

    iget-wide v8, v5, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v8, v9, v4}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v8

    .line 289
    .local v8, "tag":Ljava/lang/String;
    if-nez v8, :cond_164

    .line 290
    const/4 v6, 0x0

    return-object v6

    .line 293
    :cond_164
    const-string v9, "font;"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_20a

    .line 296
    const-string v9, ";height="

    invoke-static {v8, v9}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 297
    .local v9, "sub":Ljava/lang/String;
    if-eqz v9, :cond_189

    .line 298
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 299
    .local v10, "size":I
    new-instance v11, Landroid/content/res/StringBlock$Height;

    invoke-direct {v11, v10}, Landroid/content/res/StringBlock$Height;-><init>(I)V

    add-int/lit8 v12, v3, 0x1

    aget v12, v1, v12

    add-int/lit8 v13, v3, 0x2

    aget v13, v1, v13

    add-int/2addr v13, v7

    invoke-static {v2, v11, v12, v13}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 303
    .end local v10    # "size":I
    :cond_189
    const-string v10, ";size="

    invoke-static {v8, v10}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 304
    if-eqz v9, :cond_1a6

    .line 305
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 306
    .restart local v10    # "size":I
    new-instance v11, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v11, v10, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    add-int/lit8 v12, v3, 0x1

    aget v12, v1, v12

    add-int/lit8 v13, v3, 0x2

    aget v13, v1, v13

    add-int/2addr v13, v7

    invoke-virtual {v2, v11, v12, v13, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 311
    .end local v10    # "size":I
    :cond_1a6
    const-string v10, ";fgcolor="

    invoke-static {v8, v10}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 312
    if-eqz v9, :cond_1be

    .line 313
    invoke-static {v9, v7}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v10

    add-int/lit8 v11, v3, 0x1

    aget v11, v1, v11

    add-int/lit8 v12, v3, 0x2

    aget v12, v1, v12

    add-int/2addr v12, v7

    invoke-virtual {v2, v10, v11, v12, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 318
    :cond_1be
    const-string v10, ";color="

    invoke-static {v8, v10}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 319
    if-eqz v9, :cond_1d6

    .line 320
    invoke-static {v9, v7}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v10

    add-int/lit8 v11, v3, 0x1

    aget v11, v1, v11

    add-int/lit8 v12, v3, 0x2

    aget v12, v1, v12

    add-int/2addr v12, v7

    invoke-virtual {v2, v10, v11, v12, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 325
    :cond_1d6
    const-string v10, ";bgcolor="

    invoke-static {v8, v10}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 326
    if-eqz v9, :cond_1ef

    .line 327
    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v10

    add-int/lit8 v11, v3, 0x1

    aget v11, v1, v11

    add-int/lit8 v12, v3, 0x2

    aget v12, v1, v12

    add-int/2addr v12, v7

    invoke-virtual {v2, v10, v11, v12, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 332
    :cond_1ef
    const-string v10, ";face="

    invoke-static {v8, v10}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 333
    if-eqz v9, :cond_208

    .line 334
    new-instance v10, Landroid/text/style/TypefaceSpan;

    invoke-direct {v10, v9}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v11, v3, 0x1

    aget v11, v1, v11

    add-int/lit8 v12, v3, 0x2

    aget v12, v1, v12

    add-int/2addr v12, v7

    invoke-virtual {v2, v10, v11, v12, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 338
    .end local v9    # "sub":Ljava/lang/String;
    :cond_208
    goto/16 :goto_279

    :cond_20a
    const-string v9, "a;"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_22c

    .line 341
    const-string v9, ";href="

    invoke-static {v8, v9}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 342
    .restart local v9    # "sub":Ljava/lang/String;
    if-eqz v9, :cond_278

    .line 343
    new-instance v10, Landroid/text/style/URLSpan;

    invoke-direct {v10, v9}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v11, v3, 0x1

    aget v11, v1, v11

    add-int/lit8 v12, v3, 0x2

    aget v12, v1, v12

    add-int/2addr v12, v7

    invoke-virtual {v2, v10, v11, v12, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_278

    .line 347
    .end local v9    # "sub":Ljava/lang/String;
    :cond_22c
    const-string v9, "annotation;"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_278

    .line 348
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 351
    .local v9, "len":I
    const/16 v10, 0x3b

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .local v11, "t":I
    :goto_23e
    if-ge v11, v9, :cond_279

    .line 352
    const/16 v12, 0x3d

    invoke-virtual {v8, v12, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 353
    .local v12, "eq":I
    if-gez v12, :cond_249

    .line 354
    goto :goto_279

    .line 357
    :cond_249
    invoke-virtual {v8, v10, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 358
    .local v13, "next":I
    if-gez v13, :cond_250

    .line 359
    move v13, v9

    .line 362
    :cond_250
    add-int/lit8 v14, v11, 0x1

    invoke-virtual {v8, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 363
    .local v14, "key":Ljava/lang/String;
    add-int/lit8 v15, v12, 0x1

    invoke-virtual {v8, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 365
    .local v15, "value":Ljava/lang/String;
    new-instance v10, Landroid/text/Annotation;

    invoke-direct {v10, v14, v15}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v16, v3, 0x1

    aget v6, v1, v16

    add-int/lit8 v16, v3, 0x2

    aget v16, v1, v16

    add-int/lit8 v0, v16, 0x1

    const/16 v7, 0x21

    invoke-virtual {v2, v10, v6, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 351
    .end local v12    # "eq":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    move v11, v13

    move-object/from16 v0, p1

    move v6, v7

    const/4 v7, 0x1

    const/16 v10, 0x3b

    goto :goto_23e

    .line 347
    .end local v9    # "len":I
    .end local v11    # "t":I
    .end local v13    # "next":I
    :cond_278
    :goto_278
    nop

    .line 372
    .end local v8    # "tag":Ljava/lang/String;
    :cond_279
    :goto_279
    nop

    .end local v4    # "type":I
    add-int/lit8 v3, v3, 0x3

    .line 373
    move-object/from16 v0, p1

    goto/16 :goto_e

    .line 374
    :cond_280
    move-object/from16 v5, p0

    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private static greylist-max-o getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;
    .registers 14
    .param p0, "color"    # Ljava/lang/String;
    .param p1, "foreground"    # Z

    .line 392
    const/high16 v0, -0x1000000

    .line 394
    .local v0, "c":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 395
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 396
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 397
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 398
    .local v2, "name":Ljava/lang/String;
    const-string v3, "color"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 399
    .local v3, "colorRes":I
    if-eqz v3, :cond_3a

    .line 400
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 401
    .local v4, "colors":Landroid/content/res/ColorStateList;
    if-eqz p1, :cond_36

    .line 402
    new-instance v11, Landroid/text/style/TextAppearanceSpan;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, v11

    move-object v9, v4

    invoke-direct/range {v5 .. v10}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object v11

    .line 404
    :cond_36
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 407
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "colorRes":I
    .end local v4    # "colors":Landroid/content/res/ColorStateList;
    :cond_3a
    goto :goto_44

    .line 409
    :cond_3b
    :try_start_3b
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3b .. :try_end_3f} :catch_41

    move v0, v1

    .line 412
    goto :goto_44

    .line 410
    :catch_41
    move-exception v1

    .line 411
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const/high16 v0, -0x1000000

    .line 416
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_44
    :goto_44
    if-eqz p1, :cond_4c

    .line 417
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    return-object v1

    .line 419
    :cond_4c
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    return-object v1
.end method

.method private static native greylist-max-o nativeCreate([BII)J
.end method

.method private static native greylist-max-o nativeDestroy(J)V
.end method

.method private static native greylist-max-o nativeGetSize(J)I
.end method

.method private static native greylist-max-o nativeGetString(JI)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetStyle(JI)[I
.end method

.method private static greylist-max-o subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "full"    # Ljava/lang/String;
    .param p1, "attribute"    # Ljava/lang/String;

    .line 452
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 453
    .local v0, "start":I
    if-gez v0, :cond_8

    .line 454
    const/4 v1, 0x0

    return-object v1

    .line 457
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 458
    const/16 v1, 0x3b

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 460
    .local v1, "end":I
    if-gez v1, :cond_1a

    .line 461
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 463
    :cond_1a
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 203
    monitor-enter p0

    .line 204
    :try_start_1
    iget-boolean v0, p0, Landroid/content/res/StringBlock;->mOpen:Z

    if-eqz v0, :cond_11

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOpen:Z

    .line 207
    iget-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    if-eqz v0, :cond_11

    .line 208
    iget-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->nativeDestroy(J)V

    .line 211
    :cond_11
    monitor-exit p0

    .line 212
    return-void

    .line 211
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 195
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 197
    invoke-virtual {p0}, Landroid/content/res/StringBlock;->close()V

    .line 198
    nop

    .line 199
    return-void

    .line 197
    :catchall_8
    move-exception v0

    invoke-virtual {p0}, Landroid/content/res/StringBlock;->close()V

    .line 198
    throw v0
.end method

.method public greylist get(I)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "idx"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    invoke-virtual {p0, p1}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 100
    .local v0, "seq":Ljava/lang/CharSequence;
    if-nez v0, :cond_9

    const-string v1, ""

    goto :goto_a

    :cond_9
    move-object v1, v0

    :goto_a
    return-object v1
.end method

.method public blacklist getSequence(I)Ljava/lang/CharSequence;
    .registers 10
    .param p1, "idx"    # I

    .line 105
    monitor-enter p0

    .line 106
    :try_start_1
    iget-object v0, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_c

    .line 107
    aget-object v0, v0, p1

    .line 108
    .local v0, "res":Ljava/lang/CharSequence;
    if-eqz v0, :cond_b

    .line 109
    monitor-exit p0

    return-object v0

    .line 111
    .end local v0    # "res":Ljava/lang/CharSequence;
    :cond_b
    goto :goto_35

    :cond_c
    iget-object v0, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    if-eqz v0, :cond_1b

    .line 112
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 113
    .restart local v0    # "res":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1a

    .line 114
    monitor-exit p0

    return-object v0

    .line 116
    .end local v0    # "res":Ljava/lang/CharSequence;
    :cond_1a
    goto :goto_35

    .line 117
    :cond_1b
    iget-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->nativeGetSize(J)I

    move-result v0

    .line 118
    .local v0, "num":I
    iget-boolean v1, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    if-eqz v1, :cond_31

    const/16 v1, 0xfa

    if-le v0, v1, :cond_31

    .line 119
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    goto :goto_35

    .line 121
    :cond_31
    new-array v1, v0, [Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    .line 124
    .end local v0    # "num":I
    :goto_35
    iget-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v0, v1, p1}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "str":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_40

    .line 126
    monitor-exit p0

    return-object v1

    .line 128
    :cond_40
    move-object v2, v0

    .line 129
    .local v2, "res":Ljava/lang/CharSequence;
    iget-wide v3, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v3, v4, p1}, Landroid/content/res/StringBlock;->nativeGetStyle(JI)[I

    move-result-object v3

    .line 132
    .local v3, "style":[I
    if-eqz v3, :cond_16c

    .line 133
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    if-nez v4, :cond_54

    .line 134
    new-instance v4, Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {v4}, Landroid/content/res/StringBlock$StyleIDs;-><init>()V

    iput-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 139
    :cond_54
    const/4 v4, 0x0

    .local v4, "styleIndex":I
    :goto_55
    array-length v5, v3

    if-ge v4, v5, :cond_165

    .line 140
    aget v5, v3, v4

    .line 142
    .local v5, "styleId":I
    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetboldId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-eq v5, v6, :cond_161

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetitalicId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-eq v5, v6, :cond_161

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetunderlineId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-eq v5, v6, :cond_161

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetttId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-eq v5, v6, :cond_161

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetbigId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-eq v5, v6, :cond_161

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsmallId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-eq v5, v6, :cond_161

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsubId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-eq v5, v6, :cond_161

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsupId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-eq v5, v6, :cond_161

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetstrikeId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-eq v5, v6, :cond_161

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetlistItemId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-eq v5, v6, :cond_161

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetmarqueeId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_b4

    .line 149
    goto/16 :goto_161

    .line 152
    :cond_b4
    iget-wide v6, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v6, v7, v5}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v6

    .line 153
    .local v6, "styleTag":Ljava/lang/String;
    if-nez v6, :cond_be

    .line 154
    monitor-exit p0

    return-object v1

    .line 157
    :cond_be
    const-string v7, "b"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cd

    .line 158
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputboldId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto/16 :goto_161

    .line 159
    :cond_cd
    const-string v7, "i"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_dc

    .line 160
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputitalicId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto/16 :goto_161

    .line 161
    :cond_dc
    const-string/jumbo v7, "u"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ec

    .line 162
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputunderlineId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto/16 :goto_161

    .line 163
    :cond_ec
    const-string/jumbo v7, "tt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_fb

    .line 164
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputttId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_161

    .line 165
    :cond_fb
    const-string v7, "big"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_109

    .line 166
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputbigId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_161

    .line 167
    :cond_109
    const-string/jumbo v7, "small"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_118

    .line 168
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputsmallId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_161

    .line 169
    :cond_118
    const-string/jumbo v7, "sup"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_127

    .line 170
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputsupId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_161

    .line 171
    :cond_127
    const-string/jumbo v7, "sub"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_136

    .line 172
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputsubId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_161

    .line 173
    :cond_136
    const-string/jumbo v7, "strike"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_145

    .line 174
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputstrikeId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_161

    .line 175
    :cond_145
    const-string v7, "li"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_153

    .line 176
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputlistItemId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_161

    .line 177
    :cond_153
    const-string/jumbo v7, "marquee"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_161

    .line 178
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputmarqueeId(Landroid/content/res/StringBlock$StyleIDs;I)V

    .line 139
    .end local v5    # "styleId":I
    .end local v6    # "styleTag":Ljava/lang/String;
    :cond_161
    :goto_161
    add-int/lit8 v4, v4, 0x3

    goto/16 :goto_55

    .line 182
    .end local v4    # "styleIndex":I
    :cond_165
    iget-object v1, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {p0, v0, v3, v1}, Landroid/content/res/StringBlock;->applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v2, v1

    .line 184
    :cond_16c
    if-eqz v2, :cond_17a

    .line 185
    iget-object v1, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_175

    aput-object v2, v1, p1

    goto :goto_17a

    .line 186
    :cond_175
    iget-object v1, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 188
    :cond_17a
    :goto_17a
    monitor-exit p0

    return-object v2

    .line 189
    .end local v0    # "str":Ljava/lang/String;
    .end local v2    # "res":Ljava/lang/CharSequence;
    .end local v3    # "style":[I
    :catchall_17c
    move-exception v0

    monitor-exit p0
    :try_end_17e
    .catchall {:try_start_1 .. :try_end_17e} :catchall_17c

    throw v0
.end method
