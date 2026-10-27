.class public abstract Lcom/miui/hybrid/hook/IntentResolver;
.super Ljava/lang/Object;
.source "IntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/hybrid/hook/IntentResolver$IteratorWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Landroid/content/IntentFilter;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "IntentResolver"

.field private static final blacklist localLOGV:Z = false

.field private static final blacklist localVerificationLOGV:Z = false

.field private static final blacklist mResolvePrioritySorter:Ljava/util/Comparator;


# instance fields
.field private final blacklist mActionToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final blacklist mBaseTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final blacklist mFilters:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "TF;>;"
        }
    .end annotation
.end field

.field private final blacklist mSchemeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final blacklist mTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final blacklist mTypedActionToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final blacklist mWildTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 798
    new-instance v0, Lcom/miui/hybrid/hook/IntentResolver$1;

    invoke-direct {v0}, Lcom/miui/hybrid/hook/IntentResolver$1;-><init>()V

    sput-object v0, Lcom/miui/hybrid/hook/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 43
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 809
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/hybrid/hook/IntentResolver;->mFilters:Landroid/util/ArraySet;

    .line 815
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/hybrid/hook/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    .line 822
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/hybrid/hook/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    .line 831
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/hybrid/hook/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    .line 836
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/hybrid/hook/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    .line 842
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/hybrid/hook/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    .line 847
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/hybrid/hook/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    return-void
.end method

