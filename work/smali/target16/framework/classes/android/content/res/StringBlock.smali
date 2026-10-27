.class public final Landroid/content/res/StringBlock;
.super Ljava/lang/Object;
.source "StringBlock.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/StringBlock$StyleIDs;,
        Landroid/content/res/StringBlock$Height;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "AssetManager"

.field private static final greylist-max-o localLOGV:Z = false


# instance fields
.field private greylist-max-o mNative:J

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

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOpen:Z

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 608
    iput-wide p1, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 609
    iput-boolean p3, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    .line 610
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    .line 613
    return-void
.end method

.method public constructor greylist-max-o <init>([BIIZ)V
    .registers 7

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOpen:Z

    .line 78
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 89
    invoke-static {p1, p2, p3}, Landroid/content/res/StringBlock;->nativeCreate([BII)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 90
    iput-boolean p4, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    .line 91
    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    .line 94
    return-void
.end method

.method public constructor greylist-max-o <init>([BZ)V
    .registers 6

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOpen:Z

    .line 78
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 81
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/content/res/StringBlock;->nativeCreate([BII)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 82
    iput-boolean p2, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    .line 83
    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    .line 86
    return-void
.end method

.method private static greylist-max-o addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 7

    .line 486
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 488
    const/16 v1, 0xa

    if-eqz p2, :cond_1f

    if-eq p2, v0, :cond_1f

    add-int/lit8 v2, p2, -0x1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_1f

    .line 489
    :cond_12
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_1f

    .line 490
    add-int/lit8 v2, p2, -0x1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_12

    .line 491
    nop

    .line 496
    :cond_1f
    if-eqz p3, :cond_38

    if-eq p3, v0, :cond_38

    add-int/lit8 v2, p3, -0x1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_38

    .line 497
    :cond_2b
    add-int/lit8 p3, p3, 0x1

    if-ge p3, v0, :cond_38

    .line 498
    add-int/lit8 v2, p3, -0x1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_2b

    .line 499
    nop

    .line 504
    :cond_38
    const/16 v0, 0x33

    invoke-interface {p0, p1, p2, p3, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 505
    return-void
.end method

.method private greylist-max-o applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;)Ljava/lang/CharSequence;
    .registers 15

    .line 241
    array-length v0, p2

    if-nez v0, :cond_4

    .line 242
    return-object p1

    .line 244
    :cond_4
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 245
    const/4 p1, 0x0

    move v1, p1

    .line 246
    :goto_b
    array-length v2, p2

    if-ge v1, v2, :cond_331

    .line 247
    aget v2, p2, v1

    .line 252
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetboldId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    const/16 v4, 0x21

    const/4 v5, 0x1

    if-ne v2, v3, :cond_3b

    .line 253
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    .line 254
    nop

    .line 255
    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 256
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v5, v2}, Landroid/text/style/StyleSpan;-><init>(II)V

    add-int/lit8 v2, v1, 0x1

    aget v2, p2, v2

    add-int/lit8 v6, v1, 0x2

    aget v6, p2, v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v3, v2, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 259
    goto/16 :goto_32d

    :cond_3b
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetitalicId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    const/4 v6, 0x2

    if-ne v2, v3, :cond_55

    .line 260
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    add-int/lit8 v6, v1, 0x2

    aget v6, p2, v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v2, v3, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_32d

    .line 263
    :cond_55
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetunderlineId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    if-ne v2, v3, :cond_6e

    .line 264
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    add-int/lit8 v6, v1, 0x2

    aget v6, p2, v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v2, v3, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_32d

    .line 267
    :cond_6e
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetttId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    if-ne v2, v3, :cond_8a

    .line 268
    new-instance v2, Landroid/text/style/TypefaceSpan;

    const-string/jumbo v3, "monospace"

    invoke-direct {v2, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    add-int/lit8 v6, v1, 0x2

    aget v6, p2, v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v2, v3, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_32d

    .line 271
    :cond_8a
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetbigId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    if-ne v2, v3, :cond_a5

    .line 272
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    add-int/lit8 v6, v1, 0x2

    aget v6, p2, v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v2, v3, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_32d

    .line 275
    :cond_a5
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsmallId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    if-ne v2, v3, :cond_c1

    .line 276
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    add-int/lit8 v6, v1, 0x2

    aget v6, p2, v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v2, v3, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_32d

    .line 279
    :cond_c1
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsubId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    if-ne v2, v3, :cond_da

    .line 280
    new-instance v2, Landroid/text/style/SubscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SubscriptSpan;-><init>()V

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    add-int/lit8 v6, v1, 0x2

    aget v6, p2, v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v2, v3, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_32d

    .line 283
    :cond_da
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsupId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    if-ne v2, v3, :cond_f3

    .line 284
    new-instance v2, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SuperscriptSpan;-><init>()V

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    add-int/lit8 v6, v1, 0x2

    aget v6, p2, v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v2, v3, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_32d

    .line 287
    :cond_f3
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetstrikeId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    if-ne v2, v3, :cond_10c

    .line 288
    new-instance v2, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v2}, Landroid/text/style/StrikethroughSpan;-><init>()V

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    add-int/lit8 v6, v1, 0x2

    aget v6, p2, v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v2, v3, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_32d

    .line 291
    :cond_10c
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetlistItemId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    if-ne v2, v3, :cond_127

    .line 292
    new-instance v2, Landroid/text/style/BulletSpan;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Landroid/text/style/BulletSpan;-><init>(I)V

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    add-int/lit8 v4, v1, 0x2

    aget v4, p2, v4

    add-int/2addr v4, v5

    invoke-static {v0, v2, v3, v4}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    goto/16 :goto_32d

    .line 294
    :cond_127
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetmarqueeId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    if-ne v2, v3, :cond_13f

    .line 295
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    add-int/lit8 v4, v1, 0x2

    aget v4, p2, v4

    add-int/2addr v4, v5

    const/16 v5, 0x12

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_32d

    .line 298
    :cond_13f
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetmNoBreakId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    const/16 v7, 0x11

    if-ne v2, v3, :cond_159

    .line 299
    invoke-static {}, Landroid/text/style/LineBreakConfigSpan;->createNoBreakSpan()Landroid/text/style/LineBreakConfigSpan;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    add-int/lit8 v4, v1, 0x2

    aget v4, p2, v4

    add-int/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_32d

    .line 302
    :cond_159
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetmNoHyphenId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    if-ne v2, v3, :cond_171

    .line 303
    invoke-static {}, Landroid/text/style/LineBreakConfigSpan;->createNoHyphenationSpan()Landroid/text/style/LineBreakConfigSpan;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    add-int/lit8 v4, v1, 0x2

    aget v4, p2, v4

    add-int/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_32d

    .line 307
    :cond_171
    iget-wide v7, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v7, v8, v2}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v2

    .line 308
    if-nez v2, :cond_17b

    .line 309
    const/4 p1, 0x0

    return-object p1

    .line 311
    :cond_17b
    const-string v3, "font;"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_220

    .line 314
    const-string v3, ";height="

    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 315
    if-eqz v3, :cond_1a0

    .line 316
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 317
    new-instance v6, Landroid/content/res/StringBlock$Height;

    invoke-direct {v6, v3}, Landroid/content/res/StringBlock$Height;-><init>(I)V

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    add-int/lit8 v7, v1, 0x2

    aget v7, p2, v7

    add-int/2addr v7, v5

    invoke-static {v0, v6, v3, v7}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 321
    :cond_1a0
    const-string v3, ";size="

    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 322
    if-eqz v3, :cond_1bd

    .line 323
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 324
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v6, v3, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    add-int/lit8 v7, v1, 0x2

    aget v7, p2, v7

    add-int/2addr v7, v5

    invoke-virtual {v0, v6, v3, v7, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 329
    :cond_1bd
    const-string v3, ";fgcolor="

    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 330
    if-eqz v3, :cond_1d5

    .line 331
    invoke-static {v3, v5}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v3

    add-int/lit8 v6, v1, 0x1

    aget v6, p2, v6

    add-int/lit8 v7, v1, 0x2

    aget v7, p2, v7

    add-int/2addr v7, v5

    invoke-virtual {v0, v3, v6, v7, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 336
    :cond_1d5
    const-string v3, ";color="

    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 337
    if-eqz v3, :cond_1ed

    .line 338
    invoke-static {v3, v5}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v3

    add-int/lit8 v6, v1, 0x1

    aget v6, p2, v6

    add-int/lit8 v7, v1, 0x2

    aget v7, p2, v7

    add-int/2addr v7, v5

    invoke-virtual {v0, v3, v6, v7, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 343
    :cond_1ed
    const-string v3, ";bgcolor="

    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 344
    if-eqz v3, :cond_205

    .line 345
    invoke-static {v3, p1}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v3

    add-int/lit8 v6, v1, 0x1

    aget v6, p2, v6

    add-int/lit8 v7, v1, 0x2

    aget v7, p2, v7

    add-int/2addr v7, v5

    invoke-virtual {v0, v3, v6, v7, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 350
    :cond_205
    const-string v3, ";face="

    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 351
    if-eqz v2, :cond_21e

    .line 352
    new-instance v3, Landroid/text/style/TypefaceSpan;

    invoke-direct {v3, v2}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v1, 0x1

    aget v2, p2, v2

    add-int/lit8 v6, v1, 0x2

    aget v6, p2, v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v3, v2, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 356
    :cond_21e
    goto/16 :goto_32d

    :cond_220
    const-string v3, "a;"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_243

    .line 359
    const-string v3, ";href="

    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 360
    if-eqz v2, :cond_241

    .line 361
    new-instance v3, Landroid/text/style/URLSpan;

    invoke-direct {v3, v2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v1, 0x1

    aget v2, p2, v2

    add-int/lit8 v6, v1, 0x2

    aget v6, p2, v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v3, v2, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 365
    :cond_241
    goto/16 :goto_32d

    :cond_243
    const-string v3, "annotation;"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_287

    .line 366
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 369
    const/16 v6, 0x3b

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    :goto_255
    if-ge v7, v3, :cond_32c

    .line 370
    const/16 v8, 0x3d

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 371
    if-gez v8, :cond_261

    .line 372
    goto/16 :goto_32c

    .line 375
    :cond_261
    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 376
    if-gez v9, :cond_268

    .line 377
    move v9, v3

    .line 380
    :cond_268
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 381
    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 383
    new-instance v10, Landroid/text/Annotation;

    invoke-direct {v10, v7, v8}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v1, 0x1

    aget v7, p2, v7

    add-int/lit8 v8, v1, 0x2

    aget v8, p2, v8

    add-int/2addr v8, v5

    invoke-virtual {v0, v10, v7, v8, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 369
    move v7, v9

    goto :goto_255

    .line 387
    :cond_287
    const-string/jumbo v3, "lineBreakConfig;"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32c

    .line 388
    const-string v3, ";style="

    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 389
    nop

    .line 390
    const-string v7, "AssetManager"

    const-string/jumbo v8, "none"

    const/4 v9, -0x1

    if-eqz v3, :cond_2dd

    .line 391
    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2a7

    .line 392
    move v6, p1

    goto :goto_2de

    .line 393
    :cond_2a7
    const-string/jumbo v10, "normal"

    invoke-virtual {v3, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2b1

    .line 394
    goto :goto_2de

    .line 395
    :cond_2b1
    const-string/jumbo v6, "loose"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2bc

    .line 396
    move v6, v5

    goto :goto_2de

    .line 397
    :cond_2bc
    const-string/jumbo v6, "strict"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c7

    .line 398
    const/4 v6, 0x3

    goto :goto_2de

    .line 400
    :cond_2c7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown LineBreakConfig style: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_2dd
    move v6, v9

    :goto_2de
    const-string v3, ";wordStyle="

    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 405
    nop

    .line 406
    if-eqz v2, :cond_310

    .line 407
    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ef

    .line 408
    move v2, p1

    goto :goto_311

    .line 409
    :cond_2ef
    const-string/jumbo v3, "phrase"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2fa

    .line 410
    move v2, v5

    goto :goto_311

    .line 412
    :cond_2fa
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown LineBreakConfig word style: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_310
    move v2, v9

    :goto_311
    if-ne v6, v9, :cond_315

    if-eq v2, v9, :cond_32d

    .line 419
    :cond_315
    new-instance v3, Landroid/text/style/LineBreakConfigSpan;

    new-instance v7, Landroid/graphics/text/LineBreakConfig;

    invoke-direct {v7, v6, v2, v9}, Landroid/graphics/text/LineBreakConfig;-><init>(III)V

    invoke-direct {v3, v7}, Landroid/text/style/LineBreakConfigSpan;-><init>(Landroid/graphics/text/LineBreakConfig;)V

    add-int/lit8 v2, v1, 0x1

    aget v2, p2, v2

    add-int/lit8 v6, v1, 0x2

    aget v6, p2, v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v3, v2, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_32d

    .line 387
    :cond_32c
    :goto_32c
    nop

    .line 428
    :cond_32d
    :goto_32d
    add-int/lit8 v1, v1, 0x3

    .line 429
    goto/16 :goto_b

    .line 430
    :cond_331
    new-instance p1, Landroid/text/SpannedString;

    invoke-direct {p1, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method private static greylist-max-o getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;
    .registers 10

    .line 448
    nop

    .line 450
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v1, -0x1000000

    if-nez v0, :cond_42

    .line 451
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 452
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 453
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 454
    const-string v2, "color"

    const-string v3, "android"

    invoke-virtual {v0, p0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 455
    if-eqz p0, :cond_3a

    .line 456
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 457
    if-eqz p1, :cond_35

    .line 458
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object v2

    .line 460
    :cond_35
    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    move v1, p0

    .line 463
    :cond_3a
    goto :goto_42

    .line 465
    :cond_3b
    :try_start_3b
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3b .. :try_end_3f} :catch_40

    .line 468
    goto :goto_42

    .line 466
    :catch_40
    move-exception v0

    .line 467
    nop

    .line 472
    :cond_42
    :goto_42
    if-eqz p1, :cond_4a

    .line 473
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    return-object p0

    .line 475
    :cond_4a
    new-instance p0, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {p0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    return-object p0
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
    .registers 3

    .line 508
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 509
    if-gez v0, :cond_8

    .line 510
    const/4 p0, 0x0

    return-object p0

    .line 513
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    .line 514
    const/16 p1, 0x3b

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    .line 516
    if-gez p1, :cond_1a

    .line 517
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 519
    :cond_1a
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 211
    monitor-enter p0

    .line 212
    :try_start_1
    iget-boolean v0, p0, Landroid/content/res/StringBlock;->mOpen:Z

    if-eqz v0, :cond_15

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOpen:Z

    .line 215
    iget-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    if-eqz v0, :cond_11

    .line 216
    iget-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->nativeDestroy(J)V

    .line 218
    :cond_11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 220
    :cond_15
    monitor-exit p0

    .line 221
    return-void

    .line 220
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 203
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 205
    invoke-virtual {p0}, Landroid/content/res/StringBlock;->close()V

    .line 206
    nop

    .line 207
    return-void

    .line 205
    :catchall_8
    move-exception v0

    invoke-virtual {p0}, Landroid/content/res/StringBlock;->close()V

    .line 206
    throw v0
.end method

.method public greylist get(I)Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    invoke-virtual {p0, p1}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 104
    if-nez p1, :cond_8

    const-string p1, ""

    :cond_8
    return-object p1
.end method

.method public blacklist getSequence(I)Ljava/lang/CharSequence;
    .registers 9

    .line 109
    monitor-enter p0

    .line 110
    :try_start_1
    iget-object v0, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_e

    .line 111
    iget-object v0, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    .line 112
    if-eqz v0, :cond_d

    .line 113
    monitor-exit p0

    return-object v0

    .line 115
    :cond_d
    goto :goto_39

    :cond_e
    iget-object v0, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    if-eqz v0, :cond_1f

    .line 116
    iget-object v0, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 117
    if-eqz v0, :cond_1e

    .line 118
    monitor-exit p0

    return-object v0

    .line 120
    :cond_1e
    goto :goto_39

    .line 121
    :cond_1f
    iget-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->nativeGetSize(J)I

    move-result v0

    .line 122
    iget-boolean v1, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    if-eqz v1, :cond_35

    const/16 v1, 0xfa

    if-le v0, v1, :cond_35

    .line 123
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    goto :goto_39

    .line 125
    :cond_35
    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    .line 128
    :goto_39
    iget-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v0, v1, p1}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v0

    .line 129
    const/4 v1, 0x0

    if-nez v0, :cond_44

    .line 130
    monitor-exit p0

    return-object v1

    .line 132
    :cond_44
    nop

    .line 133
    iget-wide v2, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v2, v3, p1}, Landroid/content/res/StringBlock;->nativeGetStyle(JI)[I

    move-result-object v2

    .line 136
    if-eqz v2, :cond_190

    .line 137
    iget-object v3, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    if-nez v3, :cond_58

    .line 138
    new-instance v3, Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {v3}, Landroid/content/res/StringBlock$StyleIDs;-><init>()V

    iput-object v3, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 143
    :cond_58
    const/4 v3, 0x0

    :goto_59
    array-length v4, v2

    if-ge v3, v4, :cond_18a

    .line 144
    aget v4, v2, v3

    .line 146
    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetboldId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-eq v4, v5, :cond_186

    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetitalicId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-eq v4, v5, :cond_186

    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetunderlineId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-eq v4, v5, :cond_186

    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetttId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-eq v4, v5, :cond_186

    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetbigId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-eq v4, v5, :cond_186

    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsmallId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-eq v4, v5, :cond_186

    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsubId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-eq v4, v5, :cond_186

    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsupId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-eq v4, v5, :cond_186

    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetstrikeId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-eq v4, v5, :cond_186

    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetlistItemId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-eq v4, v5, :cond_186

    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetmarqueeId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-ne v4, v5, :cond_b8

    .line 153
    goto/16 :goto_186

    .line 156
    :cond_b8
    iget-wide v5, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v5, v6, v4}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v5

    .line 157
    if-nez v5, :cond_c2

    .line 158
    monitor-exit p0

    return-object v1

    .line 161
    :cond_c2
    const-string v6, "b"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d1

    .line 162
    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5, v4}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputboldId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto/16 :goto_186

    .line 163
    :cond_d1
    const-string v6, "i"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e0

    .line 164
    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5, v4}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputitalicId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto/16 :goto_186

    .line 165
    :cond_e0
    const-string/jumbo v6, "u"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f0

    .line 166
    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5, v4}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputunderlineId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto/16 :goto_186

    .line 167
    :cond_f0
    const-string/jumbo v6, "tt"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_100

    .line 168
    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5, v4}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputttId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto/16 :goto_186

    .line 169
    :cond_100
    const-string v6, "big"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10f

    .line 170
    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5, v4}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputbigId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto/16 :goto_186

    .line 171
    :cond_10f
    const-string/jumbo v6, "small"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11e

    .line 172
    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5, v4}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputsmallId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_186

    .line 173
    :cond_11e
    const-string/jumbo v6, "sup"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12d

    .line 174
    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5, v4}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputsupId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_186

    .line 175
    :cond_12d
    const-string/jumbo v6, "sub"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13c

    .line 176
    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5, v4}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputsubId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_186

    .line 177
    :cond_13c
    const-string/jumbo v6, "strike"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14b

    .line 178
    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5, v4}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputstrikeId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_186

    .line 179
    :cond_14b
    const-string/jumbo v6, "li"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15a

    .line 180
    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5, v4}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputlistItemId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_186

    .line 181
    :cond_15a
    const-string/jumbo v6, "marquee"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_169

    .line 182
    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5, v4}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputmarqueeId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_186

    .line 183
    :cond_169
    const-string/jumbo v6, "nobreak"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_178

    .line 184
    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5, v4}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputmNoBreakId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_186

    .line 185
    :cond_178
    const-string/jumbo v6, "nohyphen"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_186

    .line 186
    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5, v4}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputmNoHyphenId(Landroid/content/res/StringBlock$StyleIDs;I)V

    .line 143
    :cond_186
    :goto_186
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_59

    .line 190
    :cond_18a
    iget-object v1, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {p0, v0, v2, v1}, Landroid/content/res/StringBlock;->applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 192
    :cond_190
    if-eqz v0, :cond_1a0

    .line 193
    iget-object v1, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_19b

    iget-object v1, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    aput-object v0, v1, p1

    goto :goto_1a0

    .line 194
    :cond_19b
    iget-object v1, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    :cond_1a0
    :goto_1a0
    monitor-exit p0

    return-object v0

    .line 197
    :catchall_1a2
    move-exception p1

    monitor-exit p0
    :try_end_1a4
    .catchall {:try_start_1 .. :try_end_1a4} :catchall_1a2

    throw p1
.end method
