.class public abstract Lcom/android/server/IntentResolver;
.super Ljava/lang/Object;
.source "IntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/IntentResolver$IteratorWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IntentResolver"

.field private static final localLOGV:Z = false

.field private static final localVerificationLOGV:Z = false

.field private static final mResolvePrioritySorter:Ljava/util/Comparator;


# instance fields
.field private final mActionToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mBaseTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field protected final mFilters:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "TF;>;"
        }
    .end annotation
.end field

.field private final mSchemeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mTypedActionToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mWildTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 890
    new-instance v0, Lcom/android/server/IntentResolver$1;

    invoke-direct {v0}, Lcom/android/server/IntentResolver$1;-><init>()V

    sput-object v0, Lcom/android/server/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 53
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 943
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    .line 949
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    .line 956
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    .line 965
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    .line 970
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    .line 976
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    .line 981
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    return-void
.end method

.method private final addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V
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

    .line 628
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    .local p3, "filter":Ljava/lang/Object;, "TF;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 629
    .local v0, "array":[Ljava/lang/Object;, "[TF;"
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_14

    .line 630
    invoke-virtual {p0, v1}, Lcom/android/server/IntentResolver;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    .line 631
    invoke-virtual {p1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    aput-object p3, v0, v2

    goto :goto_35

    .line 634
    :cond_14
    array-length v3, v0

    .line 635
    .local v3, "N":I
    move v4, v3

    .line 636
    .local v4, "i":I
    :goto_16
    if-lez v4, :cond_21

    add-int/lit8 v5, v4, -0x1

    aget-object v5, v0, v5

    if-nez v5, :cond_21

    .line 637
    add-int/lit8 v4, v4, -0x1

    goto :goto_16

    .line 639
    :cond_21
    if-ge v4, v3, :cond_26

    .line 640
    aput-object p3, v0, v4

    goto :goto_35

    .line 642
    :cond_26
    mul-int/lit8 v5, v3, 0x3

    div-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/android/server/IntentResolver;->newArray(I)[Ljava/lang/Object;

    move-result-object v1

    .line 643
    .local v1, "newa":[Ljava/lang/Object;, "[TF;"
    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 644
    aput-object p3, v1, v3

    .line 645
    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    .end local v1    # "newa":[Ljava/lang/Object;, "[TF;"
    .end local v3    # "N":I
    .end local v4    # "i":I
    :goto_35
    return-void
.end method

.method private buildResolveList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/List;IJ)V
    .registers 35
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p4, "debug"    # Z
    .param p5, "defaultOnly"    # Z
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "scheme"    # Ljava/lang/String;
    .param p10, "userId"    # I
    .param p11, "customFlags"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Landroid/util/FastImmutableArraySet<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[TF;",
            "Ljava/util/List<",
            "TR;>;IJ)V"
        }
    .end annotation

    .line 784
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p3, "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    .local p8, "src":[Ljava/lang/Object;, "[TF;"
    .local p9, "dest":Ljava/util/List;, "Ljava/util/List<TR;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 785
    .local v10, "action":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 786
    .local v11, "data":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v12

    .line 788
    .local v12, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->isExcludingStopped()Z

    move-result v13

    .line 792
    .local v13, "excludingStopped":Z
    const-string v14, "IntentResolver"

    if-eqz p4, :cond_29

    .line 793
    new-instance v0, Landroid/util/LogPrinter;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v14, v2}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    .line 794
    .local v0, "logPrinter":Landroid/util/Printer;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Landroid/util/Printer;)V

    move-object v15, v0

    move-object v6, v1

    .local v1, "logPrintWriter":Ljava/io/PrintWriter;
    goto :goto_2d

    .line 796
    .end local v0    # "logPrinter":Landroid/util/Printer;
    .end local v1    # "logPrintWriter":Ljava/io/PrintWriter;
    :cond_29
    const/4 v0, 0x0

    .line 797
    .restart local v0    # "logPrinter":Landroid/util/Printer;
    const/4 v1, 0x0

    move-object v15, v0

    move-object v6, v1

    .line 800
    .end local v0    # "logPrinter":Landroid/util/Printer;
    .local v6, "logPrintWriter":Ljava/io/PrintWriter;
    .local v15, "logPrinter":Landroid/util/Printer;
    :goto_2d
    if-eqz v8, :cond_31

    array-length v0, v8

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    move v5, v0

    .line 801
    .local v5, "N":I
    const/4 v0, 0x0

    .line 804
    .local v0, "hasNonDefaults":Z
    const/4 v1, 0x0

    move/from16 v16, v0

    move v4, v1

    .end local v0    # "hasNonDefaults":Z
    .local v4, "i":I
    .local v16, "hasNonDefaults":Z
    :goto_38
    if-ge v4, v5, :cond_219

    aget-object v0, v8, v4

    move-object v3, v0

    .local v3, "filter":Ljava/lang/Object;, "TF;"
    if-eqz v0, :cond_210

    .line 806
    if-eqz p4, :cond_57

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Matching against filter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_57
    if-eqz v13, :cond_82

    move-object/from16 v2, p1

    invoke-interface {v2, v12}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    move/from16 v1, p10

    invoke-virtual {v7, v0, v1}, Lcom/android/server/IntentResolver;->isFilterStopped(Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 810
    if-eqz p4, :cond_78

    .line 811
    const-string v0, "  Filter\'s target is stopped; skipping"

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    move/from16 v18, v4

    move/from16 v20, v5

    move-object/from16 v21, v10

    move-object v10, v6

    goto/16 :goto_205

    .line 810
    :cond_78
    move-object v2, v3

    move/from16 v18, v4

    move/from16 v20, v5

    move-object/from16 v21, v10

    move-object v10, v6

    goto/16 :goto_205

    .line 808
    :cond_82
    move-object/from16 v2, p1

    move/from16 v1, p10

    .line 817
    :cond_86
    if-eqz v12, :cond_c0

    invoke-virtual {v7, v12, v3}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    .line 818
    if-eqz p4, :cond_b6

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Filter is not from package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; skipping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    move/from16 v18, v4

    move/from16 v20, v5

    move-object/from16 v21, v10

    move-object v10, v6

    goto/16 :goto_205

    .line 818
    :cond_b6
    move-object v2, v3

    move/from16 v18, v4

    move/from16 v20, v5

    move-object/from16 v21, v10

    move-object v10, v6

    goto/16 :goto_205

    .line 825
    :cond_c0
    invoke-virtual {v7, v3}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v1

    .line 826
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v1}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 827
    if-eqz p4, :cond_11b

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Filter verified: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7, v3}, Lcom/android/server/IntentResolver;->isFilterVerified(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v0

    .line 830
    .local v0, "authorities":I
    const/4 v2, 0x0

    .local v2, "z":I
    :goto_eb
    if-ge v2, v0, :cond_116

    .line 831
    move/from16 v17, v0

    .end local v0    # "authorities":I
    .local v17, "authorities":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v4

    .end local v4    # "i":I
    .local v18, "i":I
    const-string v4, "   "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v4

    .line 832
    invoke-virtual {v4}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 831
    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v17

    move/from16 v4, v18

    goto :goto_eb

    .end local v17    # "authorities":I
    .end local v18    # "i":I
    .restart local v0    # "authorities":I
    .restart local v4    # "i":I
    :cond_116
    move/from16 v17, v0

    move/from16 v18, v4

    .end local v0    # "authorities":I
    .end local v4    # "i":I
    .restart local v17    # "authorities":I
    .restart local v18    # "i":I
    goto :goto_120

    .line 827
    .end local v2    # "z":I
    .end local v17    # "authorities":I
    .end local v18    # "i":I
    .restart local v4    # "i":I
    :cond_11b
    move/from16 v18, v4

    .end local v4    # "i":I
    .restart local v18    # "i":I
    goto :goto_120

    .line 826
    .end local v18    # "i":I
    .restart local v4    # "i":I
    :cond_11e
    move/from16 v18, v4

    .line 838
    .end local v4    # "i":I
    .restart local v18    # "i":I
    :goto_120
    invoke-virtual {v7, v3, v9}, Lcom/android/server/IntentResolver;->allowFilterResult(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_13d

    .line 839
    if-eqz p4, :cond_135

    .line 840
    const-string v0, "  Filter\'s target already added"

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    move/from16 v20, v5

    move-object/from16 v21, v10

    move-object v10, v6

    goto/16 :goto_205

    .line 839
    :cond_135
    move-object v2, v3

    move/from16 v20, v5

    move-object/from16 v21, v10

    move-object v10, v6

    goto/16 :goto_205

    .line 845
    :cond_13d
    const-string v17, "IntentResolver"

    move-object v0, v1

    move-object v4, v1

    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    move-object v1, v10

    move-object/from16 v2, p6

    move-object/from16 v19, v3

    .end local v3    # "filter":Ljava/lang/Object;, "TF;"
    .local v19, "filter":Ljava/lang/Object;, "TF;"
    move-object/from16 v3, p7

    move-object v8, v4

    .end local v4    # "intentFilter":Landroid/content/IntentFilter;
    .local v8, "intentFilter":Landroid/content/IntentFilter;
    move-object v4, v11

    move/from16 v20, v5

    .end local v5    # "N":I
    .local v20, "N":I
    move-object/from16 v5, p3

    move-object/from16 v21, v10

    move-object v10, v6

    .end local v6    # "logPrintWriter":Ljava/io/PrintWriter;
    .local v10, "logPrintWriter":Ljava/io/PrintWriter;
    .local v21, "action":Ljava/lang/String;
    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v17

    .line 846
    .local v17, "match":I
    if-ltz v17, :cond_1d8

    .line 847
    const-string v0, "android.intent.category.DEFAULT"

    if-eqz p4, :cond_185

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Filter matched!  match=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 848
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hasDefault="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 849
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 847
    invoke-static {v14, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_185
    if-eqz p5, :cond_195

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18e

    goto :goto_195

    .line 862
    :cond_18e
    const/4 v0, 0x1

    move/from16 v16, v0

    move-object/from16 v2, v19

    .end local v16    # "hasNonDefaults":Z
    .local v0, "hasNonDefaults":Z
    goto/16 :goto_205

    .line 851
    .end local v0    # "hasNonDefaults":Z
    .restart local v16    # "hasNonDefaults":Z
    :cond_195
    :goto_195
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move/from16 v3, v17

    move/from16 v4, p10

    move-wide/from16 v5, p11

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/IntentResolver;->newResult(Lcom/android/server/pm/Computer;Ljava/lang/Object;IIJ)Ljava/lang/Object;

    move-result-object v0

    .line 852
    .local v0, "oneResult":Ljava/lang/Object;, "TR;"
    if-eqz p4, :cond_1bd

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Created result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_1bd
    if-eqz v0, :cond_1d5

    .line 854
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    if-eqz p4, :cond_1d2

    .line 856
    const-string v1, "    "

    move-object/from16 v2, v19

    .end local v19    # "filter":Ljava/lang/Object;, "TF;"
    .local v2, "filter":Ljava/lang/Object;, "TF;"
    invoke-virtual {v7, v10, v1, v2}, Lcom/android/server/IntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    .line 857
    invoke-virtual {v10}, Ljava/io/PrintWriter;->flush()V

    .line 858
    invoke-virtual {v8, v15, v1}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_1d7

    .line 855
    .end local v2    # "filter":Ljava/lang/Object;, "TF;"
    .restart local v19    # "filter":Ljava/lang/Object;, "TF;"
    :cond_1d2
    move-object/from16 v2, v19

    .end local v19    # "filter":Ljava/lang/Object;, "TF;"
    .restart local v2    # "filter":Ljava/lang/Object;, "TF;"
    goto :goto_1d7

    .line 853
    .end local v2    # "filter":Ljava/lang/Object;, "TF;"
    .restart local v19    # "filter":Ljava/lang/Object;, "TF;"
    :cond_1d5
    move-object/from16 v2, v19

    .line 861
    .end local v0    # "oneResult":Ljava/lang/Object;, "TR;"
    .end local v19    # "filter":Ljava/lang/Object;, "TF;"
    .restart local v2    # "filter":Ljava/lang/Object;, "TF;"
    :goto_1d7
    goto :goto_205

    .line 865
    .end local v2    # "filter":Ljava/lang/Object;, "TF;"
    .restart local v19    # "filter":Ljava/lang/Object;, "TF;"
    :cond_1d8
    move-object/from16 v2, v19

    .end local v19    # "filter":Ljava/lang/Object;, "TF;"
    .restart local v2    # "filter":Ljava/lang/Object;, "TF;"
    if-eqz p4, :cond_205

    .line 867
    packed-switch v17, :pswitch_data_240

    .line 872
    const-string/jumbo v0, "unknown reason"

    .local v0, "reason":Ljava/lang/String;
    goto :goto_1ef

    .line 871
    .end local v0    # "reason":Ljava/lang/String;
    :pswitch_1e3
    const-string/jumbo v0, "type"

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_1ef

    .line 870
    .end local v0    # "reason":Ljava/lang/String;
    :pswitch_1e7
    const-string v0, "data"

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_1ef

    .line 868
    .end local v0    # "reason":Ljava/lang/String;
    :pswitch_1ea
    const-string v0, "action"

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_1ef

    .line 869
    .end local v0    # "reason":Ljava/lang/String;
    :pswitch_1ed
    const-string v0, "category"

    .line 874
    .restart local v0    # "reason":Ljava/lang/String;
    :goto_1ef
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Filter did not match: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    .end local v0    # "reason":Ljava/lang/String;
    .end local v8    # "intentFilter":Landroid/content/IntentFilter;
    .end local v17    # "match":I
    :cond_205
    :goto_205
    add-int/lit8 v4, v18, 0x1

    move-object/from16 v8, p8

    move-object v6, v10

    move/from16 v5, v20

    move-object/from16 v10, v21

    .end local v18    # "i":I
    .local v4, "i":I
    goto/16 :goto_38

    .end local v2    # "filter":Ljava/lang/Object;, "TF;"
    .end local v20    # "N":I
    .end local v21    # "action":Ljava/lang/String;
    .restart local v3    # "filter":Ljava/lang/Object;, "TF;"
    .restart local v5    # "N":I
    .restart local v6    # "logPrintWriter":Ljava/io/PrintWriter;
    .local v10, "action":Ljava/lang/String;
    :cond_210
    move-object v2, v3

    move/from16 v18, v4

    move/from16 v20, v5

    move-object/from16 v21, v10

    move-object v10, v6

    .end local v3    # "filter":Ljava/lang/Object;, "TF;"
    .end local v4    # "i":I
    .end local v5    # "N":I
    .end local v6    # "logPrintWriter":Ljava/io/PrintWriter;
    .restart local v2    # "filter":Ljava/lang/Object;, "TF;"
    .local v10, "logPrintWriter":Ljava/io/PrintWriter;
    .restart local v18    # "i":I
    .restart local v20    # "N":I
    .restart local v21    # "action":Ljava/lang/String;
    goto :goto_220

    .end local v2    # "filter":Ljava/lang/Object;, "TF;"
    .end local v18    # "i":I
    .end local v20    # "N":I
    .end local v21    # "action":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "N":I
    .restart local v6    # "logPrintWriter":Ljava/io/PrintWriter;
    .local v10, "action":Ljava/lang/String;
    :cond_219
    move/from16 v18, v4

    move/from16 v20, v5

    move-object/from16 v21, v10

    move-object v10, v6

    .line 879
    .end local v4    # "i":I
    .end local v5    # "N":I
    .end local v6    # "logPrintWriter":Ljava/io/PrintWriter;
    .local v10, "logPrintWriter":Ljava/io/PrintWriter;
    .restart local v18    # "i":I
    .restart local v20    # "N":I
    .restart local v21    # "action":Ljava/lang/String;
    :goto_220
    if-eqz p4, :cond_23e

    if-eqz v16, :cond_23e

    .line 880
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_231

    .line 881
    const-string/jumbo v0, "resolveIntent failed: found match, but none with CATEGORY_DEFAULT"

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23e

    .line 882
    :cond_231
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_23e

    .line 883
    const-string/jumbo v0, "resolveIntent: multiple matches, only some with CATEGORY_DEFAULT"

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_23e
    :goto_23e
    return-void

    nop

    :pswitch_data_240
    .packed-switch -0x4
        :pswitch_1ed
        :pswitch_1ea
        :pswitch_1e7
        :pswitch_1e3
    .end packed-switch
.end method

.method private collectFilters([Ljava/lang/Object;Landroid/content/IntentFilter;)Ljava/util/ArrayList;
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

    .line 197
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TF;"
    const/4 v0, 0x0

    .line 198
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TF;>;"
    if-eqz p1, :cond_24

    .line 199
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_24

    .line 200
    aget-object v2, p1, v1

    .line 201
    .local v2, "cur":Ljava/lang/Object;, "TF;"
    if-nez v2, :cond_c

    .line 202
    goto :goto_24

    .line 204
    :cond_c
    invoke-virtual {p0, v2}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/server/IntentResolver;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 205
    if-nez v0, :cond_1e

    .line 206
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 208
    :cond_1e
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .end local v2    # "cur":Ljava/lang/Object;, "TF;"
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 212
    .end local v1    # "i":I
    :cond_24
    :goto_24
    return-object v0
.end method

.method public static filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z
    .registers 7
    .param p0, "f1"    # Landroid/content/IntentFilter;
    .param p1, "f2"    # Landroid/content/IntentFilter;

    .line 82
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    .line 83
    .local v0, "s1":I
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    .line 84
    .local v1, "s2":I
    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 85
    return v2

    .line 87
    :cond_c
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v0, :cond_1d

    .line 88
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 89
    return v2

    .line 87
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 92
    .end local v3    # "i":I
    :cond_1d
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countCategories()I

    move-result v0

    .line 93
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countCategories()I

    move-result v1

    .line 94
    if-eq v0, v1, :cond_28

    .line 95
    return v2

    .line 97
    :cond_28
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_29
    if-ge v3, v0, :cond_39

    .line 98
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 99
    return v2

    .line 97
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 102
    .end local v3    # "i":I
    :cond_39
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    .line 103
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v1

    .line 104
    if-eq v0, v1, :cond_44

    .line 105
    return v2

    .line 107
    :cond_44
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_45
    if-ge v3, v0, :cond_55

    .line 108
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasExactDataType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_52

    .line 109
    return v2

    .line 107
    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 112
    .end local v3    # "i":I
    :cond_55
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    .line 113
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v1

    .line 114
    if-eq v0, v1, :cond_60

    .line 115
    return v2

    .line 117
    :cond_60
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_61
    if-ge v3, v0, :cond_71

    .line 118
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6e

    .line 119
    return v2

    .line 117
    :cond_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    .line 122
    .end local v3    # "i":I
    :cond_71
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v0

    .line 123
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v1

    .line 124
    if-eq v0, v1, :cond_7c

    .line 125
    return v2

    .line 127
    :cond_7c
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_7d
    if-ge v3, v0, :cond_8d

    .line 128
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)Z

    move-result v4

    if-nez v4, :cond_8a

    .line 129
    return v2

    .line 127
    :cond_8a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7d

    .line 132
    .end local v3    # "i":I
    :cond_8d
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v0

    .line 133
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v1

    .line 134
    if-eq v0, v1, :cond_98

    .line 135
    return v2

    .line 137
    :cond_98
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_99
    if-ge v3, v0, :cond_a9

    .line 138
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasDataPath(Landroid/os/PatternMatcher;)Z

    move-result v4

    if-nez v4, :cond_a6

    .line 139
    return v2

    .line 137
    :cond_a6
    add-int/lit8 v3, v3, 0x1

    goto :goto_99

    .line 142
    .end local v3    # "i":I
    :cond_a9
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v0

    .line 143
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v1

    .line 144
    if-eq v0, v1, :cond_b4

    .line 145
    return v2

    .line 147
    :cond_b4
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_b5
    if-ge v3, v0, :cond_c5

    .line 148
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasDataSchemeSpecificPart(Landroid/os/PatternMatcher;)Z

    move-result v4

    if-nez v4, :cond_c2

    .line 149
    return v2

    .line 147
    :cond_c2
    add-int/lit8 v3, v3, 0x1

    goto :goto_b5

    .line 152
    .end local v3    # "i":I
    :cond_c5
    const/4 v2, 0x1

    return v2
.end method

.method private static getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;
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

    .line 773
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 774
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_8

    .line 775
    const/4 v1, 0x0

    return-object v1

    .line 777
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

.method public static intentMatchesFilter(Landroid/content/IntentFilter;Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 16
    .param p0, "filter"    # Landroid/content/IntentFilter;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;

    .line 160
    nop

    .line 161
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    .line 163
    .local v0, "debug":Z
    :goto_e
    const-string v3, "IntentResolver"

    if-eqz v0, :cond_1a

    .line 164
    new-instance v4, Landroid/util/LogPrinter;

    const/4 v5, 0x2

    const/4 v6, 0x3

    invoke-direct {v4, v5, v3, v6}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    goto :goto_1b

    :cond_1a
    const/4 v4, 0x0

    .line 166
    .local v4, "logPrinter":Landroid/util/Printer;
    :goto_1b
    if-eqz v0, :cond_4e

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Matching against filter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v5, "  "

    invoke-virtual {p0, v4, v5}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 172
    :cond_4e
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 173
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v11

    .line 172
    const-string v12, "IntentResolver"

    move-object v6, p0

    move-object v8, p2

    invoke-virtual/range {v6 .. v12}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v5

    .line 175
    .local v5, "match":I
    if-ltz v5, :cond_85

    .line 176
    if-eqz v0, :cond_84

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Filter matched!  match=0x"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_84
    return v1

    .line 181
    :cond_85
    if-eqz v0, :cond_b0

    .line 183
    packed-switch v5, :pswitch_data_b2

    .line 188
    const-string/jumbo v1, "unknown reason"

    .local v1, "reason":Ljava/lang/String;
    goto :goto_9a

    .line 187
    .end local v1    # "reason":Ljava/lang/String;
    :pswitch_8e
    const-string/jumbo v1, "type"

    .restart local v1    # "reason":Ljava/lang/String;
    goto :goto_9a

    .line 186
    .end local v1    # "reason":Ljava/lang/String;
    :pswitch_92
    const-string v1, "data"

    .restart local v1    # "reason":Ljava/lang/String;
    goto :goto_9a

    .line 184
    .end local v1    # "reason":Ljava/lang/String;
    :pswitch_95
    const-string v1, "action"

    .restart local v1    # "reason":Ljava/lang/String;
    goto :goto_9a

    .line 185
    .end local v1    # "reason":Ljava/lang/String;
    :pswitch_98
    const-string v1, "category"

    .line 190
    .restart local v1    # "reason":Ljava/lang/String;
    :goto_9a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Filter did not match: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v1    # "reason":Ljava/lang/String;
    :cond_b0
    return v2

    nop

    :pswitch_data_b2
    .packed-switch -0x4
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8e
    .end packed-switch
.end method

.method private final register_mime_types(Ljava/lang/Object;Ljava/lang/String;)I
    .registers 11
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 651
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Ljava/lang/Object;, "TF;"
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 652
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 653
    return v1

    .line 656
    :cond_c
    const/4 v2, 0x0

    .line 657
    .local v2, "num":I
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 658
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 659
    .local v3, "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 661
    move-object v4, v3

    .line 662
    .local v4, "baseName":Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 663
    .local v5, "slashpos":I
    if-lez v5, :cond_2d

    .line 664
    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_40

    .line 666
    :cond_2d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 669
    :goto_40
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v3, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 671
    if-lez v5, :cond_4d

    .line 672
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v4, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_52

    .line 674
    :cond_4d
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v4, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 676
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "baseName":Ljava/lang/String;
    .end local v5    # "slashpos":I
    :goto_52
    goto :goto_d

    .line 678
    :cond_53
    return v2
.end method

.method private final remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V
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

    .line 745
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    .local p3, "object":Ljava/lang/Object;, "TF;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 746
    .local v0, "array":[Ljava/lang/Object;, "[TF;"
    if-eqz v0, :cond_50

    .line 747
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 748
    .local v1, "LAST":I
    :goto_b
    if-ltz v1, :cond_14

    aget-object v2, v0, v1

    if-nez v2, :cond_14

    .line 749
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 751
    :cond_14
    move v2, v1

    .local v2, "idx":I
    :goto_15
    if-ltz v2, :cond_36

    .line 752
    aget-object v3, v0, v2

    .line 753
    .local v3, "arrayValue":Ljava/lang/Object;, "TF;"
    if-eqz v3, :cond_33

    invoke-virtual {p0, v3}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v4

    invoke-virtual {p0, p3}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v5

    if-ne v4, v5, :cond_33

    .line 754
    sub-int v4, v1, v2

    .line 755
    .local v4, "remain":I
    if-lez v4, :cond_2e

    .line 756
    add-int/lit8 v5, v2, 0x1

    invoke-static {v0, v5, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 758
    :cond_2e
    const/4 v5, 0x0

    aput-object v5, v0, v1

    .line 759
    add-int/lit8 v1, v1, -0x1

    .line 751
    .end local v3    # "arrayValue":Ljava/lang/Object;, "TF;"
    .end local v4    # "remain":I
    :cond_33
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    .line 762
    .end local v2    # "idx":I
    :cond_36
    if-gez v1, :cond_3c

    .line 763
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    .line 764
    :cond_3c
    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_50

    .line 765
    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Lcom/android/server/IntentResolver;->newArray(I)[Ljava/lang/Object;

    move-result-object v2

    .line 766
    .local v2, "newa":[Ljava/lang/Object;, "[TF;"
    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 767
    invoke-virtual {p1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    .end local v1    # "LAST":I
    .end local v2    # "newa":[Ljava/lang/Object;, "[TF;"
    :cond_50
    :goto_50
    return-void
.end method

.method private final unregister_mime_types(Ljava/lang/Object;Ljava/lang/String;)I
    .registers 11
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 682
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Ljava/lang/Object;, "TF;"
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 683
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 684
    return v1

    .line 687
    :cond_c
    const/4 v2, 0x0

    .line 688
    .local v2, "num":I
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 689
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 690
    .local v3, "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 692
    move-object v4, v3

    .line 693
    .local v4, "baseName":Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 694
    .local v5, "slashpos":I
    if-lez v5, :cond_2d

    .line 695
    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_40

    .line 697
    :cond_2d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 700
    :goto_40
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v3, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 702
    if-lez v5, :cond_4d

    .line 703
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v4, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_52

    .line 705
    :cond_4d
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v4, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 707
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "baseName":Ljava/lang/String;
    .end local v5    # "slashpos":I
    :goto_52
    goto :goto_d

    .line 708
    :cond_53
    return v2
.end method


# virtual methods
.method public addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/Object;)V
    .registers 9
    .param p1, "snapshot"    # Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/snapshot/PackageDataSnapshot;",
            "TF;)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p2, "f":Ljava/lang/Object;, "TF;"
    invoke-virtual {p0, p2}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v0

    .line 67
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string v3, "      Scheme: "

    invoke-virtual {p0, p2, v1, v2, v3}, Lcom/android/server/IntentResolver;->register_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    move-result v1

    .line 70
    .local v1, "numS":I
    const-string v2, "      Type: "

    invoke-direct {p0, p2, v2}, Lcom/android/server/IntentResolver;->register_mime_types(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    .line 71
    .local v2, "numT":I
    if-nez v1, :cond_2a

    if-nez v2, :cond_2a

    .line 72
    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string v5, "      Action: "

    invoke-virtual {p0, p2, v3, v4, v5}, Lcom/android/server/IntentResolver;->register_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 75
    :cond_2a
    if-eqz v2, :cond_37

    .line 76
    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string v5, "      TypedAction: "

    invoke-virtual {p0, p2, v3, v4, v5}, Lcom/android/server/IntentResolver;->register_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 79
    :cond_37
    return-void
.end method

.method protected allowFilterResult(Ljava/lang/Object;Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/List<",
            "TR;>;)Z"
        }
    .end annotation

    .line 561
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Ljava/lang/Object;, "TF;"
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<TR;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected copyFrom(Lcom/android/server/IntentResolver;)V
    .registers 4
    .param p1, "orig"    # Lcom/android/server/IntentResolver;

    .line 931
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/IntentResolver;->copyInto(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 932
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/IntentResolver;->copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 933
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/IntentResolver;->copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 934
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/IntentResolver;->copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 935
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/IntentResolver;->copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 936
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/IntentResolver;->copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 937
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/IntentResolver;->copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 938
    return-void
.end method

.method protected copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;)V"
        }
    .end annotation

    .line 905
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "l":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    .local p2, "r":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 906
    .local v0, "end":I
    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 907
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 908
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_33

    .line 909
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 910
    .local v2, "val":[Ljava/lang/Object;, "[TF;"
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 911
    .local v3, "key":Ljava/lang/String;
    array-length v4, v2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    .line 912
    .local v4, "newval":[Ljava/lang/Object;, "[TF;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1f
    array-length v6, v4

    if-ge v5, v6, :cond_2d

    .line 913
    aget-object v6, v4, v5

    invoke-virtual {p0, v6}, Lcom/android/server/IntentResolver;->snapshot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    .line 912
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 915
    .end local v5    # "j":I
    :cond_2d
    invoke-virtual {p1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    .end local v2    # "val":[Ljava/lang/Object;, "[TF;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "newval":[Ljava/lang/Object;, "[TF;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 917
    .end local v1    # "i":I
    :cond_33
    return-void
.end method

.method protected copyInto(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "TF;>;",
            "Landroid/util/ArraySet<",
            "TF;>;)V"
        }
    .end annotation

    .line 920
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "l":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TF;>;"
    .local p2, "r":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TF;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 921
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 922
    .local v0, "end":I
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->ensureCapacity(I)V

    .line 923
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_1b

    .line 924
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/IntentResolver;->snapshot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->append(Ljava/lang/Object;)V

    .line 923
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 926
    .end local v1    # "i":I
    :cond_1b
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 22
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "printFilter"    # Z
    .param p6, "collapseDuplicates"    # Z

    .line 359
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
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

    .line 360
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

    .line 361
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

    .line 362
    .local v14, "curPrefix":Ljava/lang/String;
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    const-string v3, "Full MIME Types:"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v4, v11

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 364
    move-object v14, v12

    .line 366
    :cond_56
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    const-string v3, "Base MIME Types:"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v4, v11

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 368
    move-object v14, v12

    .line 370
    :cond_6c
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    const-string v3, "Wild MIME Types:"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v4, v11

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 372
    move-object v14, v12

    .line 374
    :cond_82
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string v3, "Schemes:"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v4, v11

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 376
    move-object v14, v12

    .line 378
    :cond_98
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string v3, "Non-Data Actions:"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v4, v11

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 380
    move-object v14, v12

    .line 382
    :cond_ae
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string v3, "MIME Typed Actions:"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v4, v11

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 384
    move-object v14, v12

    .line 386
    :cond_c4
    if-ne v14, v12, :cond_c8

    const/4 v0, 0x1

    goto :goto_c9

    :cond_c8
    const/4 v0, 0x0

    :goto_c9
    return v0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 347
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 348
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    const-wide v3, 0x20b00000001L

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 349
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    const-wide v3, 0x20b00000002L

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 350
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    const-wide v3, 0x20b00000003L

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 351
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-wide v3, 0x20b00000004L

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 352
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-wide v3, 0x20b00000005L

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 353
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-wide v3, 0x20b00000006L

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 354
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 355
    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
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

    .line 616
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p3, "filter":Ljava/lang/Object;, "TF;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 617
    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 6
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/Object;
    .param p4, "count"    # I

    .line 624
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(I)V

    .line 625
    return-void
.end method

.method dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z
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

    .line 269
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
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

    .line 270
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

    .line 271
    .local v7, "fprefix":Ljava/lang/String;
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 272
    .local v8, "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    const/4 v9, 0x0

    .line 273
    .local v9, "printedSomething":Z
    const/4 v10, 0x0

    .line 274
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

    if-ge v12, v13, :cond_1a5

    .line 275
    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/Object;

    .line 276
    .local v13, "a":[Ljava/lang/Object;, "[TF;"
    array-length v14, v13

    .line 277
    .local v14, "N":I
    const/4 v15, 0x0

    .line 279
    .local v15, "printedHeader":Z
    const-string v2, ":"

    if-eqz p8, :cond_10e

    if-nez p7, :cond_10e

    .line 280
    invoke-virtual {v8}, Landroid/util/ArrayMap;->clear()V

    .line 281
    const/16 v16, 0x0

    move-object/from16 p3, v9

    move/from16 v9, v16

    .local v9, "i":I
    .restart local p3    # "title":Ljava/lang/String;
    :goto_5a
    if-ge v9, v14, :cond_bc

    aget-object v16, v13, v9

    move-object/from16 v17, v16

    .local v17, "filter":Ljava/lang/Object;, "TF;"
    if-eqz v16, :cond_b1

    .line 282
    if-eqz v4, :cond_77

    move-object/from16 v16, v11

    move-object/from16 v11, v17

    .end local v17    # "filter":Ljava/lang/Object;, "TF;"
    .local v11, "filter":Ljava/lang/Object;, "TF;"
    .local v16, "printer":Landroid/util/Printer;
    invoke-virtual {v0, v4, v11}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7b

    .line 283
    move-object/from16 v20, v6

    move/from16 v19, v10

    move-object/from16 v18, v11

    move/from16 v17, v15

    goto :goto_a6

    .line 282
    .end local v16    # "printer":Landroid/util/Printer;
    .local v11, "printer":Landroid/util/Printer;
    .restart local v17    # "filter":Ljava/lang/Object;, "TF;"
    :cond_77
    move-object/from16 v16, v11

    move-object/from16 v11, v17

    .line 285
    .end local v17    # "filter":Ljava/lang/Object;, "TF;"
    .local v11, "filter":Ljava/lang/Object;, "TF;"
    .restart local v16    # "printer":Landroid/util/Printer;
    :cond_7b
    move/from16 v17, v15

    .end local v15    # "printedHeader":Z
    .local v17, "printedHeader":Z
    invoke-virtual {v0, v11}, Lcom/android/server/IntentResolver;->filterToLabel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 286
    .local v15, "label":Ljava/lang/Object;
    move-object/from16 v18, v11

    .end local v11    # "filter":Ljava/lang/Object;, "TF;"
    .local v18, "filter":Ljava/lang/Object;, "TF;"
    invoke-virtual {v8, v15}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v11

    .line 287
    .local v11, "index":I
    move/from16 v19, v10

    .end local v10    # "printedSomething":Z
    .local v19, "printedSomething":Z
    const/4 v10, 0x1

    if-gez v11, :cond_97

    .line 288
    move-object/from16 v20, v6

    new-instance v6, Landroid/util/MutableInt;

    invoke-direct {v6, v10}, Landroid/util/MutableInt;-><init>(I)V

    invoke-virtual {v8, v15, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a6

    .line 290
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

    .line 281
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
    .end local v18    # "filter":Ljava/lang/Object;, "TF;"
    .end local v19    # "printedSomething":Z
    .restart local v10    # "printedSomething":Z
    .local v11, "printer":Landroid/util/Printer;
    .local v15, "printedHeader":Z
    .local v17, "filter":Ljava/lang/Object;, "TF;"
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
    .restart local v18    # "filter":Ljava/lang/Object;, "TF;"
    .restart local v19    # "printedSomething":Z
    goto :goto_c4

    .end local v16    # "printer":Landroid/util/Printer;
    .end local v17    # "printedHeader":Z
    .end local v18    # "filter":Ljava/lang/Object;, "TF;"
    .end local v19    # "printedSomething":Z
    .restart local v10    # "printedSomething":Z
    .restart local v11    # "printer":Landroid/util/Printer;
    .restart local v15    # "printedHeader":Z
    :cond_bc
    move-object/from16 v20, v6

    move/from16 v19, v10

    move-object/from16 v16, v11

    move/from16 v17, v15

    .line 293
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

    .line 294
    if-eqz v9, :cond_da

    .line 295
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    const/4 v9, 0x0

    .line 298
    :cond_da
    if-nez v15, :cond_ed

    .line 299
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    const/4 v11, 0x1

    move v15, v11

    .line 302
    :cond_ed
    const/4 v10, 0x1

    .line 303
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

    invoke-virtual {v0, v1, v7, v11, v8}, Lcom/android/server/IntentResolver;->dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 293
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

    move-object/from16 v1, v20

    .end local v6    # "i":I
    goto/16 :goto_196

    .line 279
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

    .line 306
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
    if-ge v6, v14, :cond_194

    aget-object v8, v13, v6

    move-object/from16 p3, v8

    .local p3, "filter":Ljava/lang/Object;, "TF;"
    if-eqz v8, :cond_18f

    .line 307
    if-eqz v4, :cond_138

    move-object/from16 v8, p3

    .end local p3    # "filter":Ljava/lang/Object;, "TF;"
    .local v8, "filter":Ljava/lang/Object;, "TF;"
    invoke-virtual {v0, v4, v8}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_13a

    .line 308
    move-object/from16 v1, v20

    goto :goto_184

    .line 307
    .end local v8    # "filter":Ljava/lang/Object;, "TF;"
    .restart local p3    # "filter":Ljava/lang/Object;, "TF;"
    :cond_138
    move-object/from16 v8, p3

    .line 310
    .end local p3    # "filter":Ljava/lang/Object;, "TF;"
    .restart local v8    # "filter":Ljava/lang/Object;, "TF;"
    :cond_13a
    if-eqz v9, :cond_143

    .line 311
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    const/4 v9, 0x0

    .line 314
    :cond_143
    if-nez v15, :cond_157

    .line 315
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    const/4 v15, 0x1

    .line 318
    :cond_157
    const/4 v3, 0x1

    .line 319
    .end local v10    # "printedSomething":Z
    .local v3, "printedSomething":Z
    invoke-virtual {v0, v1, v7, v8}, Lcom/android/server/IntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    .line 320
    if-eqz p7, :cond_181

    .line 321
    if-nez v11, :cond_165

    .line 322
    new-instance v10, Landroid/util/PrintWriterPrinter;

    invoke-direct {v10, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    move-object v11, v10

    .line 324
    :cond_165
    invoke-virtual {v0, v8}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    move v10, v3

    goto :goto_184

    .line 320
    :cond_181
    move-object/from16 v1, v20

    move v10, v3

    .line 306
    .end local v3    # "printedSomething":Z
    .restart local v10    # "printedSomething":Z
    :goto_184
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p5

    move-object/from16 v20, v1

    move-object/from16 v1, p1

    goto :goto_123

    .end local v8    # "filter":Ljava/lang/Object;, "TF;"
    .restart local p3    # "filter":Ljava/lang/Object;, "TF;"
    :cond_18f
    move-object/from16 v8, p3

    move-object/from16 v1, v20

    .end local p3    # "filter":Ljava/lang/Object;, "TF;"
    .restart local v8    # "filter":Ljava/lang/Object;, "TF;"
    goto :goto_196

    .end local v8    # "filter":Ljava/lang/Object;, "TF;"
    :cond_194
    move-object/from16 v1, v20

    .line 274
    .end local v6    # "i":I
    .end local v13    # "a":[Ljava/lang/Object;, "[TF;"
    .end local v14    # "N":I
    .end local v15    # "printedHeader":Z
    :goto_196
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object v6, v1

    move-object/from16 v8, v18

    move-object/from16 v1, p1

    goto/16 :goto_3d

    .end local v18    # "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    .local v8, "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    :cond_1a5
    move/from16 v19, v10

    .line 329
    .end local v10    # "printedSomething":Z
    .end local v12    # "mapi":I
    .restart local v19    # "printedSomething":Z
    return v19
.end method

.method public filterIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TF;>;"
        }
    .end annotation

    .line 418
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    new-instance v0, Lcom/android/server/IntentResolver$IteratorWrapper;

    iget-object v1, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/IntentResolver$IteratorWrapper;-><init>(Lcom/android/server/IntentResolver;Ljava/util/Iterator;)V

    return-object v0
.end method

.method protected filterResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TR;>;)V"
        }
    .end annotation

    .line 613
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<TR;>;"
    return-void
.end method

.method public filterSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TF;>;"
        }
    .end annotation

    .line 425
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected filterToLabel(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 620
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Ljava/lang/Object;, "TF;"
    const-string v0, "IntentFilter"

    return-object v0
.end method

.method public findFilters(Landroid/content/IntentFilter;)Ljava/util/ArrayList;
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

    .line 216
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_19

    .line 218
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lcom/android/server/IntentResolver;->collectFilters([Ljava/lang/Object;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 219
    :cond_19
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ne v0, v2, :cond_36

    .line 221
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lcom/android/server/IntentResolver;->collectFilters([Ljava/lang/Object;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 222
    :cond_36
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    if-nez v0, :cond_59

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    if-nez v0, :cond_59

    .line 223
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ne v0, v2, :cond_59

    .line 225
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lcom/android/server/IntentResolver;->collectFilters([Ljava/lang/Object;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 227
    :cond_59
    const/4 v0, 0x0

    .line 228
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TF;>;"
    iget-object v1, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_60
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 229
    .local v2, "cur":Ljava/lang/Object;, "TF;"
    invoke-virtual {p0, v2}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/server/IntentResolver;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 230
    if-nez v0, :cond_7c

    .line 231
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 233
    :cond_7c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    .end local v2    # "cur":Ljava/lang/Object;, "TF;"
    :cond_7f
    goto :goto_60

    .line 236
    :cond_80
    return-object v0
.end method

.method protected abstract getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Landroid/content/IntentFilter;"
        }
    .end annotation
.end method

.method protected isFilterStopped(Lcom/android/server/pm/pkg/PackageStateInternal;I)Z
    .registers 4
    .param p1, "packageState"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "userId"    # I

    .line 570
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected isFilterVerified(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation

    .line 586
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Ljava/lang/Object;, "TF;"
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/IntentFilter;->isVerified()Z

    move-result v0

    return v0
.end method

.method protected abstract isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TF;)Z"
        }
    .end annotation
.end method

.method protected abstract newArray(I)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TF;"
        }
    .end annotation
.end method

.method protected newResult(Lcom/android/server/pm/Computer;Ljava/lang/Object;IIJ)Ljava/lang/Object;
    .registers 7
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p3, "match"    # I
    .param p4, "userId"    # I
    .param p5, "customFlags"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "TF;IIJ)TR;"
        }
    .end annotation

    .line 601
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p2, "filter":Ljava/lang/Object;, "TF;"
    return-object p2
.end method

.method public queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .registers 14
    .param p1, "snapshot"    # Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "defaultOnly"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/snapshot/PackageDataSnapshot;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 450
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZIJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZIJ)Ljava/util/List;
    .registers 32
    .param p1, "snapshot"    # Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "defaultOnly"    # Z
    .param p5, "userId"    # I
    .param p6, "customFlags"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/snapshot/PackageDataSnapshot;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZIJ)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 455
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    move-object/from16 v13, p0

    move-object/from16 v14, p3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v15

    .line 457
    .local v15, "scheme":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 459
    .local v11, "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TR;>;"
    nop

    .line 460
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    move v0, v1

    :goto_1b
    move/from16 v16, v0

    .line 462
    .local v16, "debug":Z
    const-string v12, "IntentResolver"

    if-eqz v16, :cond_66

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resolving type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " scheme="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " defaultOnly="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v10, p4

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v9, p5

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v8, p2

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    :cond_66
    move-object/from16 v8, p2

    move/from16 v10, p4

    move/from16 v9, p5

    .line 466
    :goto_6c
    const/4 v0, 0x0

    .line 467
    .local v0, "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    const/4 v2, 0x0

    .line 468
    .local v2, "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    const/4 v3, 0x0

    .line 469
    .local v3, "thirdTypeCut":[Ljava/lang/Object;, "[TF;"
    const/4 v4, 0x0

    .line 473
    .local v4, "schemeCut":[Ljava/lang/Object;, "[TF;"
    if-eqz v14, :cond_192

    .line 474
    const/16 v5, 0x2f

    invoke-virtual {v14, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 475
    .local v5, "slashpos":I
    if-lez v5, :cond_18b

    .line 476
    invoke-virtual {v14, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, "baseType":Ljava/lang/String;
    const-string v6, "*"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_156

    .line 478
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v17, v0

    .end local v0    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    .local v17, "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    add-int/lit8 v0, v5, 0x2

    move-object/from16 v18, v2

    .end local v2    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    .local v18, "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    const-string v2, "Second type cut: "

    move-object/from16 v19, v3

    .end local v3    # "thirdTypeCut":[Ljava/lang/Object;, "[TF;"
    .local v19, "thirdTypeCut":[Ljava/lang/Object;, "[TF;"
    const-string v3, "First type cut: "

    if-ne v7, v0, :cond_e8

    add-int/lit8 v0, v5, 0x1

    .line 479
    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0x2a

    if-eq v0, v7, :cond_a3

    goto :goto_e8

    .line 489
    :cond_a3
    iget-object v0, v13, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 490
    .end local v17    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v0    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    if-eqz v16, :cond_c5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_c5
    iget-object v3, v13, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 492
    .end local v18    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    .local v3, "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    if-eqz v16, :cond_12c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 493
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 492
    invoke-static {v12, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12c

    .line 482
    .end local v0    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    .end local v3    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v17    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v18    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    :cond_e8
    :goto_e8
    iget-object v0, v13, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 483
    .end local v17    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v0    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    if-eqz v16, :cond_10a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_10a
    iget-object v3, v13, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 485
    .end local v18    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v3    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    if-eqz v16, :cond_12c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 486
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 485
    invoke-static {v12, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_12c
    :goto_12c
    move-object v2, v3

    .end local v3    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v2    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    iget-object v3, v13, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 498
    .end local v19    # "thirdTypeCut":[Ljava/lang/Object;, "[TF;"
    .local v3, "thirdTypeCut":[Ljava/lang/Object;, "[TF;"
    if-eqz v16, :cond_151

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Third type cut: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    .end local v1    # "baseType":Ljava/lang/String;
    .end local v5    # "slashpos":I
    :cond_151
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    goto :goto_19a

    .line 499
    .restart local v1    # "baseType":Ljava/lang/String;
    .restart local v5    # "slashpos":I
    :cond_156
    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    .end local v0    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    .end local v2    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    .end local v3    # "thirdTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v17    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v18    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v19    # "thirdTypeCut":[Ljava/lang/Object;, "[TF;"
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_198

    .line 503
    iget-object v0, v13, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 504
    .end local v17    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v0    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    if-eqz v16, :cond_19a

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

    invoke-static {v12, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19a

    .line 475
    .end local v1    # "baseType":Ljava/lang/String;
    .end local v18    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    .end local v19    # "thirdTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v2    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v3    # "thirdTypeCut":[Ljava/lang/Object;, "[TF;"
    :cond_18b
    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    .end local v0    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    .end local v2    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    .end local v3    # "thirdTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v17    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v18    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v19    # "thirdTypeCut":[Ljava/lang/Object;, "[TF;"
    goto :goto_198

    .line 473
    .end local v5    # "slashpos":I
    .end local v17    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    .end local v18    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    .end local v19    # "thirdTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v0    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v2    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v3    # "thirdTypeCut":[Ljava/lang/Object;, "[TF;"
    :cond_192
    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    .line 512
    .end local v0    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    .end local v2    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    .end local v3    # "thirdTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v17    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v18    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v19    # "thirdTypeCut":[Ljava/lang/Object;, "[TF;"
    :cond_198
    :goto_198
    move-object/from16 v0, v17

    .end local v17    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v0    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    :cond_19a
    :goto_19a
    if-eqz v15, :cond_1c4

    .line 513
    iget-object v1, v13, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Ljava/lang/Object;

    .line 514
    if-eqz v16, :cond_1c1

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

    invoke-static {v12, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_1c1
    move-object/from16 v17, v4

    goto :goto_1c6

    .line 512
    :cond_1c4
    move-object/from16 v17, v4

    .line 520
    .end local v4    # "schemeCut":[Ljava/lang/Object;, "[TF;"
    .local v17, "schemeCut":[Ljava/lang/Object;, "[TF;"
    :goto_1c6
    if-nez v14, :cond_1f9

    if-nez v15, :cond_1f9

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f9

    .line 521
    iget-object v1, v13, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 522
    if-eqz v16, :cond_1f9

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

    invoke-static {v12, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_1f9
    move-object/from16 v20, v0

    .end local v0    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    .local v20, "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    invoke-static/range {p2 .. p2}, Lcom/android/server/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;

    move-result-object v21

    .line 526
    .local v21, "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    move-object/from16 v22, p1

    check-cast v22, Lcom/android/server/pm/Computer;

    .line 527
    .local v22, "computer":Lcom/android/server/pm/Computer;
    if-eqz v20, :cond_222

    .line 528
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    move/from16 v4, v16

    move/from16 v5, p4

    move-object/from16 v6, p3

    move-object v7, v15

    move-object/from16 v8, v20

    move-object v9, v11

    move/from16 v10, p5

    move-object/from16 v23, v11

    move-object v14, v12

    .end local v11    # "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TR;>;"
    .local v23, "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TR;>;"
    move-wide/from16 v11, p6

    invoke-direct/range {v0 .. v12}, Lcom/android/server/IntentResolver;->buildResolveList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/List;IJ)V

    goto :goto_225

    .line 527
    .end local v23    # "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TR;>;"
    .restart local v11    # "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TR;>;"
    :cond_222
    move-object/from16 v23, v11

    move-object v14, v12

    .line 531
    .end local v11    # "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TR;>;"
    .restart local v23    # "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TR;>;"
    :goto_225
    if-eqz v18, :cond_241

    .line 532
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    move/from16 v4, v16

    move/from16 v5, p4

    move-object/from16 v6, p3

    move-object v7, v15

    move-object/from16 v8, v18

    move-object/from16 v9, v23

    move/from16 v10, p5

    move-wide/from16 v11, p6

    invoke-direct/range {v0 .. v12}, Lcom/android/server/IntentResolver;->buildResolveList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/List;IJ)V

    .line 535
    :cond_241
    if-eqz v19, :cond_25d

    .line 536
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    move/from16 v4, v16

    move/from16 v5, p4

    move-object/from16 v6, p3

    move-object v7, v15

    move-object/from16 v8, v19

    move-object/from16 v9, v23

    move/from16 v10, p5

    move-wide/from16 v11, p6

    invoke-direct/range {v0 .. v12}, Lcom/android/server/IntentResolver;->buildResolveList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/List;IJ)V

    .line 539
    :cond_25d
    if-eqz v17, :cond_279

    .line 540
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    move/from16 v4, v16

    move/from16 v5, p4

    move-object/from16 v6, p3

    move-object v7, v15

    move-object/from16 v8, v17

    move-object/from16 v9, v23

    move/from16 v10, p5

    move-wide/from16 v11, p6

    invoke-direct/range {v0 .. v12}, Lcom/android/server/IntentResolver;->buildResolveList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/List;IJ)V

    .line 543
    :cond_279
    move-object/from16 v0, v23

    .end local v23    # "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TR;>;"
    .local v0, "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TR;>;"
    invoke-virtual {v13, v0}, Lcom/android/server/IntentResolver;->filterResults(Ljava/util/List;)V

    .line 544
    invoke-virtual {v13, v0}, Lcom/android/server/IntentResolver;->sortResults(Ljava/util/List;)V

    .line 546
    if-eqz v16, :cond_2ac

    .line 547
    const-string v1, "Final result list:"

    invoke-static {v14, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_289
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2ac

    .line 549
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    add-int/lit8 v1, v1, 0x1

    goto :goto_289

    .line 552
    .end local v1    # "i":I
    :cond_2ac
    return-object v0
.end method

.method public queryIntentFromList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;IJ)Ljava/util/List;
    .registers 28
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "defaultOnly"    # Z
    .param p6, "userId"    # I
    .param p7, "customFlags"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "[TF;>;IJ)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 431
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p5, "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[TF;>;"
    move-object/from16 v13, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 433
    .local v14, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TR;>;"
    nop

    .line 434
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    move v4, v0

    .line 436
    .local v4, "debug":Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;

    move-result-object v15

    .line 437
    .local v15, "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v16

    .line 438
    .local v16, "scheme":Ljava/lang/String;
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 439
    .local v11, "N":I
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_23
    if-ge v12, v11, :cond_4d

    .line 440
    nop

    .line 441
    move-object/from16 v10, p5

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Ljava/lang/Object;

    .line 440
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v15

    move/from16 v5, p4

    move-object/from16 v6, p3

    move-object/from16 v7, v16

    move-object v9, v14

    move/from16 v10, p6

    move/from16 v17, v11

    move/from16 v18, v12

    .end local v11    # "N":I
    .end local v12    # "i":I
    .local v17, "N":I
    .local v18, "i":I
    move-wide/from16 v11, p7

    invoke-direct/range {v0 .. v12}, Lcom/android/server/IntentResolver;->buildResolveList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/List;IJ)V

    .line 439
    add-int/lit8 v12, v18, 0x1

    move/from16 v11, v17

    .end local v18    # "i":I
    .restart local v12    # "i":I
    goto :goto_23

    .line 443
    .end local v12    # "i":I
    .end local v17    # "N":I
    .restart local v11    # "N":I
    :cond_4d
    invoke-virtual {v13, v14}, Lcom/android/server/IntentResolver;->filterResults(Ljava/util/List;)V

    .line 444
    invoke-virtual {v13, v14}, Lcom/android/server/IntentResolver;->sortResults(Ljava/util/List;)V

    .line 445
    return-object v14
.end method

.method protected final register_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
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

    .line 713
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Ljava/lang/Object;, "TF;"
    .local p2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local p3, "dest":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    if-nez p2, :cond_4

    .line 714
    const/4 v0, 0x0

    return v0

    .line 717
    :cond_4
    const/4 v0, 0x0

    .line 718
    .local v0, "num":I
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 719
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 720
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 722
    invoke-direct {p0, p3, v1, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 723
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_5

    .line 724
    :cond_17
    return v0
.end method

.method public removeFilter(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 241
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "f":Ljava/lang/Object;, "TF;"
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->removeFilterInternal(Ljava/lang/Object;)V

    .line 242
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 243
    return-void
.end method

.method protected removeFilterInternal(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 246
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "f":Ljava/lang/Object;, "TF;"
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v0

    .line 253
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string v3, "      Scheme: "

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    move-result v1

    .line 255
    .local v1, "numS":I
    const-string v2, "      Type: "

    invoke-direct {p0, p1, v2}, Lcom/android/server/IntentResolver;->unregister_mime_types(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    .line 256
    .local v2, "numT":I
    if-nez v1, :cond_25

    if-nez v2, :cond_25

    .line 257
    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string v5, "      Action: "

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 260
    :cond_25
    if-eqz v2, :cond_32

    .line 261
    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string v5, "      TypedAction: "

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 264
    :cond_32
    return-void
.end method

.method protected snapshot(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TF;"
        }
    .end annotation

    .line 900
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "f":Ljava/lang/Object;, "TF;"
    return-object p1
.end method

.method protected sortResults(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TR;>;)V"
        }
    .end annotation

    .line 606
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<TR;>;"
    sget-object v0, Lcom/android/server/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 607
    return-void
.end method

.method protected final unregister_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
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

    .line 729
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Ljava/lang/Object;, "TF;"
    .local p2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local p3, "dest":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    if-nez p2, :cond_4

    .line 730
    const/4 v0, 0x0

    return v0

    .line 733
    :cond_4
    const/4 v0, 0x0

    .line 734
    .local v0, "num":I
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 735
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 736
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 738
    invoke-direct {p0, p3, v1, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 739
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_5

    .line 740
    :cond_17
    return v0
.end method

.method writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V
    .registers 16
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;)V"
        }
    .end annotation

    .line 333
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p4, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 334
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "mapi":I
    :goto_5
    if-ge v1, v0, :cond_3c

    .line 335
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 336
    .local v2, "token":J
    const-wide v4, 0x10900000001L

    invoke-virtual {p4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 337
    invoke-virtual {p4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_21
    if-ge v6, v5, :cond_36

    aget-object v7, v4, v6

    .line 338
    .local v7, "f":Ljava/lang/Object;, "TF;"
    if-eqz v7, :cond_33

    .line 339
    const-wide v8, 0x20900000002L

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 337
    .end local v7    # "f":Ljava/lang/Object;, "TF;"
    :cond_33
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 342
    :cond_36
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 334
    .end local v2    # "token":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 344
    .end local v1    # "mapi":I
    :cond_3c
    return-void
.end method
