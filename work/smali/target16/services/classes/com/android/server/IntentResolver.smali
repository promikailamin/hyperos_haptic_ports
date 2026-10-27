.class public abstract Lcom/android/server/IntentResolver;
.super Ljava/lang/Object;
.source "IntentResolver.java"


# static fields
.field public static final mResolvePrioritySorter:Ljava/util/Comparator;


# instance fields
.field public final mActionToFilter:Landroid/util/ArrayMap;

.field public final mBaseTypeToFilter:Landroid/util/ArrayMap;

.field public final mFilters:Landroid/util/ArraySet;

.field public final mSchemeToFilter:Landroid/util/ArrayMap;

.field public final mTypeToFilter:Landroid/util/ArrayMap;

.field public final mTypedActionToFilter:Landroid/util/ArrayMap;

.field public final mWildTypeToFilter:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 830
    new-instance v0, Lcom/android/server/IntentResolver$1;

    invoke-direct {v0}, Lcom/android/server/IntentResolver$1;-><init>()V

    sput-object v0, Lcom/android/server/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 883
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    .line 889
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    .line 896
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    .line 905
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    .line 910
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    .line 916
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    .line 921
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    return-void
.end method

.method public static getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;
    .registers 3

    .line 714
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 718
    :cond_8
    new-instance v0, Landroid/util/FastImmutableArraySet;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-direct {v0, p0}, Landroid/util/FastImmutableArraySet;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static intentMatchesFilter(Landroid/content/IntentFilter;Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 16

    .line 88
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    .line 90
    :goto_d
    const-string v3, "IntentResolver"

    if-eqz v0, :cond_19

    .line 91
    new-instance v4, Landroid/util/LogPrinter;

    const/4 v5, 0x2

    const/4 v6, 0x3

    invoke-direct {v4, v5, v3, v6}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    goto :goto_1a

    :cond_19
    const/4 v4, 0x0

    :goto_1a
    if-eqz v0, :cond_49

    .line 94
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Matching against filter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v5, "  "

    invoke-virtual {p0, v4, v5}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 99
    :cond_49
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 100
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v11

    const-string v12, "IntentResolver"

    move-object v6, p0

    move-object v8, p2

    .line 99
    invoke-virtual/range {v6 .. v12}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_7e

    if-eqz v0, :cond_7d

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Filter matched!  match=0x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    return v2

    :cond_7e
    if-eqz v0, :cond_b0

    const/4 p1, -0x4

    if-eq p0, p1, :cond_9a

    const/4 p1, -0x3

    if-eq p0, p1, :cond_97

    const/4 p1, -0x2

    if-eq p0, p1, :cond_94

    const/4 p1, -0x1

    if-eq p0, p1, :cond_90

    .line 115
    const-string/jumbo p0, "unknown reason"

    goto :goto_9c

    .line 114
    :cond_90
    const-string/jumbo p0, "type"

    goto :goto_9c

    .line 113
    :cond_94
    const-string p0, "data"

    goto :goto_9c

    .line 111
    :cond_97
    const-string p0, "action"

    goto :goto_9c

    .line 112
    :cond_9a
    const-string p0, "category"

    .line 117
    :goto_9c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Filter did not match: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b0
    return v1
.end method


# virtual methods
.method public final addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10

    .line 569
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_14

    .line 571
    invoke-virtual {p0, v1}, Lcom/android/server/IntentResolver;->newArray(I)[Ljava/lang/Object;

    move-result-object p0

    .line 572
    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    aput-object p3, p0, v2

    return-void

    .line 575
    :cond_14
    array-length v3, v0

    move v4, v3

    :goto_16
    if-lez v4, :cond_21

    add-int/lit8 v5, v4, -0x1

    .line 577
    aget-object v5, v0, v5

    if-nez v5, :cond_21

    add-int/lit8 v4, v4, -0x1

    goto :goto_16

    :cond_21
    if-ge v4, v3, :cond_26

    .line 581
    aput-object p3, v0, v4

    return-void

    :cond_26
    mul-int/lit8 v4, v3, 0x3

    .line 583
    div-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/android/server/IntentResolver;->newArray(I)[Ljava/lang/Object;

    move-result-object p0

    .line 584
    invoke-static {v0, v2, p0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 585
    aput-object p3, p0, v3

    .line 586
    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/Object;)V
    .registers 7

    .line 61
    invoke-virtual {p0, p2}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object p1

    .line 68
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {p1}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string v2, "      Scheme: "

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/android/server/IntentResolver;->register_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    move-result v0

    .line 71
    const-string v1, "      Type: "

    invoke-virtual {p0, p2, v1}, Lcom/android/server/IntentResolver;->register_mime_types(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    if-nez v0, :cond_2a

    if-nez v1, :cond_2a

    .line 73
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string v3, "      Action: "

    invoke-virtual {p0, p2, v0, v2, v3}, Lcom/android/server/IntentResolver;->register_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    :cond_2a
    if-eqz v1, :cond_37

    .line 77
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string v1, "      TypedAction: "

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/android/server/IntentResolver;->register_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    :cond_37
    return-void
.end method

.method public allowFilterResult(Ljava/lang/Object;Ljava/util/List;)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public final buildResolveList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/List;IJ)V
    .registers 35

    move-object/from16 v0, p0

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 725
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 726
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    .line 727
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 729
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->isExcludingStopped()Z

    move-result v16

    .line 733
    const-string v2, "IntentResolver"

    if-eqz p4, :cond_27

    .line 734
    new-instance v3, Landroid/util/LogPrinter;

    const/4 v4, 0x2

    const/4 v5, 0x3

    invoke-direct {v3, v4, v2, v5}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    .line 735
    new-instance v4, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v4, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Landroid/util/Printer;)V

    goto :goto_29

    :cond_27
    const/4 v3, 0x0

    move-object v4, v3

    :goto_29
    const/16 v17, 0x0

    if-eqz v7, :cond_2f

    .line 741
    array-length v5, v7

    goto :goto_31

    :cond_2f
    move/from16 v5, v17

    :goto_31
    move/from16 v6, v17

    move/from16 v18, v6

    :goto_35
    const/4 v9, 0x1

    if-ge v6, v5, :cond_1c9

    .line 745
    aget-object v11, v7, v6

    if-eqz v11, :cond_1c9

    if-eqz p4, :cond_52

    .line 747
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Matching against filter "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    move-object/from16 v12, p1

    move-object/from16 v19, v4

    move/from16 v4, p10

    if-eqz v16, :cond_71

    .line 749
    invoke-virtual {v0, v12, v11, v4}, Lcom/android/server/IntentResolver;->isFilterStopped(Lcom/android/server/pm/Computer;Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_71

    if-eqz p4, :cond_67

    .line 751
    const-string v9, "  Filter\'s target is stopped; skipping"

    invoke-static {v2, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    :goto_67
    move-object/from16 v20, v1

    move-object v7, v2

    move-object v12, v3

    move v14, v5

    move v15, v6

    move-object/from16 v11, v19

    goto/16 :goto_1bd

    :cond_71
    if-eqz v1, :cond_95

    .line 757
    invoke-virtual {v0, v1, v11}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_95

    if-eqz p4, :cond_67

    .line 759
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Filter is not from package "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "; skipping"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    :cond_95
    move v14, v9

    .line 765
    invoke-virtual {v0, v11}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v9

    .line 766
    invoke-virtual {v9}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v15

    if-eqz v15, :cond_e9

    if-eqz p4, :cond_e9

    .line 768
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  Filter verified: "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Lcom/android/server/IntentResolver;->isFilterVerified(Ljava/lang/Object;)Z

    move-result v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    invoke-virtual {v9}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v14

    move/from16 v15, v17

    :goto_c0
    if-ge v15, v14, :cond_e9

    move-object/from16 v20, v1

    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v3

    const-string v3, "   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v3

    .line 772
    invoke-virtual {v3}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 771
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v20

    move-object/from16 v3, v21

    goto :goto_c0

    :cond_e9
    move-object/from16 v20, v1

    move-object/from16 v21, v3

    .line 778
    invoke-virtual {v0, v11, v8}, Lcom/android/server/IntentResolver;->allowFilterResult(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_fc

    if-eqz p4, :cond_fa

    .line 780
    const-string v1, "  Filter\'s target already added"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fa
    move-object v7, v2

    goto :goto_14d

    .line 785
    :cond_fc
    const-string v15, "IntentResolver"

    move-object/from16 v14, p3

    move-object/from16 v12, p7

    move-object v1, v11

    const/4 v3, 0x1

    move-object/from16 v11, p6

    invoke-virtual/range {v9 .. v15}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v15

    if-ltz v15, :cond_183

    .line 787
    const-string v11, "android.intent.category.DEFAULT"

    if-eqz p4, :cond_134

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  Filter matched!  match=0x"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " hasDefault="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    invoke-virtual {v9, v11}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 787
    invoke-static {v2, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_134
    if-eqz p5, :cond_13c

    .line 790
    invoke-virtual {v9, v11}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14a

    :cond_13c
    move-object v7, v2

    move v14, v5

    move v3, v15

    move-object/from16 v11, v19

    move-object/from16 v12, v21

    move-object v2, v1

    move v15, v6

    move-object/from16 v1, p1

    move-wide/from16 v5, p11

    goto :goto_155

    :cond_14a
    move-object v7, v2

    move/from16 v18, v3

    :goto_14d
    move v14, v5

    move v15, v6

    move-object/from16 v11, v19

    move-object/from16 v12, v21

    goto/16 :goto_1bd

    .line 791
    :goto_155
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/IntentResolver;->newResult(Lcom/android/server/pm/Computer;Ljava/lang/Object;IIJ)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v2

    if-eqz p4, :cond_170

    .line 792
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    Created result: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_170
    if-eqz v3, :cond_1bd

    .line 794
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_1bd

    .line 796
    const-string v2, "    "

    invoke-virtual {v0, v11, v2, v1}, Lcom/android/server/IntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    .line 797
    invoke-virtual {v11}, Ljava/io/PrintWriter;->flush()V

    .line 798
    invoke-virtual {v9, v12, v2}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_1bd

    :cond_183
    move-object v7, v2

    move v14, v5

    move v3, v15

    move-object/from16 v11, v19

    move-object/from16 v12, v21

    move v15, v6

    if-eqz p4, :cond_1bd

    const/4 v1, -0x4

    if-eq v3, v1, :cond_1a7

    const/4 v1, -0x3

    if-eq v3, v1, :cond_1a4

    const/4 v1, -0x2

    if-eq v3, v1, :cond_1a1

    const/4 v1, -0x1

    if-eq v3, v1, :cond_19d

    .line 812
    const-string/jumbo v1, "unknown reason"

    goto :goto_1a9

    .line 811
    :cond_19d
    const-string/jumbo v1, "type"

    goto :goto_1a9

    .line 810
    :cond_1a1
    const-string v1, "data"

    goto :goto_1a9

    .line 808
    :cond_1a4
    const-string v1, "action"

    goto :goto_1a9

    .line 809
    :cond_1a7
    const-string v1, "category"

    .line 814
    :goto_1a9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Filter did not match: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1bd
    :goto_1bd
    add-int/lit8 v6, v15, 0x1

    move-object v2, v7

    move-object v4, v11

    move-object v3, v12

    move v5, v14

    move-object/from16 v1, v20

    move-object/from16 v7, p8

    goto/16 :goto_35

    :cond_1c9
    move-object v7, v2

    move v3, v9

    if-eqz p4, :cond_1e8

    if-eqz v18, :cond_1e8

    .line 820
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1dc

    .line 821
    const-string/jumbo v0, "resolveIntent failed: found match, but none with CATEGORY_DEFAULT"

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 822
    :cond_1dc
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_1e8

    .line 823
    const-string/jumbo v0, "resolveIntent: multiple matches, only some with CATEGORY_DEFAULT"

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e8
    return-void
.end method

.method public final collectFilters([Ljava/lang/Object;Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_23

    const/4 v1, 0x0

    .line 126
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_23

    .line 127
    aget-object v2, p1, v1

    if-nez v2, :cond_c

    goto :goto_23

    .line 131
    :cond_c
    invoke-virtual {p0, v2}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/content/IntentFilter;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_20

    if-nez v0, :cond_1d

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    :cond_1d
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_23
    :goto_23
    return-object v0
.end method

.method public copyFrom(Lcom/android/server/IntentResolver;)V
    .registers 4

    .line 871
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/IntentResolver;->copyInto(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 872
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/IntentResolver;->copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 873
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/IntentResolver;->copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 874
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/IntentResolver;->copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 875
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/IntentResolver;->copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 876
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/IntentResolver;->copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 877
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/IntentResolver;->copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .registers 10

    .line 845
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 846
    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 847
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v2, v0, :cond_34

    .line 849
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 850
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 851
    array-length v5, v3

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    move v5, v1

    .line 852
    :goto_20
    array-length v6, v3

    if-ge v5, v6, :cond_2e

    .line 853
    aget-object v6, v3, v5

    invoke-virtual {p0, v6}, Lcom/android/server/IntentResolver;->snapshot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 855
    :cond_2e
    invoke-virtual {p1, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_34
    return-void
.end method

.method public copyInto(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 6

    .line 860
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 861
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 862
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->ensureCapacity(I)V

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_1b

    .line 864
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/IntentResolver;->snapshot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->append(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 17

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 289
    const-string v3, "Full MIME Types:"

    iget-object v5, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v3

    if-eqz v3, :cond_45

    move-object v2, v9

    .line 293
    :cond_45
    const-string v3, "Base MIME Types:"

    iget-object v5, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v3

    if-eqz v3, :cond_56

    move-object v2, v9

    .line 297
    :cond_56
    const-string v3, "Wild MIME Types:"

    iget-object v5, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v3

    if-eqz v3, :cond_67

    move-object v2, v9

    .line 301
    :cond_67
    const-string v3, "Schemes:"

    iget-object v5, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v3

    if-eqz v3, :cond_78

    move-object v2, v9

    .line 305
    :cond_78
    const-string v3, "Non-Data Actions:"

    iget-object v5, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v3

    if-eqz v3, :cond_89

    move-object v2, v9

    .line 309
    :cond_89
    const-string v3, "MIME Typed Actions:"

    iget-object v5, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_9a

    move-object v2, v9

    :cond_9a
    if-ne v2, v9, :cond_9e

    const/4 v0, 0x1

    return v0

    :cond_9e
    const/4 v0, 0x0

    return v0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 274
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x20b00000001L

    .line 275
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    const-wide v0, 0x20b00000002L

    .line 276
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    const-wide v0, 0x20b00000003L

    .line 277
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    const-wide v0, 0x20b00000004L

    .line 278
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    const-wide v0, 0x20b00000005L

    .line 279
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    const-wide v0, 0x20b00000006L

    .line 280
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 281
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 557
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 5

    .line 565
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string p0, ": "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    .line 196
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 197
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 198
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v10, p3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 201
    :goto_36
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v11, v14, :cond_13c

    .line 202
    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/Object;

    .line 203
    array-length v15, v14

    .line 206
    const-string v8, ":"

    if-eqz p8, :cond_d6

    if-nez p7, :cond_d6

    .line 207
    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    const/4 v9, 0x0

    :goto_4d
    if-ge v9, v15, :cond_90

    move/from16 v16, v9

    .line 208
    aget-object v9, v14, v16

    if-eqz v9, :cond_90

    if-eqz v4, :cond_63

    .line 209
    invoke-virtual {v0, v4, v9}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_63

    move-object/from16 v17, v10

    move/from16 v18, v12

    const/4 v12, 0x1

    goto :goto_89

    .line 212
    :cond_63
    invoke-virtual {v0, v9}, Lcom/android/server/IntentResolver;->filterToLabel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v17, v10

    .line 213
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v10

    if-gez v10, :cond_7b

    .line 215
    new-instance v10, Landroid/util/MutableInt;

    move/from16 v18, v12

    const/4 v12, 0x1

    invoke-direct {v10, v12}, Landroid/util/MutableInt;-><init>(I)V

    invoke-virtual {v7, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_89

    :cond_7b
    move/from16 v18, v12

    const/4 v12, 0x1

    .line 217
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/MutableInt;

    iget v10, v9, Landroid/util/MutableInt;->value:I

    add-int/2addr v10, v12

    iput v10, v9, Landroid/util/MutableInt;->value:I

    :goto_89
    add-int/lit8 v9, v16, 0x1

    move-object/from16 v10, v17

    move/from16 v12, v18

    goto :goto_4d

    :cond_90
    move-object/from16 v17, v10

    move/from16 v18, v12

    const/4 v12, 0x1

    move-object/from16 v10, v17

    const/4 v9, 0x0

    const/4 v14, 0x0

    .line 220
    :goto_99
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-ge v9, v15, :cond_d1

    if-eqz v10, :cond_a8

    .line 222
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x0

    :cond_a8
    if-nez v14, :cond_ba

    .line 226
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v14, v12

    .line 230
    :cond_ba
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Landroid/util/MutableInt;

    iget v12, v12, Landroid/util/MutableInt;->value:I

    invoke-virtual {v0, v1, v2, v15, v12}, Lcom/android/server/IntentResolver;->dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V

    add-int/lit8 v9, v9, 0x1

    const/4 v12, 0x1

    const/16 v18, 0x1

    goto :goto_99

    :cond_d1
    move-object/from16 v17, v7

    move/from16 v12, v18

    goto :goto_136

    :cond_d6
    move-object/from16 v17, v10

    move/from16 v18, v12

    move-object/from16 v10, v17

    move/from16 v12, v18

    const/4 v9, 0x0

    const/16 v16, 0x0

    :goto_e1
    move-object/from16 v17, v7

    if-ge v9, v15, :cond_136

    .line 233
    aget-object v7, v14, v9

    if-eqz v7, :cond_136

    if-eqz v4, :cond_f2

    .line 234
    invoke-virtual {v0, v4, v7}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_f2

    goto :goto_131

    :cond_f2
    if-eqz v10, :cond_fb

    .line 238
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x0

    :cond_fb
    if-nez v16, :cond_10e

    .line 242
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v16, 0x1

    .line 246
    :cond_10e
    invoke-virtual {v0, v1, v2, v7}, Lcom/android/server/IntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p7, :cond_130

    if-nez v13, :cond_11a

    .line 249
    new-instance v13, Landroid/util/PrintWriterPrinter;

    invoke-direct {v13, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 251
    :cond_11a
    invoke-virtual {v0, v7}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v13, v12}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    :cond_130
    const/4 v12, 0x1

    :goto_131
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v17

    goto :goto_e1

    :cond_136
    :goto_136
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v7, v17

    goto/16 :goto_36

    :cond_13c
    move/from16 v18, v12

    return v18
.end method

.method public filterIterator()Ljava/util/Iterator;
    .registers 3

    .line 345
    new-instance v0, Lcom/android/server/IntentResolver$IteratorWrapper;

    iget-object v1, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/IntentResolver$IteratorWrapper;-><init>(Lcom/android/server/IntentResolver;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public filterResults(Ljava/util/List;)V
    .registers 2

    .line 0
    return-void
.end method

.method public filterSet()Ljava/util/Set;
    .registers 1

    .line 352
    iget-object p0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public filterToLabel(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 561
    const-string p0, "IntentFilter"

    return-object p0
.end method

.method public findFilters(Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .registers 6

    .line 143
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_19

    .line 145
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/IntentResolver;->collectFilters([Ljava/lang/Object;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 146
    :cond_19
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ne v0, v2, :cond_36

    .line 148
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/IntentResolver;->collectFilters([Ljava/lang/Object;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 149
    :cond_36
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    if-nez v0, :cond_59

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    if-nez v0, :cond_59

    .line 150
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ne v0, v2, :cond_59

    .line 152
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/IntentResolver;->collectFilters([Ljava/lang/Object;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 155
    :cond_59
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_60
    :goto_60
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 156
    invoke-virtual {p0, v2}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/content/IntentFilter;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_60

    if-nez v1, :cond_7b

    .line 158
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 160
    :cond_7b
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_60

    :cond_7f
    return-object v1
.end method

.method public abstract getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
.end method

.method public isFilterStopped(Lcom/android/server/pm/Computer;Ljava/lang/Object;I)Z
    .registers 4

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isFilterVerified(Ljava/lang/Object;)Z
    .registers 2

    .line 527
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/IntentFilter;->isVerified()Z

    move-result p0

    return p0
.end method

.method public abstract isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
.end method

.method public abstract newArray(I)[Ljava/lang/Object;
.end method

.method public newResult(Lcom/android/server/pm/Computer;Ljava/lang/Object;IIJ)Ljava/lang/Object;
    .registers 7

    .line 0
    return-object p2
.end method

.method public queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .registers 14

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 384
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZIJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZIJ)Ljava/util/List;
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v6, p3

    .line 389
    const-string v1, "android.intent.action.PROCESS_TEXT"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 396
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 398
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    const/4 v13, 0x0

    if-eqz v1, :cond_21

    const/4 v4, 0x1

    goto :goto_22

    :cond_21
    move v4, v13

    .line 403
    :goto_22
    const-string v14, "IntentResolver"

    if-eqz v4, :cond_61

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resolving type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " scheme="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " defaultOnly="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " userId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p5

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    :cond_61
    move-object/from16 v3, p2

    move/from16 v5, p4

    move/from16 v10, p5

    :goto_67
    if-eqz v6, :cond_16b

    const/16 v8, 0x2f

    .line 415
    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-lez v8, :cond_16b

    .line 417
    invoke-virtual {v6, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 418
    const-string v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_13c

    .line 419
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v1, v8, 0x2

    const/16 v17, 0x1

    const-string v2, "Second type cut: "

    const-string v13, "First type cut: "

    if-ne v15, v1, :cond_d7

    add-int/lit8 v8, v8, 0x1

    .line 420
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v8, 0x2a

    if-eq v1, v8, :cond_96

    goto :goto_d7

    .line 430
    :cond_96
    iget-object v1, v0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    if-eqz v4, :cond_b6

    .line 431
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_b6
    iget-object v8, v0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    if-eqz v4, :cond_117

    .line 433
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 433
    invoke-static {v14, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_117

    .line 423
    :cond_d7
    :goto_d7
    iget-object v1, v0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    if-eqz v4, :cond_f7

    .line 424
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_f7
    iget-object v8, v0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    if-eqz v4, :cond_117

    .line 426
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 426
    invoke-static {v14, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_117
    :goto_117
    iget-object v2, v0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    if-eqz v4, :cond_139

    .line 439
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Third type cut: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_139
    move-object v13, v2

    move-object v15, v8

    goto :goto_16d

    .line 440
    :cond_13c
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16b

    .line 444
    iget-object v1, v0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    if-eqz v4, :cond_168

    .line 445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Typed Action list: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_168
    :goto_168
    const/4 v13, 0x0

    const/4 v15, 0x0

    goto :goto_16d

    :cond_16b
    const/4 v1, 0x0

    goto :goto_168

    :goto_16d
    if-eqz v7, :cond_194

    .line 454
    iget-object v2, v0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    if-eqz v4, :cond_191

    .line 455
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Scheme list: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_191
    move-object/from16 v16, v2

    goto :goto_196

    :cond_194
    const/16 v16, 0x0

    :goto_196
    if-nez v6, :cond_1c6

    if-nez v7, :cond_1c6

    .line 461
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c6

    .line 462
    iget-object v1, v0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    if-eqz v4, :cond_1c6

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Action list: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c6
    move-object v8, v1

    .line 466
    invoke-static/range {p2 .. p2}, Lcom/android/server/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;

    move-result-object v3

    .line 467
    move-object/from16 v1, p1

    check-cast v1, Lcom/android/server/pm/Computer;

    if-eqz v8, :cond_1d8

    move-object/from16 v2, p2

    move-wide/from16 v11, p6

    .line 469
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/IntentResolver;->buildResolveList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/List;IJ)V

    :cond_1d8
    if-eqz v15, :cond_1ea

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    move/from16 v5, p4

    move/from16 v10, p5

    move-wide/from16 v11, p6

    move-object v8, v15

    .line 473
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/IntentResolver;->buildResolveList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/List;IJ)V

    :cond_1ea
    if-eqz v13, :cond_1fc

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    move/from16 v5, p4

    move/from16 v10, p5

    move-wide/from16 v11, p6

    move-object v8, v13

    .line 477
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/IntentResolver;->buildResolveList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/List;IJ)V

    :cond_1fc
    move-object/from16 v0, p0

    if-eqz v16, :cond_20f

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    move/from16 v5, p4

    move/from16 v10, p5

    move-wide/from16 v11, p6

    move-object/from16 v8, v16

    .line 481
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/IntentResolver;->buildResolveList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/List;IJ)V

    .line 484
    :cond_20f
    invoke-virtual {v0, v9}, Lcom/android/server/IntentResolver;->filterResults(Ljava/util/List;)V

    .line 485
    invoke-virtual {v0, v9}, Lcom/android/server/IntentResolver;->sortResults(Ljava/util/List;)V

    if-eqz v4, :cond_23e

    .line 488
    const-string v0, "Final result list:"

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    .line 489
    :goto_21d
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_23e

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v13, v13, 0x1

    goto :goto_21d

    :cond_23e
    return-object v9
.end method

.method public queryIntentFromList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;IJ)Ljava/util/List;
    .registers 25

    .line 358
    const-string v0, "android.intent.action.PROCESS_TEXT"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 365
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    move v4, v0

    goto :goto_1b

    :cond_1a
    move v4, v1

    .line 370
    :goto_1b
    invoke-static/range {p2 .. p2}, Lcom/android/server/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;

    move-result-object v3

    .line 371
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 372
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v14, v1

    :goto_28
    if-ge v14, v13, :cond_47

    move-object/from16 v15, p5

    .line 375
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    move/from16 v5, p4

    move/from16 v10, p6

    move-wide/from16 v11, p7

    .line 374
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/IntentResolver;->buildResolveList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/List;IJ)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_28

    :cond_47
    move-object/from16 v0, p0

    .line 377
    invoke-virtual {v0, v9}, Lcom/android/server/IntentResolver;->filterResults(Ljava/util/List;)V

    .line 378
    invoke-virtual {v0, v9}, Lcom/android/server/IntentResolver;->sortResults(Ljava/util/List;)V

    return-object v9
.end method

.method public final register_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .registers 6

    const/4 p4, 0x0

    if-nez p2, :cond_4

    return p4

    .line 659
    :cond_4
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 660
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 p4, p4, 0x1

    .line 663
    invoke-virtual {p0, p3, v0, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_16
    return p4
.end method

.method public final register_mime_types(Ljava/lang/Object;Ljava/lang/String;)I
    .registers 10

    .line 592
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_c

    return v0

    :cond_c
    move v1, v0

    .line 598
    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 599
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x2f

    .line 603
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_2c

    .line 605
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_40

    .line 607
    :cond_2c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    .line 610
    :goto_40
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v5, v2, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    if-lez v3, :cond_4d

    .line 613
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2, v4, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    .line 615
    :cond_4d
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2, v4, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    :cond_53
    return v1
.end method

.method public removeFilter(Ljava/lang/Object;)V
    .registers 2

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->removeFilterInternal(Ljava/lang/Object;)V

    .line 169
    iget-object p0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeFilterInternal(Ljava/lang/Object;)V
    .registers 7

    .line 173
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string v3, "      Scheme: "

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    move-result v1

    .line 182
    const-string v2, "      Type: "

    invoke-virtual {p0, p1, v2}, Lcom/android/server/IntentResolver;->unregister_mime_types(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    if-nez v1, :cond_25

    if-nez v2, :cond_25

    .line 184
    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string v4, "      Action: "

    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    :cond_25
    if-eqz v2, :cond_32

    .line 188
    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string v2, "      TypedAction: "

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    :cond_32
    return-void
.end method

.method public final remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9

    .line 686
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-eqz v0, :cond_50

    .line 688
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_14

    .line 689
    aget-object v2, v0, v1

    if-nez v2, :cond_14

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_14
    move v2, v1

    :goto_15
    if-ltz v1, :cond_36

    .line 693
    aget-object v3, v0, v1

    if-eqz v3, :cond_33

    .line 694
    invoke-virtual {p0, v3}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {p0, p3}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v4

    if-ne v3, v4, :cond_33

    sub-int v3, v2, v1

    if-lez v3, :cond_2e

    add-int/lit8 v4, v1, 0x1

    .line 697
    invoke-static {v0, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2e
    const/4 v3, 0x0

    .line 699
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, -0x1

    :cond_33
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    :cond_36
    if-gez v2, :cond_3c

    .line 704
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 705
    :cond_3c
    array-length p3, v0

    div-int/lit8 p3, p3, 0x2

    if-ge v2, p3, :cond_50

    add-int/lit8 p3, v2, 0x2

    .line 706
    invoke-virtual {p0, p3}, Lcom/android/server/IntentResolver;->newArray(I)[Ljava/lang/Object;

    move-result-object p0

    add-int/lit8 v2, v2, 0x1

    const/4 p3, 0x0

    .line 707
    invoke-static {v0, p3, p0, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 708
    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_50
    return-void
.end method

.method public snapshot(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    return-object p1
.end method

.method public sortResults(Ljava/util/List;)V
    .registers 2

    .line 547
    sget-object p0, Lcom/android/server/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public final unregister_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .registers 6

    const/4 p4, 0x0

    if-nez p2, :cond_4

    return p4

    .line 675
    :cond_4
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 676
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 p4, p4, 0x1

    .line 679
    invoke-virtual {p0, p3, v0, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_16
    return p4
.end method

.method public final unregister_mime_types(Ljava/lang/Object;Ljava/lang/String;)I
    .registers 10

    .line 623
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_c

    return v0

    :cond_c
    move v1, v0

    .line 629
    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 630
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x2f

    .line 634
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_2c

    .line 636
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_40

    .line 638
    :cond_2c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    .line 641
    :goto_40
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v5, v2, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    if-lez v3, :cond_4d

    .line 644
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2, v4, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    .line 646
    :cond_4d
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2, v4, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    :cond_53
    return v1
.end method

.method public writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V
    .registers 15

    .line 260
    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, p0, :cond_3d

    .line 262
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 263
    invoke-virtual {p4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-wide v5, 0x10900000001L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 264
    invoke-virtual {p4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    array-length v5, v4

    move v6, v0

    :goto_22
    if-ge v6, v5, :cond_37

    aget-object v7, v4, v6

    if-eqz v7, :cond_34

    const-wide v8, 0x20900000002L

    .line 266
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_34
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 269
    :cond_37
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_3d
    return-void
.end method
