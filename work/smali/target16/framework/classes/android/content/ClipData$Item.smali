.class public Landroid/content/ClipData$Item;
.super Ljava/lang/Object;
.source "ClipData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ClipData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ClipData$Item$Builder;
    }
.end annotation


# instance fields
.field private blacklist mActivityInfo:Landroid/content/pm/ActivityInfo;

.field final greylist-max-o mHtmlText:Ljava/lang/String;

.field final greylist-max-o mIntent:Landroid/content/Intent;

.field final blacklist mIntentSender:Landroid/content/IntentSender;

.field final greylist-max-o mText:Ljava/lang/CharSequence;

.field private blacklist mTextLinks:Landroid/view/textclassifier/TextLinks;

.field private blacklist mTokenVerificationEnabled:Z

.field greylist-max-p mUri:Landroid/net/Uri;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivityInfo(Landroid/content/ClipData$Item;)Landroid/content/pm/ActivityInfo;
    .registers 1

    iget-object p0, p0, Landroid/content/ClipData$Item;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTextLinks(Landroid/content/ClipData$Item;)Landroid/view/textclassifier/TextLinks;
    .registers 1

    iget-object p0, p0, Landroid/content/ClipData$Item;->mTextLinks:Landroid/view/textclassifier/TextLinks;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/ClipData$Item;)V
    .registers 3

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iget-object v0, p1, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 304
    iget-object v0, p1, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 305
    iget-object v0, p1, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 306
    iget-object v0, p1, Landroid/content/ClipData$Item;->mIntentSender:Landroid/content/IntentSender;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntentSender:Landroid/content/IntentSender;

    .line 307
    iget-object v0, p1, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 308
    iget-object v0, p1, Landroid/content/ClipData$Item;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 309
    iget-object p1, p1, Landroid/content/ClipData$Item;->mTextLinks:Landroid/view/textclassifier/TextLinks;

    iput-object p1, p0, Landroid/content/ClipData$Item;->mTextLinks:Landroid/view/textclassifier/TextLinks;

    .line 310
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Intent;)V
    .registers 8

    .line 336
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/content/IntentSender;Landroid/net/Uri;)V

    .line 337
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/Uri;)V
    .registers 8

    .line 343
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/content/IntentSender;Landroid/net/Uri;)V

    .line 344
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;)V
    .registers 8

    .line 316
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/content/IntentSender;Landroid/net/Uri;)V

    .line 317
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V
    .registers 10

    .line 351
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/content/IntentSender;Landroid/net/Uri;)V

    .line 352
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 9

    .line 329
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/content/IntentSender;Landroid/net/Uri;)V

    .line 330
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/content/IntentSender;Landroid/net/Uri;)V
    .registers 6

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    if-eqz p2, :cond_10

    if-eqz p1, :cond_8

    goto :goto_10

    .line 370
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Plain text must be supplied if HTML text is supplied"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 373
    :cond_10
    :goto_10
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 374
    iput-object p2, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 375
    iput-object p3, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 376
    iput-object p4, p0, Landroid/content/ClipData$Item;->mIntentSender:Landroid/content/IntentSender;

    .line 377
    iput-object p5, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 378
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/content/IntentSender;Landroid/net/Uri;Landroid/content/ClipData-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/content/IntentSender;Landroid/net/Uri;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V
    .registers 11

    .line 361
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/content/IntentSender;Landroid/net/Uri;)V

    .line 362
    return-void
.end method

