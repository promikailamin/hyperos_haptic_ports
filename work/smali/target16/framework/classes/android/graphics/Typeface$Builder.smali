.class public final Landroid/graphics/Typeface$Builder;
.super Ljava/lang/Object;
.source "Typeface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static final greylist-max-o BOLD_WEIGHT:I = 0x2bc

.field public static final greylist-max-o NORMAL_WEIGHT:I = 0x190


# instance fields
.field private final greylist-max-o mAssetManager:Landroid/content/res/AssetManager;

.field private greylist-max-o mFallbackFamilyName:Ljava/lang/String;

.field private final blacklist mFontBuilder:Landroid/graphics/fonts/Font$Builder;

.field private greylist-max-o mItalic:I

.field private final greylist-max-o mPath:Ljava/lang/String;

.field private greylist-max-o mWeight:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-static/range {p0 .. p6}, Landroid/graphics/Typeface$Builder;->createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .registers 5

    .line 617
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/graphics/Typeface$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)V

    .line 618
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)V
    .registers 6

    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 563
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 630
    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)V

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    .line 631
    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    .line 632
    iput-object p2, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    .line 633
    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/File;)V
    .registers 3

    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 563
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 571
    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v0, p1}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    .line 572
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    .line 573
    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    .line 574
    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/FileDescriptor;)V
    .registers 4

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 563
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 587
    const/4 v0, 0x0

    :try_start_9
    new-instance v1, Landroid/graphics/fonts/Font$Builder;

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_12} :catch_13

    .line 593
    goto :goto_15

    .line 588
    :catch_13
    move-exception p1

    .line 592
    move-object v1, v0

    .line 594
    :goto_15
    iput-object v1, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    .line 595
    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    .line 596
    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    .line 597
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 563
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 605
    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    .line 606
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    .line 607
    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    .line 608
    return-void
.end method