.method private final blacklist addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .registers 10
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .line 542
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>;"
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    .local p3, "filter":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    .line 543
    .local v0, "array":[Landroid/content/IntentFilter;, "[TF;"
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_14

    .line 544
    invoke-virtual {p0, v1}, Lcom/miui/hybrid/hook/IntentResolver;->newArray(I)[Landroid/content/IntentFilter;

    move-result-object v0

    .line 545
    invoke-virtual {p1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    aput-object p3, v0, v2

    goto :goto_35

    .line 548
    :cond_14
    array-length v3, v0

    .line 549
    .local v3, "N":I
    move v4, v3

    .line 550
    .local v4, "i":I
    :goto_16
    if-lez v4, :cond_21

    add-int/lit8 v5, v4, -0x1

    aget-object v5, v0, v5

    if-nez v5, :cond_21

    .line 551
    add-int/lit8 v4, v4, -0x1

    goto :goto_16

    .line 553
    :cond_21
    if-ge v4, v3, :cond_26

    .line 554
    aput-object p3, v0, v4

    goto :goto_35

    .line 556
    :cond_26
    mul-int/lit8 v5, v3, 0x3

    div-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/miui/hybrid/hook/IntentResolver;->newArray(I)[Landroid/content/IntentFilter;

    move-result-object v1

    .line 557
    .local v1, "newa":[Landroid/content/IntentFilter;, "[TF;"
    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 558
    aput-object p3, v1, v3

    .line 559
    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    .end local v1    # "newa":[Landroid/content/IntentFilter;, "[TF;"
    .end local v3    # "N":I
    .end local v4    # "i":I
    :goto_35
    return-void
.end method

.method private blacklist buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V
    .registers 32
    .param p1, "intent"    # Landroid/content/Intent;
    .param p3, "debug"    # Z
    .param p4, "defaultOnly"    # Z
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "scheme"    # Ljava/lang/String;
    .param p9, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/util/FastImmutableArraySet<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[TF;",
            "Ljava/util/List<",
            "TR;>;I)V"
        }
    .end annotation

    .line 696
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>;"
    .local p2, "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    .local p7, "src":[Landroid/content/IntentFilter;, "[TF;"
    .local p8, "dest":Ljava/util/List;, "Ljava/util/List<TR;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move/from16 v3, p9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 697
    .local v11, "action":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 698
    .local v12, "data":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v13

    .line 700
    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isExcludingStopped()Z

    move-result v14

    .line 704
    .local v14, "excludingStopped":Z
    const-string v15, "IntentResolver"

    if-eqz p3, :cond_2b

    .line 705
    new-instance v4, Landroid/util/LogPrinter;

    const/4 v5, 0x2

    const/4 v6, 0x3

    invoke-direct {v4, v5, v15, v6}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    .line 706
    .local v4, "logPrinter":Landroid/util/Printer;
    new-instance v5, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v5, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Landroid/util/Printer;)V

    move-object v10, v4

    move-object v9, v5

    .local v5, "logPrintWriter":Ljava/io/PrintWriter;
    goto :goto_2f

    .line 708
    .end local v4    # "logPrinter":Landroid/util/Printer;
    .end local v5    # "logPrintWriter":Ljava/io/PrintWriter;
    :cond_2b
    const/4 v4, 0x0

    .line 709
    .restart local v4    # "logPrinter":Landroid/util/Printer;
    const/4 v5, 0x0

    move-object v10, v4

    move-object v9, v5

    .line 712
    .end local v4    # "logPrinter":Landroid/util/Printer;
    .local v9, "logPrintWriter":Ljava/io/PrintWriter;
    .local v10, "logPrinter":Landroid/util/Printer;
    :goto_2f
    if-eqz v1, :cond_33

    array-length v4, v1

    goto :goto_34

    :cond_33
    const/4 v4, 0x0

    :goto_34
    move v8, v4

    .line 713
    .local v8, "N":I
    const/4 v4, 0x0

    .line 716
    .local v4, "hasNonDefaults":Z
    const/4 v5, 0x0

    move/from16 v16, v4

    move v7, v5

    .end local v4    # "hasNonDefaults":Z
    .local v7, "i":I
    .local v16, "hasNonDefaults":Z
    :goto_3a
    if-ge v7, v8, :cond_1fd

    aget-object v4, v1, v7

    move-object v6, v4

    .local v6, "filter":Landroid/content/IntentFilter;, "TF;"
    if-eqz v4, :cond_1ef

    .line 718
    if-eqz p3, :cond_59

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Matching against filter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_59
    if-eqz v14, :cond_86

    invoke-virtual {v0, v6, v3}, Lcom/miui/hybrid/hook/IntentResolver;->isFilterStopped(Landroid/content/IntentFilter;I)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 721
    if-eqz p3, :cond_77

    .line 722
    const-string v4, "  Filter\'s target is stopped; skipping"

    invoke-static {v15, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v17, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object v11, v6

    move-object v12, v9

    move-object v13, v10

    goto/16 :goto_1df

    .line 721
    :cond_77
    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v17, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object v11, v6

    move-object v12, v9

    move-object v13, v10

    goto/16 :goto_1df

    .line 728
    :cond_86
    if-eqz v13, :cond_ca

    invoke-virtual {v0, v13, v6}, Lcom/miui/hybrid/hook/IntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z

    move-result v4

    if-nez v4, :cond_ca

    .line 729
    if-eqz p3, :cond_bb

    .line 730
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Filter is not from package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; skipping"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v17, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object v11, v6

    move-object v12, v9

    move-object v13, v10

    goto/16 :goto_1df

    .line 729
    :cond_bb
    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v17, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object v11, v6

    move-object v12, v9

    move-object v13, v10

    goto/16 :goto_1df

    .line 736
    :cond_ca
    invoke-virtual {v6}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v4

    if-eqz v4, :cond_11c

    .line 737
    if-eqz p3, :cond_11c

    .line 738
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Filter verified: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v6}, Lcom/miui/hybrid/hook/IntentResolver;->isFilterVerified(Landroid/content/IntentFilter;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-virtual {v6}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v4

    .line 740
    .local v4, "authorities":I
    const/4 v5, 0x0

    .local v5, "z":I
    :goto_f1
    if-ge v5, v4, :cond_11a

    .line 741
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v4

    .end local v4    # "authorities":I
    .local v17, "authorities":I
    const-string v4, "   "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6, v5}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p7

    move/from16 v4, v17

    goto :goto_f1

    .end local v17    # "authorities":I
    .restart local v4    # "authorities":I
    :cond_11a
    move/from16 v17, v4

    .line 747
    .end local v4    # "authorities":I
    .end local v5    # "z":I
    :cond_11c
    invoke-virtual {v0, v6, v2}, Lcom/miui/hybrid/hook/IntentResolver;->allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_147

    .line 748
    if-eqz p3, :cond_138

    .line 749
    const-string v1, "  Filter\'s target already added"

    invoke-static {v15, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v17, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object v11, v6

    move-object v12, v9

    move-object v13, v10

    goto/16 :goto_1df

    .line 748
    :cond_138
    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v17, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object v11, v6

    move-object v12, v9

    move-object v13, v10

    goto/16 :goto_1df

    .line 754
    :cond_147
    const-string v1, "IntentResolver"

    move-object v4, v6

    move-object v5, v11

    move-object/from16 v17, v11

    move-object v11, v6

    .end local v6    # "filter":Landroid/content/IntentFilter;, "TF;"
    .local v11, "filter":Landroid/content/IntentFilter;, "TF;"
    .local v17, "action":Ljava/lang/String;
    move-object/from16 v6, p5

    move/from16 v18, v7

    .end local v7    # "i":I
    .local v18, "i":I
    move-object/from16 v7, p6

    move/from16 v19, v8

    .end local v8    # "N":I
    .local v19, "N":I
    move-object v8, v12

    move-object/from16 v20, v12

    move-object v12, v9

    .end local v9    # "logPrintWriter":Ljava/io/PrintWriter;
    .local v12, "logPrintWriter":Ljava/io/PrintWriter;
    .local v20, "data":Landroid/net/Uri;
    move-object/from16 v9, p2

    move-object/from16 v21, v13

    move-object v13, v10

    .end local v10    # "logPrinter":Landroid/util/Printer;
    .local v13, "logPrinter":Landroid/util/Printer;
    .local v21, "packageName":Ljava/lang/String;
    move-object v10, v1

    invoke-virtual/range {v4 .. v10}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v1

    .line 755
    .local v1, "match":I
    if-ltz v1, :cond_1b6

    .line 756
    const-string v4, "android.intent.category.DEFAULT"

    if-eqz p3, :cond_192

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Filter matched!  match=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 757
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " hasDefault="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 758
    invoke-virtual {v11, v4}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 756
    invoke-static {v15, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_192
    if-eqz p4, :cond_19f

    invoke-virtual {v11, v4}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19b

    goto :goto_19f

    .line 770
    :cond_19b
    const/4 v4, 0x1

    move/from16 v16, v4

    .end local v16    # "hasNonDefaults":Z
    .local v4, "hasNonDefaults":Z
    goto :goto_1df

    .line 760
    .end local v4    # "hasNonDefaults":Z
    .restart local v16    # "hasNonDefaults":Z
    :cond_19f
    :goto_19f
    invoke-virtual {v0, v11, v1, v3}, Lcom/miui/hybrid/hook/IntentResolver;->newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;

    move-result-object v4

    .line 761
    .local v4, "oneResult":Ljava/lang/Object;, "TR;"
    if-eqz v4, :cond_1b5

    .line 762
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    if-eqz p3, :cond_1b5

    .line 764
    const-string v5, "    "

    invoke-virtual {v0, v12, v5, v11}, Lcom/miui/hybrid/hook/IntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 765
    invoke-virtual {v12}, Ljava/io/PrintWriter;->flush()V

    .line 766
    invoke-virtual {v11, v13, v5}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 769
    .end local v4    # "oneResult":Ljava/lang/Object;, "TR;"
    :cond_1b5
    goto :goto_1df

    .line 773
    :cond_1b6
    if-eqz p3, :cond_1df

    .line 775
    packed-switch v1, :pswitch_data_226

    .line 780
    const-string v4, "unknown reason"

    .local v4, "reason":Ljava/lang/String;
    goto :goto_1c9

    .line 779
    .end local v4    # "reason":Ljava/lang/String;
    :pswitch_1be
    const-string v4, "type"

    .restart local v4    # "reason":Ljava/lang/String;
    goto :goto_1c9

    .line 778
    .end local v4    # "reason":Ljava/lang/String;
    :pswitch_1c1
    const-string v4, "data"

    .restart local v4    # "reason":Ljava/lang/String;
    goto :goto_1c9

    .line 776
    .end local v4    # "reason":Ljava/lang/String;
    :pswitch_1c4
    const-string v4, "action"

    .restart local v4    # "reason":Ljava/lang/String;
    goto :goto_1c9

    .line 777
    .end local v4    # "reason":Ljava/lang/String;
    :pswitch_1c7
    const-string v4, "category"

    .line 782
    .restart local v4    # "reason":Ljava/lang/String;
    :goto_1c9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Filter did not match: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    .end local v1    # "match":I
    .end local v4    # "reason":Ljava/lang/String;
    :cond_1df
    :goto_1df
    add-int/lit8 v7, v18, 0x1

    move-object/from16 v1, p7

    move-object v9, v12

    move-object v10, v13

    move-object/from16 v11, v17

    move/from16 v8, v19

    move-object/from16 v12, v20

    move-object/from16 v13, v21

    .end local v18    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_3a

    .end local v17    # "action":Ljava/lang/String;
    .end local v19    # "N":I
    .end local v20    # "data":Landroid/net/Uri;
    .end local v21    # "packageName":Ljava/lang/String;
    .restart local v6    # "filter":Landroid/content/IntentFilter;, "TF;"
    .restart local v8    # "N":I
    .restart local v9    # "logPrintWriter":Ljava/io/PrintWriter;
    .restart local v10    # "logPrinter":Landroid/util/Printer;
    .local v11, "action":Ljava/lang/String;
    .local v12, "data":Landroid/net/Uri;
    .local v13, "packageName":Ljava/lang/String;
    :cond_1ef
    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v17, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object v11, v6

    move-object v12, v9

    move-object v13, v10

    .end local v6    # "filter":Landroid/content/IntentFilter;, "TF;"
    .end local v7    # "i":I
    .end local v8    # "N":I
    .end local v9    # "logPrintWriter":Ljava/io/PrintWriter;
    .end local v10    # "logPrinter":Landroid/util/Printer;
    .local v11, "filter":Landroid/content/IntentFilter;, "TF;"
    .local v12, "logPrintWriter":Ljava/io/PrintWriter;
    .local v13, "logPrinter":Landroid/util/Printer;
    .restart local v17    # "action":Ljava/lang/String;
    .restart local v18    # "i":I
    .restart local v19    # "N":I
    .restart local v20    # "data":Landroid/net/Uri;
    .restart local v21    # "packageName":Ljava/lang/String;
    goto :goto_209

    .end local v17    # "action":Ljava/lang/String;
    .end local v18    # "i":I
    .end local v19    # "N":I
    .end local v20    # "data":Landroid/net/Uri;
    .end local v21    # "packageName":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v8    # "N":I
    .restart local v9    # "logPrintWriter":Ljava/io/PrintWriter;
    .restart local v10    # "logPrinter":Landroid/util/Printer;
    .local v11, "action":Ljava/lang/String;
    .local v12, "data":Landroid/net/Uri;
    .local v13, "packageName":Ljava/lang/String;
    :cond_1fd
    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v17, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object v12, v9

    move-object v13, v10

    .line 787
    .end local v7    # "i":I
    .end local v8    # "N":I
    .end local v9    # "logPrintWriter":Ljava/io/PrintWriter;
    .end local v10    # "logPrinter":Landroid/util/Printer;
    .end local v11    # "action":Ljava/lang/String;
    .local v12, "logPrintWriter":Ljava/io/PrintWriter;
    .local v13, "logPrinter":Landroid/util/Printer;
    .restart local v17    # "action":Ljava/lang/String;
    .restart local v18    # "i":I
    .restart local v19    # "N":I
    .restart local v20    # "data":Landroid/net/Uri;
    .restart local v21    # "packageName":Ljava/lang/String;
    :goto_209
    if-eqz p3, :cond_225

    if-eqz v16, :cond_225

    .line 788
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_219

    .line 789
    const-string v1, "resolveIntent failed: found match, but none with CATEGORY_DEFAULT"

    invoke-static {v15, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_225

    .line 790
    :cond_219
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_225

    .line 791
    const-string v1, "resolveIntent: multiple matches, only some with CATEGORY_DEFAULT"

    invoke-static {v15, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_225
    :goto_225
    return-void

    :pswitch_data_226
    .packed-switch -0x4
        :pswitch_1c7
        :pswitch_1c4
        :pswitch_1c1
        :pswitch_1be
    .end packed-switch
.end method

.method private blacklist collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .registers 7
    .param p2, "matching"    # Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TF;",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "TF;>;"
        }
    .end annotation

    .line 145
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>;"
    .local p1, "array":[Landroid/content/IntentFilter;, "[TF;"
    const/4 v0, 0x0

    .line 146
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TF;>;"
    if-eqz p1, :cond_20

    .line 147
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_20

    .line 148
    aget-object v2, p1, v1

    .line 149
    .local v2, "cur":Landroid/content/IntentFilter;, "TF;"
    if-nez v2, :cond_c

    .line 150
    goto :goto_20

    .line 152
    :cond_c
    invoke-direct {p0, v2, p2}, Lcom/miui/hybrid/hook/IntentResolver;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 153
    if-nez v0, :cond_1a

    .line 154
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 156
    :cond_1a
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .end local v2    # "cur":Landroid/content/IntentFilter;, "TF;"
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 160
    .end local v1    # "i":I
    :cond_20
    :goto_20
    return-object v0
.end method

.method private blacklist filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z
    .registers 8
    .param p1, "f1"    # Landroid/content/IntentFilter;
    .param p2, "f2"    # Landroid/content/IntentFilter;

    .line 71
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>;"
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    .line 72
    .local v0, "s1":I
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    .line 73
    .local v1, "s2":I
    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 74
    return v2

    .line 76
    :cond_c
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v0, :cond_1d

    .line 77
    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 78
    return v2

    .line 76
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 81
    .end local v3    # "i":I
    :cond_1d
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countCategories()I

    move-result v0

    .line 82
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countCategories()I

    move-result v1

    .line 83
    if-eq v0, v1, :cond_28

    .line 84
    return v2

    .line 86
    :cond_28
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_29
    if-ge v3, v0, :cond_39

    .line 87
    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 88
    return v2

    .line 86
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 91
    .end local v3    # "i":I
    :cond_39
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    .line 92
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v1

    .line 93
    if-eq v0, v1, :cond_44

    .line 94
    return v2

    .line 96
    :cond_44
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_45
    if-ge v3, v0, :cond_55

    .line 97
    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->hasExactDataType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_52

    .line 98
    return v2

    .line 96
    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 101
    .end local v3    # "i":I
    :cond_55
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    .line 102
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v1

    .line 103
    if-eq v0, v1, :cond_60

    .line 104
    return v2

    .line 106
    :cond_60
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_61
    if-ge v3, v0, :cond_71

    .line 107
    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6e

    .line 108
    return v2

    .line 106
    :cond_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    .line 111
    .end local v3    # "i":I
    :cond_71
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v0

    .line 112
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v1

    .line 113
    if-eq v0, v1, :cond_7c

    .line 114
    return v2

    .line 116
    :cond_7c
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_7d
    if-ge v3, v0, :cond_8d

    .line 117
    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->hasDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)Z

    move-result v4

    if-nez v4, :cond_8a

    .line 118
    return v2

    .line 116
    :cond_8a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7d

    .line 121
    .end local v3    # "i":I
    :cond_8d
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v0

    .line 122
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v1

    .line 123
    if-eq v0, v1, :cond_98

    .line 124
    return v2

    .line 126
    :cond_98
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_99
    if-ge v3, v0, :cond_a9

    .line 127
    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->hasDataPath(Landroid/os/PatternMatcher;)Z

    move-result v4

    if-nez v4, :cond_a6

    .line 128
    return v2

    .line 126
    :cond_a6
    add-int/lit8 v3, v3, 0x1

    goto :goto_99

    .line 131
    .end local v3    # "i":I
    :cond_a9
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v0

    .line 132
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v1

    .line 133
    if-eq v0, v1, :cond_b4

    .line 134
    return v2

    .line 136
    :cond_b4
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_b5
    if-ge v3, v0, :cond_c5

    .line 137
    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->hasDataSchemeSpecificPart(Landroid/os/PatternMatcher;)Z

    move-result v4

    if-nez v4, :cond_c2

    .line 138
    return v2

    .line 136
    :cond_c2
    add-int/lit8 v3, v3, 0x1

    goto :goto_b5

    .line 141
    .end local v3    # "i":I
    :cond_c5
    const/4 v2, 0x1

    return v2
.end method

.method private static blacklist getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Landroid/util/FastImmutableArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 686
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 687
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_8

    .line 688
    const/4 v1, 0x0

    return-object v1

    .line 690
    :cond_8
    new-instance v1, Landroid/util/FastImmutableArraySet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/util/FastImmutableArraySet;-><init>([Ljava/lang/Object;)V

    return-object v1
.end method

.method private final blacklist register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .registers 7
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 627
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    .local p2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local p3, "dest":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    if-nez p2, :cond_4

    .line 628
    const/4 v0, 0x0

    return v0

    .line 631
    :cond_4
    const/4 v0, 0x0

    .line 632
    .local v0, "num":I
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 633
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 634
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 636
    invoke-direct {p0, p3, v1, p1}, Lcom/miui/hybrid/hook/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 637
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_5

    .line 638
    :cond_17
    return v0
.end method

.method private final blacklist register_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I
    .registers 11
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 565
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p1}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 566
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 567
    return v1

    .line 570
    :cond_8
    const/4 v2, 0x0

    .line 571
    .local v2, "num":I
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 572
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 573
    .local v3, "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 575
    move-object v4, v3

    .line 576
    .local v4, "baseName":Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 577
    .local v5, "slashpos":I
    if-lez v5, :cond_29

    .line 578
    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_3c

    .line 580
    :cond_29
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 583
    :goto_3c
    iget-object v6, p0, Lcom/miui/hybrid/hook/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v3, p1}, Lcom/miui/hybrid/hook/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 585
    if-lez v5, :cond_49

    .line 586
    iget-object v6, p0, Lcom/miui/hybrid/hook/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v4, p1}, Lcom/miui/hybrid/hook/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    goto :goto_4e

    .line 588
    :cond_49
    iget-object v6, p0, Lcom/miui/hybrid/hook/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v4, p1}, Lcom/miui/hybrid/hook/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 590
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "baseName":Ljava/lang/String;
    .end local v5    # "slashpos":I
    :goto_4e
    goto :goto_9

    .line 592
    :cond_4f
    return v2
.end method

.method private final blacklist remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 659
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>;"
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    .line 660
    .local v0, "array":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v0, :cond_46

    .line 661
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 662
    .local v1, "LAST":I
    :goto_b
    if-ltz v1, :cond_14

    aget-object v2, v0, v1

    if-nez v2, :cond_14

    .line 663
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 665
    :cond_14
    move v2, v1

    .local v2, "idx":I
    :goto_15
    if-ltz v2, :cond_2c

    .line 666
    aget-object v3, v0, v2

    if-ne v3, p3, :cond_29

    .line 667
    sub-int v3, v1, v2

    .line 668
    .local v3, "remain":I
    if-lez v3, :cond_24

    .line 669
    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 671
    :cond_24
    const/4 v4, 0x0

    aput-object v4, v0, v1

    .line 672
    add-int/lit8 v1, v1, -0x1

    .line 665
    .end local v3    # "remain":I
    :cond_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    .line 675
    .end local v2    # "idx":I
    :cond_2c
    if-gez v1, :cond_32

    .line 676
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    .line 677
    :cond_32
    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_46

    .line 678
    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Lcom/miui/hybrid/hook/IntentResolver;->newArray(I)[Landroid/content/IntentFilter;

    move-result-object v2

    .line 679
    .local v2, "newa":[Landroid/content/IntentFilter;, "[TF;"
    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 680
    invoke-virtual {p1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    .end local v1    # "LAST":I
    .end local v2    # "newa":[Landroid/content/IntentFilter;, "[TF;"
    :cond_46
    :goto_46
    return-void
.end method

.method private final blacklist unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .registers 7
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 643
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    .local p2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local p3, "dest":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    if-nez p2, :cond_4

    .line 644
    const/4 v0, 0x0

    return v0

    .line 647
    :cond_4
    const/4 v0, 0x0

    .line 648
    .local v0, "num":I
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 649
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 650
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 652
    invoke-direct {p0, p3, v1, p1}, Lcom/miui/hybrid/hook/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 653
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_5

    .line 654
    :cond_17
    return v0
.end method

.method private final blacklist unregister_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I
    .registers 11
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 596
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p1}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 597
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 598
    return v1

    .line 601
    :cond_8
    const/4 v2, 0x0

    .line 602
    .local v2, "num":I
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 603
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 604
    .local v3, "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 606
    move-object v4, v3

    .line 607
    .local v4, "baseName":Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 608
    .local v5, "slashpos":I
    if-lez v5, :cond_29

    .line 609
    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_3c

    .line 611
    :cond_29
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 614
    :goto_3c
    iget-object v6, p0, Lcom/miui/hybrid/hook/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v3, p1}, Lcom/miui/hybrid/hook/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 616
    if-lez v5, :cond_49

    .line 617
    iget-object v6, p0, Lcom/miui/hybrid/hook/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v4, p1}, Lcom/miui/hybrid/hook/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4e

    .line 619
    :cond_49
    iget-object v6, p0, Lcom/miui/hybrid/hook/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v4, p1}, Lcom/miui/hybrid/hook/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 621
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "baseName":Ljava/lang/String;
    .end local v5    # "slashpos":I
    :goto_4e
    goto :goto_9

    .line 622
    :cond_4f
    return v2
.end method


# virtual methods
.method public blacklist addFilter(Landroid/content/IntentFilter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>;"
    .local p1, "f":Landroid/content/IntentFilter;, "TF;"
    iget-object v0, p0, Lcom/miui/hybrid/hook/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {p1}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/hybrid/hook/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string v2, "      Scheme: "

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/hybrid/hook/IntentResolver;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    move-result v0

    .line 59
    .local v0, "numS":I
    const-string v1, "      Type: "

    invoke-direct {p0, p1, v1}, Lcom/miui/hybrid/hook/IntentResolver;->register_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I

    move-result v1

    .line 60
    .local v1, "numT":I
    if-nez v0, :cond_26

    if-nez v1, :cond_26

    .line 61
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/hybrid/hook/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string v4, "      Action: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/miui/hybrid/hook/IntentResolver;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 64
    :cond_26
    if-eqz v1, :cond_33

    .line 65
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/hybrid/hook/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string v4, "      TypedAction: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/miui/hybrid/hook/IntentResolver;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 68
    :cond_33
    return-void
.end method

.method protected blacklist allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/List<",
            "TR;>;)Z"
        }
    .end annotation

    .line 476
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<TR;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 22
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "printFilter"    # Z
    .param p6, "collapseDuplicates"    # Z

    .line 281
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>;"
    move-object v9, p0

    move-object/from16 v10, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 282
    .local v11, "innerPrefix":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 283
    .local v12, "sepPrefix":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, p2

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 284
    .local v14, "curPrefix":Ljava/lang/String;
    iget-object v5, v9, Lcom/miui/hybrid/hook/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    const-string v3, "Full MIME Types:"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v4, v11

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/miui/hybrid/hook/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 286
    move-object v14, v12

    .line 288
    :cond_56
    iget-object v5, v9, Lcom/miui/hybrid/hook/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    const-string v3, "Base MIME Types:"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v4, v11

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/miui/hybrid/hook/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 290
    move-object v14, v12

    .line 292
    :cond_6c
    iget-object v5, v9, Lcom/miui/hybrid/hook/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    const-string v3, "Wild MIME Types:"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v4, v11

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/miui/hybrid/hook/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 294
    move-object v14, v12

    .line 296
    :cond_82
    iget-object v5, v9, Lcom/miui/hybrid/hook/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string v3, "Schemes:"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v4, v11

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/miui/hybrid/hook/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 298
    move-object v14, v12

    .line 300
    :cond_98
    iget-object v5, v9, Lcom/miui/hybrid/hook/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string v3, "Non-Data Actions:"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v4, v11

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/miui/hybrid/hook/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 302
    move-object v14, v12

    .line 304
    :cond_ae
    iget-object v5, v9, Lcom/miui/hybrid/hook/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string v3, "MIME Typed Actions:"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v4, v11

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/miui/hybrid/hook/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 306
    move-object v14, v12

    .line 308
    :cond_c4
    if-ne v14, v12, :cond_c8

    const/4 v0, 0x1

    goto :goto_c9

    :cond_c8
    const/4 v0, 0x0

    :goto_c9
    return v0
.end method

.method protected blacklist dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .registers 4
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .line 530
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>;"
    .local p3, "filter":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 531
    return-void
.end method

.method protected blacklist dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 6
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/Object;
    .param p4, "count"    # I

    .line 538
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(I)V

    .line 539
    return-void
.end method

.method blacklist dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z
    .registers 31
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "titlePrefix"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "prefix"    # Ljava/lang/String;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "printFilter"    # Z
    .param p8, "collapseDuplicates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "ZZ)Z"
        }
    .end annotation

    .line 216
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>;"
    .local p5, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, "eprefix":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 218
    .local v7, "fprefix":Ljava/lang/String;
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 219
    .local v8, "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    const/4 v9, 0x0

    .line 220
    .local v9, "printedSomething":Z
    const/4 v10, 0x0

    .line 221
    .local v10, "printer":Landroid/util/Printer;
    const/4 v11, 0x0

    move v12, v11

    move-object v11, v10

    move v10, v9

    move-object/from16 v9, p3

    .end local p3    # "title":Ljava/lang/String;
    .local v9, "title":Ljava/lang/String;
    .local v10, "printedSomething":Z
    .local v11, "printer":Landroid/util/Printer;
    .local v12, "mapi":I
    :goto_3d
    invoke-virtual/range {p5 .. p5}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v12, v13, :cond_19d

    .line 222
    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/content/IntentFilter;

    .line 223
    .local v13, "a":[Landroid/content/IntentFilter;, "[TF;"
    array-length v14, v13

    .line 224
    .local v14, "N":I
    const/4 v15, 0x0

    .line 226
    .local v15, "printedHeader":Z
    const-string v2, ":"

    if-eqz p8, :cond_10e

    if-nez p7, :cond_10e

    .line 227
    invoke-virtual {v8}, Landroid/util/ArrayMap;->clear()V

    .line 228
    const/16 v16, 0x0

    move-object/from16 p3, v9

    move/from16 v9, v16

    .local v9, "i":I
    .restart local p3    # "title":Ljava/lang/String;
    :goto_5a
    if-ge v9, v14, :cond_bc

    aget-object v16, v13, v9

    move-object/from16 v17, v16

    .local v17, "filter":Landroid/content/IntentFilter;, "TF;"
    if-eqz v16, :cond_b1

    .line 229
    if-eqz v4, :cond_77

    move-object/from16 v16, v11

    move-object/from16 v11, v17

    .end local v17    # "filter":Landroid/content/IntentFilter;, "TF;"
    .local v11, "filter":Landroid/content/IntentFilter;, "TF;"
    .local v16, "printer":Landroid/util/Printer;
    invoke-virtual {v0, v4, v11}, Lcom/miui/hybrid/hook/IntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z

    move-result v17

    if-nez v17, :cond_7b

    .line 230
    move-object/from16 v20, v6

    move/from16 v19, v10

    move-object/from16 v18, v11

    move/from16 v17, v15

    goto :goto_a6

    .line 229
    .end local v16    # "printer":Landroid/util/Printer;
    .local v11, "printer":Landroid/util/Printer;
    .restart local v17    # "filter":Landroid/content/IntentFilter;, "TF;"
    :cond_77
    move-object/from16 v16, v11

    move-object/from16 v11, v17

    .line 232
    .end local v17    # "filter":Landroid/content/IntentFilter;, "TF;"
    .local v11, "filter":Landroid/content/IntentFilter;, "TF;"
    .restart local v16    # "printer":Landroid/util/Printer;
    :cond_7b
    move/from16 v17, v15

    .end local v15    # "printedHeader":Z
    .local v17, "printedHeader":Z
    invoke-virtual {v0, v11}, Lcom/miui/hybrid/hook/IntentResolver;->filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;

    move-result-object v15

    .line 233
    .local v15, "label":Ljava/lang/Object;
    move-object/from16 v18, v11

    .end local v11    # "filter":Landroid/content/IntentFilter;, "TF;"
    .local v18, "filter":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {v8, v15}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v11

    .line 234
    .local v11, "index":I
    move/from16 v19, v10

    .end local v10    # "printedSomething":Z
    .local v19, "printedSomething":Z
    const/4 v10, 0x1

    if-gez v11, :cond_97

    .line 235
    move-object/from16 v20, v6

    new-instance v6, Landroid/util/MutableInt;

    invoke-direct {v6, v10}, Landroid/util/MutableInt;-><init>(I)V

    invoke-virtual {v8, v15, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a6

    .line 237
    :cond_97
    move-object/from16 v20, v6

    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/MutableInt;

    move/from16 v21, v11

    .end local v11    # "index":I
    .local v21, "index":I
    iget v11, v6, Landroid/util/MutableInt;->value:I

    add-int/2addr v11, v10

    iput v11, v6, Landroid/util/MutableInt;->value:I

    .line 228
    .end local v15    # "label":Ljava/lang/Object;
    .end local v21    # "index":I
    :goto_a6
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v11, v16

    move/from16 v15, v17

    move/from16 v10, v19

    move-object/from16 v6, v20

    goto :goto_5a

    .end local v16    # "printer":Landroid/util/Printer;
    .end local v18    # "filter":Landroid/content/IntentFilter;, "TF;"
    .end local v19    # "printedSomething":Z
    .restart local v10    # "printedSomething":Z
    .local v11, "printer":Landroid/util/Printer;
    .local v15, "printedHeader":Z
    .local v17, "filter":Landroid/content/IntentFilter;, "TF;"
    :cond_b1
    move-object/from16 v20, v6

    move/from16 v19, v10

    move-object/from16 v16, v11

    move-object/from16 v18, v17

    move/from16 v17, v15

    .end local v10    # "printedSomething":Z
    .end local v11    # "printer":Landroid/util/Printer;
    .end local v15    # "printedHeader":Z
    .restart local v16    # "printer":Landroid/util/Printer;
    .local v17, "printedHeader":Z
    .restart local v18    # "filter":Landroid/content/IntentFilter;, "TF;"
    .restart local v19    # "printedSomething":Z
    goto :goto_c4

    .end local v16    # "printer":Landroid/util/Printer;
    .end local v17    # "printedHeader":Z
    .end local v18    # "filter":Landroid/content/IntentFilter;, "TF;"
    .end local v19    # "printedSomething":Z
    .restart local v10    # "printedSomething":Z
    .restart local v11    # "printer":Landroid/util/Printer;
    .restart local v15    # "printedHeader":Z
    :cond_bc
    move-object/from16 v20, v6

    move/from16 v19, v10

    move-object/from16 v16, v11

    move/from16 v17, v15

    .line 240
    .end local v9    # "i":I
    .end local v10    # "printedSomething":Z
    .end local v11    # "printer":Landroid/util/Printer;
    .end local v15    # "printedHeader":Z
    .restart local v16    # "printer":Landroid/util/Printer;
    .restart local v17    # "printedHeader":Z
    .restart local v19    # "printedSomething":Z
    :goto_c4
    const/4 v6, 0x0

    move-object/from16 v9, p3

    move/from16 v15, v17

    move/from16 v10, v19

    .end local v17    # "printedHeader":Z
    .end local v19    # "printedSomething":Z
    .end local p3    # "title":Ljava/lang/String;
    .local v6, "i":I
    .local v9, "title":Ljava/lang/String;
    .restart local v10    # "printedSomething":Z
    .restart local v15    # "printedHeader":Z
    :goto_cb
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v6, v11, :cond_106

    .line 241
    if-eqz v9, :cond_da

    .line 242
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    const/4 v9, 0x0

    .line 245
    :cond_da
    if-nez v15, :cond_ed

    .line 246
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    const/4 v11, 0x1

    move v15, v11

    .line 249
    :cond_ed
    const/4 v10, 0x1

    .line 250
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v8

    .end local v8    # "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    .local v18, "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    move-object/from16 v8, v17

    check-cast v8, Landroid/util/MutableInt;

    iget v8, v8, Landroid/util/MutableInt;->value:I

    invoke-virtual {v0, v1, v7, v11, v8}, Lcom/miui/hybrid/hook/IntentResolver;->dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 240
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v8, v18

    goto :goto_cb

    .end local v18    # "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    .restart local v8    # "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    :cond_106
    move-object/from16 v18, v8

    .end local v8    # "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    .restart local v18    # "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    move-object/from16 v11, v16

    move-object/from16 v0, v20

    .end local v6    # "i":I
    goto/16 :goto_190

    .line 226
    .end local v16    # "printer":Landroid/util/Printer;
    .end local v18    # "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    .restart local v8    # "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    .restart local v11    # "printer":Landroid/util/Printer;
    :cond_10e
    move-object/from16 v20, v6

    move-object/from16 v18, v8

    move-object/from16 p3, v9

    move/from16 v19, v10

    move-object/from16 v16, v11

    move/from16 v17, v15

    .line 253
    .end local v8    # "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    .end local v9    # "title":Ljava/lang/String;
    .end local v10    # "printedSomething":Z
    .end local v11    # "printer":Landroid/util/Printer;
    .end local v15    # "printedHeader":Z
    .restart local v16    # "printer":Landroid/util/Printer;
    .restart local v17    # "printedHeader":Z
    .restart local v18    # "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    .restart local v19    # "printedSomething":Z
    .restart local p3    # "title":Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v9, p3

    move-object/from16 v11, v16

    move/from16 v15, v17

    move/from16 v10, v19

    .end local v16    # "printer":Landroid/util/Printer;
    .end local v17    # "printedHeader":Z
    .end local v19    # "printedSomething":Z
    .end local p3    # "title":Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v9    # "title":Ljava/lang/String;
    .restart local v10    # "printedSomething":Z
    .restart local v11    # "printer":Landroid/util/Printer;
    .restart local v15    # "printedHeader":Z
    :goto_123
    if-ge v6, v14, :cond_18e

    aget-object v8, v13, v6

    move-object/from16 p3, v8

    .local p3, "filter":Landroid/content/IntentFilter;, "TF;"
    if-eqz v8, :cond_189

    .line 254
    if-eqz v4, :cond_138

    move-object/from16 v8, p3

    .end local p3    # "filter":Landroid/content/IntentFilter;, "TF;"
    .local v8, "filter":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {v0, v4, v8}, Lcom/miui/hybrid/hook/IntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z

    move-result v16

    if-nez v16, :cond_13a

    .line 255
    move-object/from16 v0, v20

    goto :goto_180

    .line 254
    .end local v8    # "filter":Landroid/content/IntentFilter;, "TF;"
    .restart local p3    # "filter":Landroid/content/IntentFilter;, "TF;"
    :cond_138
    move-object/from16 v8, p3

    .line 257
    .end local p3    # "filter":Landroid/content/IntentFilter;, "TF;"
    .restart local v8    # "filter":Landroid/content/IntentFilter;, "TF;"
    :cond_13a
    if-eqz v9, :cond_143

    .line 258
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    const/4 v9, 0x0

    .line 261
    :cond_143
    if-nez v15, :cond_157

    .line 262
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    const/4 v15, 0x1

    .line 265
    :cond_157
    const/4 v3, 0x1

    .line 266
    .end local v10    # "printedSomething":Z
    .local v3, "printedSomething":Z
    invoke-virtual {v0, v1, v7, v8}, Lcom/miui/hybrid/hook/IntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 267
    if-eqz p7, :cond_17d

    .line 268
    if-nez v11, :cond_165

    .line 269
    new-instance v10, Landroid/util/PrintWriterPrinter;

    invoke-direct {v10, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    move-object v11, v10

    .line 271
    :cond_165
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v11, v10}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    move v10, v3

    goto :goto_180

    .line 267
    :cond_17d
    move-object/from16 v0, v20

    move v10, v3

    .line 253
    .end local v3    # "printedSomething":Z
    .restart local v10    # "printedSomething":Z
    :goto_180
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, p5

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    goto :goto_123

    .end local v8    # "filter":Landroid/content/IntentFilter;, "TF;"
    .restart local p3    # "filter":Landroid/content/IntentFilter;, "TF;"
    :cond_189
    move-object/from16 v8, p3

    move-object/from16 v0, v20

    .end local p3    # "filter":Landroid/content/IntentFilter;, "TF;"
    .restart local v8    # "filter":Landroid/content/IntentFilter;, "TF;"
    goto :goto_190

    .end local v8    # "filter":Landroid/content/IntentFilter;, "TF;"
    :cond_18e
    move-object/from16 v0, v20

    .line 221
    .end local v6    # "i":I
    .end local v13    # "a":[Landroid/content/IntentFilter;, "[TF;"
    .end local v14    # "N":I
    .end local v15    # "printedHeader":Z
    :goto_190
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object v6, v0

    move-object/from16 v8, v18

    move-object/from16 v0, p0

    goto/16 :goto_3d

    .end local v18    # "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    .local v8, "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    :cond_19d
    move/from16 v19, v10

    .line 276
    .end local v10    # "printedSomething":Z
    .end local v12    # "mapi":I
    .restart local v19    # "printedSomething":Z
    return v19
.end method

.method public blacklist filterIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TF;>;"
        }
    .end annotation

    .line 340
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>;"
    new-instance v0, Lcom/miui/hybrid/hook/IntentResolver$IteratorWrapper;

    iget-object v1, p0, Lcom/miui/hybrid/hook/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/hybrid/hook/IntentResolver$IteratorWrapper;-><init>(Lcom/miui/hybrid/hook/IntentResolver;Ljava/util/Iterator;)V

    return-object v0
.end method

.method protected blacklist filterResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TR;>;)V"
        }
    .end annotation

    .line 527
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>;"
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<TR;>;"
    return-void
.end method

.method public blacklist filterSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TF;>;"
        }
    .end annotation

    .line 347
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>;"
    iget-object v0, p0, Lcom/miui/hybrid/hook/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 534
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    const-string v0, "IntentFilter"

    return-object v0