.method private greylist-max-o coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;
    .registers 16

    .line 646
    const-string v0, "ClipData"

    iget-object v1, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    const-string v2, ""

    const/4 v3, 0x1

    if-eqz v1, :cond_125

    .line 651
    nop

    .line 653
    const/4 v1, 0x0

    :try_start_b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    const-string/jumbo v6, "text/*"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4
    :try_end_18
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_18} :catch_19

    .line 656
    goto :goto_1b

    .line 654
    :catch_19
    move-exception v4

    move-object v4, v1

    .line 657
    :goto_1b
    nop

    .line 658
    nop

    .line 659
    const-string/jumbo v5, "text/html"

    const/4 v6, 0x0

    if-eqz v4, :cond_40

    .line 660
    array-length v7, v4

    move v8, v6

    move v9, v8

    move v10, v9

    :goto_27
    if-ge v8, v7, :cond_42

    aget-object v11, v4, v8

    .line 661
    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_33

    .line 662
    move v9, v3

    goto :goto_3d

    .line 663
    :cond_33
    const-string/jumbo v12, "text/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3d

    .line 664
    move v10, v3

    .line 660
    :cond_3d
    :goto_3d
    add-int/lit8 v8, v8, 0x1

    goto :goto_27

    .line 659
    :cond_40
    move v9, v6

    move v10, v9

    .line 670
    :cond_42
    if-nez v9, :cond_46

    if-eqz v10, :cond_e5

    .line 671
    :cond_46
    nop

    .line 674
    :try_start_47
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v3, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 676
    if-eqz v9, :cond_50

    goto :goto_53

    :cond_50
    const-string/jumbo v5, "text/plain"

    .line 675
    :goto_53
    invoke-virtual {p1, v3, v5, v1}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 677
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v1

    .line 678
    new-instance p1, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {p1, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 681
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 682
    const/16 v4, 0x2000

    new-array v4, v4, [C

    .line 684
    :goto_6d
    invoke-virtual {p1, v4}, Ljava/io/InputStreamReader;->read([C)I

    move-result v5

    if-lez v5, :cond_77

    .line 685
    invoke-virtual {v3, v4, v6, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_6d

    .line 687
    :cond_77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_7b
    .catch Ljava/lang/SecurityException; {:try_start_47 .. :try_end_7b} :catch_dc
    .catch Ljava/io/FileNotFoundException; {:try_start_47 .. :try_end_7b} :catch_d3
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_7b} :catch_bd
    .catchall {:try_start_47 .. :try_end_7b} :catchall_bb

    .line 688
    if-eqz v9, :cond_a4

    .line 689
    if-eqz p2, :cond_98

    .line 693
    :try_start_7f
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2
    :try_end_83
    .catch Ljava/lang/RuntimeException; {:try_start_7f .. :try_end_83} :catch_8e
    .catch Ljava/lang/SecurityException; {:try_start_7f .. :try_end_83} :catch_dc
    .catch Ljava/io/FileNotFoundException; {:try_start_7f .. :try_end_83} :catch_d3
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_83} :catch_bd
    .catchall {:try_start_7f .. :try_end_83} :catchall_bb

    .line 694
    if-eqz p2, :cond_86

    move-object p1, p2

    .line 727
    :cond_86
    if-eqz v1, :cond_8d

    .line 729
    :try_start_88
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8c

    .line 731
    goto :goto_8d

    .line 730
    :catch_8c
    move-exception p2

    .line 694
    :cond_8d
    :goto_8d
    return-object p1

    .line 695
    :catch_8e
    move-exception p2

    .line 696
    nop

    .line 727
    if-eqz v1, :cond_97

    .line 729
    :try_start_92
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_96

    .line 731
    goto :goto_97

    .line 730
    :catch_96
    move-exception p2

    .line 696
    :cond_97
    :goto_97
    return-object p1

    .line 701
    :cond_98
    :try_start_98
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_9c
    .catch Ljava/lang/SecurityException; {:try_start_98 .. :try_end_9c} :catch_dc
    .catch Ljava/io/FileNotFoundException; {:try_start_98 .. :try_end_9c} :catch_d3
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9c} :catch_bd
    .catchall {:try_start_98 .. :try_end_9c} :catchall_bb

    .line 727
    if-eqz v1, :cond_a3

    .line 729
    :try_start_9e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_a2

    .line 731
    goto :goto_a3

    .line 730
    :catch_a2
    move-exception p2

    .line 701
    :cond_a3
    :goto_a3
    return-object p1

    .line 704
    :cond_a4
    if-eqz p2, :cond_af

    .line 707
    nop

    .line 727
    if-eqz v1, :cond_ae

    .line 729
    :try_start_a9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_ad

    .line 731
    goto :goto_ae

    .line 730
    :catch_ad
    move-exception p2

    .line 707
    :cond_ae
    :goto_ae
    return-object p1

    .line 711
    :cond_af
    :try_start_af
    invoke-static {p1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_b3
    .catch Ljava/lang/SecurityException; {:try_start_af .. :try_end_b3} :catch_dc
    .catch Ljava/io/FileNotFoundException; {:try_start_af .. :try_end_b3} :catch_d3
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b3} :catch_bd
    .catchall {:try_start_af .. :try_end_b3} :catchall_bb

    .line 727
    if-eqz v1, :cond_ba

    .line 729
    :try_start_b5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b8} :catch_b9

    .line 731
    goto :goto_ba

    .line 730
    :catch_b9
    move-exception p2

    .line 711
    :cond_ba
    :goto_ba
    return-object p1

    .line 727
    :catchall_bb
    move-exception p1

    goto :goto_11d

    .line 721
    :catch_bd
    move-exception p1

    .line 723
    :try_start_be
    const-string p2, "Failure loading text"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 724
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_cb
    .catchall {:try_start_be .. :try_end_cb} :catchall_bb

    .line 727
    if-eqz v1, :cond_d2

    .line 729
    :try_start_cd
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_d1

    .line 731
    goto :goto_d2

    .line 730
    :catch_d1
    move-exception p2

    .line 724
    :cond_d2
    :goto_d2
    return-object p1

    .line 717
    :catch_d3
    move-exception p1

    .line 727
    if-eqz v1, :cond_e5

    .line 729
    :goto_d6
    :try_start_d6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_d9} :catch_da

    .line 731
    :goto_d9
    goto :goto_e5

    .line 730
    :catch_da
    move-exception p1

    goto :goto_d9

    .line 714
    :catch_dc
    move-exception p1

    .line 715
    :try_start_dd
    const-string v3, "Failure opening stream"

    invoke-static {v0, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e2
    .catchall {:try_start_dd .. :try_end_e2} :catchall_bb

    .line 727
    if-eqz v1, :cond_e5

    .line 729
    goto :goto_d6

    .line 738
    :cond_e5
    :goto_e5
    iget-object p1, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    .line 739
    const-string v0, "content"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11c

    .line 740
    const-string v0, "android.resource"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11c

    .line 741
    const-string v0, "file"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_104

    goto :goto_11c

    .line 745
    :cond_104
    if-eqz p2, :cond_111

    .line 746
    iget-object p1, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/ClipData$Item;->uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 748
    :cond_111
    iget-object p1, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/ClipData$Item;->uriToHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 742
    :cond_11c
    :goto_11c
    return-object v2

    .line 727
    :goto_11d
    if-eqz v1, :cond_124

    .line 729
    :try_start_11f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_122
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_122} :catch_123

    .line 731
    goto :goto_124

    .line 730
    :catch_123
    move-exception p2

    .line 733
    :cond_124
    :goto_124
    throw p1

    .line 754
    :cond_125
    iget-object p1, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_141

    .line 755
    if-eqz p2, :cond_136

    .line 756
    iget-object p1, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/ClipData$Item;->uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 758
    :cond_136
    iget-object p1, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/ClipData$Item;->uriToHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 763
    :cond_141
    return-object v2