.method private static greylist-max-o createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;
    .registers 13

    .line 733
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    move-result-object p0

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 735
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 736
    const/4 v2, 0x0

    move v3, v2

    :goto_f
    const-string v4, "-"

    if-ge v3, v1, :cond_22

    .line 737
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 740
    :cond_22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    const-string p0, "--"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    if-eqz p3, :cond_6d

    .line 753
    array-length p0, p3

    :goto_51
    if-ge v2, p0, :cond_6d

    aget-object p1, p3, v2

    .line 754
    invoke-virtual {p1}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    invoke-virtual {p1}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 759
    :cond_6d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o resolveFallbackTypeface()Landroid/graphics/Typeface;
    .registers 7

    .line 763
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 764
    const/4 v0, 0x0

    return-object v0

    .line 767
    :cond_6
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Typeface;->-$$Nest$smgetSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 768
    iget v1, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    iget v1, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    if-ne v1, v2, :cond_16

    .line 769
    return-object v0

    .line 772
    :cond_16
    iget v1, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    if-ne v1, v2, :cond_1f

    invoke-static {v0}, Landroid/graphics/Typeface;->-$$Nest$fgetmWeight(Landroid/graphics/Typeface;)I

    move-result v1

    goto :goto_21

    :cond_1f
    iget v1, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 774
    :goto_21
    iget v3, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v2, :cond_30

    invoke-static {v0}, Landroid/graphics/Typeface;->-$$Nest$fgetmStyle(Landroid/graphics/Typeface;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_35

    goto :goto_34

    :cond_30
    iget v2, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    if-ne v2, v5, :cond_35

    :goto_34
    move v4, v5

    .line 775
    :cond_35
    invoke-static {v0, v1, v4}, Landroid/graphics/Typeface;->-$$Nest$smcreateWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist build()Landroid/graphics/Typeface;
    .registers 10

    .line 784
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    if-nez v0, :cond_9

    .line 785
    invoke-direct {p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 788
    :cond_9
    :try_start_9
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v0}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v0

    .line 789
    iget-object v1, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    if-nez v1, :cond_15

    const/4 v1, 0x0

    goto :goto_34

    :cond_15
    iget-object v2, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v3, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    .line 790
    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v5

    iget v6, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    iget v7, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 792
    iget-object v1, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    if-nez v1, :cond_2d

    const-string/jumbo v1, "sans-serif"

    goto :goto_2f

    :cond_2d
    iget-object v1, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    :goto_2f
    move-object v8, v1

    .line 789
    invoke-static/range {v2 .. v8}, Landroid/graphics/Typeface$Builder;->createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 793
    :goto_34
    if-eqz v1, :cond_4e

    .line 795
    invoke-static {}, Landroid/graphics/Typeface;->-$$Nest$sfgetsDynamicCacheLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_3b} :catch_a5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_3b} :catch_a5

    .line 796
    :try_start_3b
    invoke-static {}, Landroid/graphics/Typeface;->-$$Nest$sfgetsDynamicTypefaceCache()Landroid/util/LruCache;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    .line 797
    if-eqz v3, :cond_49

    .line 798
    monitor-exit v2

    return-object v3

    .line 800
    :cond_49
    monitor-exit v2

    goto :goto_4e

    :catchall_4b
    move-exception v0

    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_3b .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw v0

    .line 802
    :cond_4e
    :goto_4e
    new-instance v2, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v2, v0}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    invoke-virtual {v2}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v2

    .line 803
    iget v3, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_65

    .line 804
    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v3

    goto :goto_67

    :cond_65
    iget v3, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 805
    :goto_67
    iget v5, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    if-ne v5, v4, :cond_74

    .line 806
    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v0

    goto :goto_76

    :cond_74
    iget v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 807
    :goto_76
    new-instance v4, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v4, v2}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    new-instance v2, Landroid/graphics/fonts/FontStyle;

    invoke-direct {v2, v3, v0}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    .line 808
    invoke-virtual {v4, v2}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v0

    .line 809
    iget-object v2, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    if-eqz v2, :cond_8d

    .line 810
    iget-object v2, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setSystemFallback(Ljava/lang/String;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    .line 812
    :cond_8d
    invoke-virtual {v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    .line 813
    if-eqz v1, :cond_a4

    .line 814
    invoke-static {}, Landroid/graphics/Typeface;->-$$Nest$sfgetsDynamicCacheLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_98} :catch_a5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4d .. :try_end_98} :catch_a5

    .line 815
    :try_start_98
    invoke-static {}, Landroid/graphics/Typeface;->-$$Nest$sfgetsDynamicTypefaceCache()Landroid/util/LruCache;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    monitor-exit v2

    goto :goto_a4

    :catchall_a1
    move-exception v0

    monitor-exit v2
    :try_end_a3
    .catchall {:try_start_98 .. :try_end_a3} :catchall_a1

    :try_start_a3
    throw v0
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a4} :catch_a5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a3 .. :try_end_a4} :catch_a5

    .line 818
    :cond_a4
    :goto_a4
    return-object v0

    .line 819
    :catch_a5
    move-exception v0

    .line 820
    invoke-direct {p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setFallback(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;
    .registers 2

    .line 718
    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    .line 719
    return-object p0
.end method

.method public whitelist setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;
    .registers 3

    .line 681
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v0, p1}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    .line 682
    return-object p0
.end method

.method public whitelist setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/Typeface$Builder;
    .registers 3

    .line 691
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v0, p1}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/fonts/Font$Builder;

    .line 692
    return-object p0
.end method

.method public whitelist setItalic(Z)Landroid/graphics/Typeface$Builder;
    .registers 3

    .line 656
    iput p1, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 657
    iget-object p1, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    iget v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    invoke-virtual {p1, v0}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    .line 658
    return-object p0
.end method

.method public whitelist setTtcIndex(I)Landroid/graphics/Typeface$Builder;
    .registers 3

    .line 669
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v0, p1}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    .line 670
    return-object p0
.end method

.method public whitelist setWeight(I)Landroid/graphics/Typeface$Builder;
    .registers 3

    .line 643
    iput p1, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 644
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v0, p1}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    .line 645
    return-object p0
.end method