.end method

.method public blacklist findFilters(Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .registers 6
    .param p1, "matching"    # Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "TF;>;"
        }
    .end annotation

    .line 164
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>;"
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_19

    .line 166
    iget-object v0, p0, Lcom/miui/hybrid/hook/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    invoke-direct {p0, v0, p1}, Lcom/miui/hybrid/hook/IntentResolver;->collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 167
    :cond_19
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ne v0, v2, :cond_36

    .line 169
    iget-object v0, p0, Lcom/miui/hybrid/hook/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    invoke-direct {p0, v0, p1}, Lcom/miui/hybrid/hook/IntentResolver;->collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 170
    :cond_36
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    if-nez v0, :cond_59

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    if-nez v0, :cond_59

    .line 171
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ne v0, v2, :cond_59

    .line 173
    iget-object v0, p0, Lcom/miui/hybrid/hook/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    invoke-direct {p0, v0, p1}, Lcom/miui/hybrid/hook/IntentResolver;->collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 175
    :cond_59
    const/4 v0, 0x0

    .line 176
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TF;>;"
    iget-object v1, p0, Lcom/miui/hybrid/hook/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_60
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter;

    .line 177
    .local v2, "cur":Landroid/content/IntentFilter;, "TF;"
    invoke-direct {p0, v2, p1}, Lcom/miui/hybrid/hook/IntentResolver;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 178
    if-nez v0, :cond_7a

    .line 179
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 181
    :cond_7a
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v2    # "cur":Landroid/content/IntentFilter;, "TF;"
    :cond_7d
    goto :goto_60

    .line 184
    :cond_7e
    return-object v0