.end method

.method private greylist-max-o uriToHtml(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 768
    const-string v1, "<a href=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    invoke-static {p1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    invoke-static {p1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    const-string p1, "</a>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 6

    .line 777
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 778
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 779
    new-instance v1, Landroid/text/style/URLSpan;

    invoke-direct {v1, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    const/16 v2, 0x21

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 781
    return-object v0
.end method


# virtual methods
.method public whitelist coerceToHtmlText(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 625
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v0

    .line 626
    if-eqz v0, :cond_7

    .line 627
    return-object v0

    .line 631
    :cond_7
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 632
    if-eqz v0, :cond_1d

    .line 633
    instance-of p1, v0, Landroid/text/Spanned;

    if-eqz p1, :cond_18

    .line 634
    check-cast v0, Landroid/text/Spanned;

    invoke-static {v0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 636
    :cond_18
    invoke-static {v0}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 639
    :cond_1d
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/ClipData$Item;->coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object p1

    .line 640
    if-eqz p1, :cond_29

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    return-object p1
.end method

.method public whitelist coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 4

    .line 573
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 574
    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_9

    .line 575
    return-object v0

    .line 577
    :cond_9
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v1

    .line 578
    if-eqz v1, :cond_18

    .line 580
    :try_start_f
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_13} :catch_17

    .line 581
    if-eqz v1, :cond_16

    .line 582
    return-object v1

    .line 586
    :cond_16
    goto :goto_18

    .line 584
    :catch_17
    move-exception v1

    .line 589
    :cond_18
    :goto_18
    if-eqz v0, :cond_1b

    .line 590
    return-object v0

    .line 592
    :cond_1b
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/content/ClipData$Item;->coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public whitelist coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 10

    .line 482
    const-string v0, "ClipData"

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 483
    if-eqz v1, :cond_9

    .line 484
    return-object v1

    .line 488
    :cond_9
    nop

    .line 490
    const/4 v1, 0x0

    :try_start_b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_10

    .line 493
    goto :goto_17

    .line 491
    :catch_10
    move-exception p1

    .line 492
    const-string v2, "Failed to obtain ContentResolver"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v1

    .line 496
    :goto_17
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 497
    if-eqz v2, :cond_a7

    if-eqz p1, :cond_a7

    .line 501
    nop

    .line 502
    nop

    .line 503
    nop

    .line 507
    :try_start_22
    const-string/jumbo v3, "text/*"

    invoke-virtual {p1, v2, v3, v1}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1
    :try_end_29
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_29} :catch_31
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_29} :catch_2f
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_29} :catch_2f
    .catchall {:try_start_22 .. :try_end_29} :catchall_2a

    .line 513
    goto :goto_39

    .line 534
    :catchall_2a
    move-exception p1

    move-object v2, v1

    move-object v3, v2

    goto/16 :goto_9d

    .line 510
    :catch_2f
    move-exception p1

    goto :goto_38

    .line 508
    :catch_31
    move-exception p1

    .line 509
    :try_start_32
    const-string v3, "Failure opening stream"

    invoke-static {v0, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_2a

    .line 513
    nop

    .line 514
    :goto_38
    move-object p1, v1

    :goto_39
    if-eqz p1, :cond_93

    .line 516
    :try_start_3b
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3f} :catch_7a
    .catchall {:try_start_3b .. :try_end_3f} :catchall_74

    .line 517
    :try_start_3f
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_46} :catch_6f
    .catchall {:try_start_3f .. :try_end_46} :catchall_6c

    .line 520
    :try_start_46
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 521
    const/16 v4, 0x2000

    new-array v4, v4, [C

    .line 523
    :goto_51
    invoke-virtual {v3, v4}, Ljava/io/InputStreamReader;->read([C)I

    move-result v5

    if-lez v5, :cond_5c

    .line 524
    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_51

    .line 526
    :cond_5c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_60} :catch_6a
    .catchall {:try_start_46 .. :try_end_60} :catchall_91

    .line 534
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 535
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 536
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 526
    return-object v0

    .line 527
    :catch_6a
    move-exception v1

    goto :goto_7e

    .line 534
    :catchall_6c
    move-exception v0

    move-object v3, v1

    goto :goto_77

    .line 527
    :catch_6f
    move-exception v3

    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    goto :goto_7e

    .line 534
    :catchall_74
    move-exception v0

    move-object v2, v1

    move-object v3, v2

    :goto_77
    move-object v1, p1

    move-object p1, v0

    goto :goto_9d

    .line 527
    :catch_7a
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    move-object v2, v3

    .line 529
    :goto_7e
    :try_start_7e
    const-string v4, "Failure loading text"

    invoke-static {v0, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_87
    .catchall {:try_start_7e .. :try_end_87} :catchall_91

    .line 534
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 535
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 536
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 530
    return-object v0

    .line 534
    :catchall_91
    move-exception v0

    goto :goto_77

    :cond_93
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 535
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 536
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 537
    goto :goto_a7

    .line 534
    :goto_9d
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 535
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 536
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 537
    throw p1

    .line 539
    :cond_a7
    :goto_a7
    const-string p1, ""

    if-eqz v2, :cond_ce

    .line 542
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 543
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cd

    .line 544
    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cd

    .line 545
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c8

    goto :goto_cd

    .line 548
    :cond_c8
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 546
    :cond_cd
    :goto_cd
    return-object p1

    .line 553
    :cond_ce
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 554
    if-eqz v0, :cond_da

    .line 555
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 559
    :cond_da
    return-object p1
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 13

    .line 845
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 847
    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 848
    const-wide v0, 0x10900000001L

    iget-object v2, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    move-object v2, p1

    goto :goto_5a

    .line 849
    :cond_14
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_28

    .line 850
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    move-object v2, p1

    goto :goto_5a

    .line 851
    :cond_28
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_3c

    .line 852
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    move-object v2, p1

    goto :goto_5a

    .line 853
    :cond_3c
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_50

    .line 854
    iget-object v1, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const-wide v3, 0x10b00000004L

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    goto :goto_5a

    .line 856
    :cond_50
    move-object v2, p1

    const-wide v0, 0x10800000005L

    const/4 p1, 0x1

    invoke-virtual {v2, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 859
    :goto_5a
    invoke-virtual {v2, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 860
    return-void
.end method

.method public blacklist getActivityInfo()Landroid/content/pm/ActivityInfo;
    .registers 2

    .line 424
    iget-object v0, p0, Landroid/content/ClipData$Item;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public whitelist getHtmlText()Ljava/lang/String;
    .registers 2

    .line 391
    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIntent()Landroid/content/Intent;
    .registers 2

    .line 398
    iget-boolean v0, p0, Landroid/content/ClipData$Item;->mTokenVerificationEnabled:Z

    if-eqz v0, :cond_9

    .line 399
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    invoke-static {v0}, Landroid/content/Intent;->maybeMarkAsMissingCreatorToken(Ljava/lang/Object;)V

    .line 401
    :cond_9
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getIntentSender()Landroid/content/IntentSender;
    .registers 2

    .line 409
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntentSender:Landroid/content/IntentSender;

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .registers 2

    .line 384
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTextLinks()Landroid/view/textclassifier/TextLinks;
    .registers 2

    .line 448
    iget-object v0, p0, Landroid/content/ClipData$Item;->mTextLinks:Landroid/view/textclassifier/TextLinks;

    return-object v0
.end method

.method public whitelist getUri()Landroid/net/Uri;
    .registers 2

    .line 416
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist setActivityInfo(Landroid/content/pm/ActivityInfo;)V
    .registers 2

    .line 432
    iput-object p1, p0, Landroid/content/ClipData$Item;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 433
    return-void
.end method

.method public blacklist setTextLinks(Landroid/view/textclassifier/TextLinks;)V
    .registers 2

    .line 455
    iput-object p1, p0, Landroid/content/ClipData$Item;->mTextLinks:Landroid/view/textclassifier/TextLinks;

    .line 456
    return-void
.end method

.method blacklist setTokenVerificationEnabled()V
    .registers 2

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/ClipData$Item;->mTokenVerificationEnabled:Z

    .line 226
    return-void
.end method

.method public blacklist toShortString(Ljava/lang/StringBuilder;Z)V
    .registers 10

    .line 802
    nop

    .line 803
    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    const/16 v1, 0x29

    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    .line 804
    nop

    .line 805
    if-eqz p2, :cond_1f

    .line 806
    const-string v0, "H("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 808
    :cond_1f
    const-string v0, "H:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    :goto_2a
    move v0, v2

    goto :goto_2d

    .line 803
    :cond_2c
    const/4 v0, 0x1

    .line 811
    :goto_2d
    iget-object v3, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    const/16 v4, 0x20

    if-eqz v3, :cond_5b

    .line 812
    if-nez v0, :cond_38

    .line 813
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 815
    :cond_38
    nop

    .line 816
    if-eqz p2, :cond_4f

    .line 817
    const-string v0, "T("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5a

    .line 819
    :cond_4f
    const-string v0, "T:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 822
    :goto_5a
    move v0, v2

    :cond_5b
    iget-object v3, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_87

    .line 823
    if-nez v0, :cond_64

    .line 824
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 826
    :cond_64
    nop

    .line 827
    if-eqz p2, :cond_7b

    .line 828
    const-string v0, "U("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_88

    .line 830
    :cond_7b
    const-string v0, "U:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_88

    .line 822
    :cond_87
    move v2, v0

    .line 833
    :goto_88
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_a1

    .line 834
    if-nez v2, :cond_91

    .line 835
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 837
    :cond_91
    nop

    .line 838
    const-string v0, "I:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    iget-object v1, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v4, 0x1

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 841
    :cond_a1
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 788
    const-string v1, "ClipData.Item { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/ClipData$Item;->toShortString(Ljava/lang/StringBuilder;Z)V

    .line 790
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