.end method

.method protected blacklist isFilterStopped(Landroid/content/IntentFilter;I)Z
    .registers 4
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;I)Z"
        }
    .end annotation

    .line 485
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist isFilterVerified(Landroid/content/IntentFilter;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation

    .line 501
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p1}, Landroid/content/IntentFilter;->isVerified()Z

    move-result v0

    return v0
.end method

.method protected abstract blacklist isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TF;)Z"
        }
    .end annotation
.end method

.method protected abstract blacklist newArray(I)[Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TF;"
        }
    .end annotation
.end method

.method protected blacklist newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .registers 4
    .param p2, "match"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;II)TR;"
        }
    .end annotation

    .line 515
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    return-object p1
.end method

.method public blacklist queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .registers 26
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "defaultOnly"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 371
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>;"
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v12

    .line 373
    .local v12, "scheme":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 375
    .local v13, "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TR;>;"
    nop

    .line 376
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    move v0, v1

    :goto_1b
    move v14, v0

    .line 378
    .local v14, "debug":Z
    const-string v15, "IntentResolver"

    if-eqz v14, :cond_65

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resolving type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " scheme="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " defaultOnly="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v9, p3

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v8, p4

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v7, p1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    :cond_65
    move-object/from16 v7, p1

    move/from16 v9, p3

    move/from16 v8, p4

    .line 382
    :goto_6b
    const/4 v0, 0x0

    .line 383
    .local v0, "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    const/4 v2, 0x0

    .line 384
    .local v2, "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    const/4 v3, 0x0

    .line 385
    .local v3, "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    const/4 v4, 0x0

    .line 389
    .local v4, "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v11, :cond_196

    .line 390
    const/16 v5, 0x2f

    invoke-virtual {v11, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 391
    .local v5, "slashpos":I
    if-lez v5, :cond_18d

    .line 392
    invoke-virtual {v11, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, "baseType":Ljava/lang/String;
    const-string v6, "*"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_156

    .line 394
    move-object/from16 v16, v0

    .end local v0    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .local v16, "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    move-object/from16 v17, v2

    .end local v2    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .local v17, "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    add-int/lit8 v2, v5, 0x2

    move-object/from16 v18, v3

    .end local v3    # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .local v18, "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    const-string v3, "Second type cut: "

    move-object/from16 v19, v4

    .end local v4    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    .local v19, "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    const-string v4, "First type cut: "

    if-ne v0, v2, :cond_e9

    add-int/lit8 v0, v5, 0x1

    .line 395
    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_a4

    goto :goto_e9

    .line 405
    :cond_a4
    iget-object v0, v10, Lcom/miui/hybrid/hook/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    .line 406
    .end local v16    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v0    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v14, :cond_c6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_c6
    iget-object v2, v10, Lcom/miui/hybrid/hook/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/IntentFilter;

    .line 408
    .end local v17    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v2    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v14, :cond_12d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 409
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 408
    invoke-static {v15, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12d

    .line 398
    .end local v0    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v2    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v16    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v17    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    :cond_e9
    :goto_e9
    iget-object v0, v10, Lcom/miui/hybrid/hook/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    .line 399
    .end local v16    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v0    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v14, :cond_10b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_10b
    iget-object v2, v10, Lcom/miui/hybrid/hook/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/IntentFilter;

    .line 401
    .end local v17    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v2    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v14, :cond_12d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 402
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 401
    invoke-static {v15, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_12d
    :goto_12d
    iget-object v3, v10, Lcom/miui/hybrid/hook/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/IntentFilter;

    .line 414
    .end local v18    # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v3    # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v14, :cond_151

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Third type cut: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .end local v1    # "baseType":Ljava/lang/String;
    .end local v5    # "slashpos":I
    :cond_151
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    goto :goto_1a0

    .line 415
    .end local v19    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v1    # "baseType":Ljava/lang/String;
    .restart local v4    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v5    # "slashpos":I
    :cond_156
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .end local v0    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v2    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v3    # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v4    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v16    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v17    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v18    # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v19    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19e

    .line 419
    iget-object v0, v10, Lcom/miui/hybrid/hook/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    .line 420
    .end local v16    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v0    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v14, :cond_1a0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Typed Action list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a0

    .line 391
    .end local v1    # "baseType":Ljava/lang/String;
    .end local v17    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v18    # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v19    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v2    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v3    # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v4    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    :cond_18d
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .end local v0    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v2    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v3    # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v4    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v16    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v17    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v18    # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v19    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    goto :goto_19e

    .line 389
    .end local v5    # "slashpos":I
    .end local v16    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v17    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v18    # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v19    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v0    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v2    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v3    # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v4    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    :cond_196
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .line 428
    .end local v0    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v2    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v3    # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v4    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v16    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v17    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v18    # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v19    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    :cond_19e
    :goto_19e
    move-object/from16 v0, v16

    .end local v16    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v0    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    :cond_1a0
    :goto_1a0
    if-eqz v12, :cond_1c9

    .line 429
    iget-object v1, v10, Lcom/miui/hybrid/hook/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v1, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Landroid/content/IntentFilter;

    .line 430
    .end local v19    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v4    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v14, :cond_1c7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheme list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_1c7
    move-object/from16 v19, v4

    .end local v4    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v19    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    :cond_1c9
    if-nez v11, :cond_1fc

    if-nez v12, :cond_1fc

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1fc

    .line 437
    iget-object v1, v10, Lcom/miui/hybrid/hook/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Landroid/content/IntentFilter;

    .line 438
    if-eqz v14, :cond_1fc

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_1fc
    move-object/from16 v16, v0

    .end local v0    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v16    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    invoke-static/range {p1 .. p1}, Lcom/miui/hybrid/hook/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;

    move-result-object v20

    .line 442
    .local v20, "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    if-eqz v16, :cond_218

    .line 443
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move v3, v14

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v12

    move-object/from16 v7, v16

    move-object v8, v13

    move/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/miui/hybrid/hook/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 446
    :cond_218
    if-eqz v17, :cond_22e

    .line 447
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move v3, v14

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v12

    move-object/from16 v7, v17

    move-object v8, v13

    move/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/miui/hybrid/hook/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 450
    :cond_22e
    if-eqz v18, :cond_244

    .line 451
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move v3, v14

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v12

    move-object/from16 v7, v18

    move-object v8, v13

    move/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/miui/hybrid/hook/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 454
    :cond_244
    if-eqz v19, :cond_25a

    .line 455
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move v3, v14

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v12

    move-object/from16 v7, v19

    move-object v8, v13

    move/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/miui/hybrid/hook/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 458
    :cond_25a
    invoke-virtual {v10, v13}, Lcom/miui/hybrid/hook/IntentResolver;->filterResults(Ljava/util/List;)V

    .line 459
    invoke-virtual {v10, v13}, Lcom/miui/hybrid/hook/IntentResolver;->sortResults(Ljava/util/List;)V

    .line 461
    if-eqz v14, :cond_28b

    .line 462
    const-string v0, "Final result list:"

    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_268
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_28b

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_268

    .line 467
    .end local v0    # "i":I
    :cond_28b
    return-object v13
.end method

.method public blacklist queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "defaultOnly"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "[TF;>;I)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 352
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>;"
    .local p4, "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[TF;>;"
    move-object/from16 v10, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 354
    .local v11, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TR;>;"
    nop

    .line 355
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    move v3, v0

    .line 357
    .local v3, "debug":Z
    invoke-static/range {p1 .. p1}, Lcom/miui/hybrid/hook/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;

    move-result-object v12

    .line 358
    .local v12, "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v13

    .line 359
    .local v13, "scheme":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 360
    .local v14, "N":I
    const/4 v0, 0x0

    move v15, v0

    .local v15, "i":I
    :goto_23
    if-ge v15, v14, :cond_42

    .line 361
    nop

    .line 362
    move-object/from16 v9, p4

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Landroid/content/IntentFilter;

    .line 361
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v13

    move-object v8, v11

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/miui/hybrid/hook/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 360
    add-int/lit8 v15, v15, 0x1

    goto :goto_23

    .line 364
    .end local v15    # "i":I
    :cond_42
    invoke-virtual {v10, v11}, Lcom/miui/hybrid/hook/IntentResolver;->filterResults(Ljava/util/List;)V

    .line 365
    invoke-virtual {v10, v11}, Lcom/miui/hybrid/hook/IntentResolver;->sortResults(Ljava/util/List;)V

    .line 366
    return-object v11
.end method

.method public blacklist removeFilter(Landroid/content/IntentFilter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 189
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>;"
    .local p1, "f":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p0, p1}, Lcom/miui/hybrid/hook/IntentResolver;->removeFilterInternal(Landroid/content/IntentFilter;)V

    .line 190
    iget-object v0, p0, Lcom/miui/hybrid/hook/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 191
    return-void
.end method

.method blacklist removeFilterInternal(Landroid/content/IntentFilter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 200
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>;"
    .local p1, "f":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p1}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/hybrid/hook/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string v2, "      Scheme: "

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/hybrid/hook/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    move-result v0

    .line 202
    .local v0, "numS":I
    const-string v1, "      Type: "

    invoke-direct {p0, p1, v1}, Lcom/miui/hybrid/hook/IntentResolver;->unregister_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I

    move-result v1

    .line 203
    .local v1, "numT":I
    if-nez v0, :cond_21

    if-nez v1, :cond_21

    .line 204
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/hybrid/hook/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string v4, "      Action: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/miui/hybrid/hook/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 207
    :cond_21
    if-eqz v1, :cond_2e

    .line 208
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/hybrid/hook/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string v4, "      TypedAction: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/miui/hybrid/hook/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 211
    :cond_2e
    return-void
.end method

.method protected blacklist sortResults(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TR;>;)V"
        }
    .end annotation

    .line 520
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>;"
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<TR;>;"
    sget-object v0, Lcom/miui/hybrid/hook/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 521
    return-void
.end method
