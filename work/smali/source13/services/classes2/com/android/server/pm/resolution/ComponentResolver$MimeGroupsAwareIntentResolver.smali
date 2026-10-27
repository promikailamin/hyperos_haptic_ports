.class abstract Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/resolution/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MimeGroupsAwareIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Landroid/util/Pair<",
        "+",
        "Lcom/android/server/pm/pkg/component/ParsedComponent;",
        "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
        ">;R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/IntentResolver<",
        "TF;TR;>;"
    }
.end annotation


# instance fields
.field private mIsUpdatingMimeGroup:Z

.field private final mMimeGroupToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field protected final mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .registers 3
    .param p1, "userManager"    # Lcom/android/server/pm/UserManagerService;

    .line 819
    .local p0, "this":Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;, "Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver<TF;TR;>;"
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 812
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    .line 813
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    .line 820
    iput-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 821
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;Lcom/android/server/pm/UserManagerService;)V
    .registers 5
    .param p2, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver<",
            "TF;TR;>;",
            "Lcom/android/server/pm/UserManagerService;",
            ")V"
        }
    .end annotation

    .line 825
    .local p0, "this":Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;, "Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver<TF;TR;>;"
    .local p1, "orig":Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;, "Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver<TF;TR;>;"
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 812
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    .line 813
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    .line 826
    iput-object p2, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 827
    invoke-virtual {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->copyFrom(Lcom/android/server/IntentResolver;)V

    .line 828
    iget-object v1, p1, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 829
    iget-boolean v0, p1, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    iput-boolean v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    .line 830
    return-void
.end method

.method private applyMimeGroups(Lcom/android/server/pm/Computer;Landroid/util/Pair;)V
    .registers 10
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "TF;)V"
        }
    .end annotation

    .line 910
    .local p0, "this":Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;, "Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver<TF;TR;>;"
    .local p2, "f":Landroid/util/Pair;, "TF;"
    invoke-virtual {p0, p2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v0

    .line 912
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countMimeGroups()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_48

    .line 913
    iget-object v2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedComponent;

    .line 914
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 913
    invoke-interface {p1, v2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 916
    .local v2, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v2, :cond_1f

    .line 917
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_2e

    .line 918
    :cond_1f
    nop

    .line 917
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getMimeGroups()Ljava/util/Map;

    move-result-object v3

    .line 918
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getMimeGroup(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    :goto_2e
    nop

    .line 920
    .local v3, "mimeTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 922
    .local v5, "mimeType":Ljava/lang/String;
    :try_start_3f
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addDynamicDataType(Ljava/lang/String;)V
    :try_end_42
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_3f .. :try_end_42} :catch_43

    .line 927
    goto :goto_44

    .line 923
    :catch_43
    move-exception v6

    .line 928
    .end local v5    # "mimeType":Ljava/lang/String;
    :goto_44
    goto :goto_33

    .line 912
    .end local v2    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v3    # "mimeTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_45
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 930
    .end local v1    # "i":I
    :cond_48
    return-void
.end method

.method private equalLists(Ljava/util/List;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 894
    .local p0, "this":Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;, "Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver<TF;TR;>;"
    .local p1, "first":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "second":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_7

    .line 895
    if-nez p2, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0

    .line 896
    :cond_7
    if-nez p2, :cond_a

    .line 897
    return v0

    .line 900
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_15

    .line 901
    return v0

    .line 904
    :cond_15
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 905
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 906
    invoke-interface {p1, p2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private updateFilter(Lcom/android/server/pm/Computer;Landroid/util/Pair;)Z
    .registers 7
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "TF;)Z"
        }
    .end annotation

    .line 885
    .local p0, "this":Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;, "Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver<TF;TR;>;"
    .local p2, "f":Landroid/util/Pair;, "TF;"
    invoke-virtual {p0, p2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v0

    .line 886
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v0}, Landroid/content/IntentFilter;->dataTypes()Ljava/util/List;

    move-result-object v1

    .line 887
    .local v1, "oldTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->removeFilter(Ljava/lang/Object;)V

    .line 888
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/Pair;)V

    .line 889
    invoke-virtual {v0}, Landroid/content/IntentFilter;->dataTypes()Ljava/util/List;

    move-result-object v2

    .line 890
    .local v2, "newTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->equalLists(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    return v3
.end method


# virtual methods
.method public addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/Pair;)V
    .registers 7
    .param p1, "snapshot"    # Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/snapshot/PackageDataSnapshot;",
            "TF;)V"
        }
    .end annotation

    .line 834
    .local p0, "this":Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;, "Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver<TF;TR;>;"
    .local p2, "f":Landroid/util/Pair;, "TF;"
    invoke-virtual {p0, p2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v0

    .line 838
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    move-object v1, p1

    check-cast v1, Lcom/android/server/pm/Computer;

    invoke-direct {p0, v1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->applyMimeGroups(Lcom/android/server/pm/Computer;Landroid/util/Pair;)V

    .line 839
    invoke-super {p0, p1, p2}, Lcom/android/server/IntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/Object;)V

    .line 841
    iget-boolean v1, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    if-nez v1, :cond_1c

    .line 842
    invoke-virtual {v0}, Landroid/content/IntentFilter;->mimeGroupsIterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    const-string v3, "      MimeGroup: "

    invoke-virtual {p0, p2, v1, v2, v3}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->register_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 845
    :cond_1c
    return-void
.end method

.method public bridge synthetic addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/Object;)V
    .registers 3

    .line 809
    .local p0, "this":Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;, "Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver<TF;TR;>;"
    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/Pair;)V

    return-void
.end method

.method protected isFilterStopped(Lcom/android/server/pm/pkg/PackageStateInternal;I)Z
    .registers 6
    .param p1, "packageState"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "userId"    # I

    .line 935
    .local p0, "this":Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;, "Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver<TF;TR;>;"
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 936
    return v1

    .line 939
    :cond_a
    const/4 v0, 0x0

    if-eqz p1, :cond_27

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-nez v2, :cond_14

    goto :goto_27

    .line 946
    :cond_14
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v2

    if-nez v2, :cond_25

    .line 947
    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isStopped()Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_26

    :cond_25
    move v1, v0

    .line 946
    :goto_26
    return v1

    .line 940
    :cond_27
    :goto_27
    return v0
.end method

.method protected removeFilterInternal(Landroid/util/Pair;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 849
    .local p0, "this":Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;, "Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver<TF;TR;>;"
    .local p1, "f":Landroid/util/Pair;, "TF;"
    invoke-virtual {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v0

    .line 850
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-boolean v1, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    if-nez v1, :cond_13

    .line 851
    invoke-virtual {v0}, Landroid/content/IntentFilter;->mimeGroupsIterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    const-string v3, "      MimeGroup: "

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->unregister_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 855
    :cond_13
    invoke-super {p0, p1}, Lcom/android/server/IntentResolver;->removeFilterInternal(Ljava/lang/Object;)V

    .line 856
    invoke-virtual {v0}, Landroid/content/IntentFilter;->clearDynamicDataTypes()V

    .line 857
    return-void
.end method

.method protected bridge synthetic removeFilterInternal(Ljava/lang/Object;)V
    .registers 2

    .line 809
    .local p0, "this":Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;, "Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver<TF;TR;>;"
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->removeFilterInternal(Landroid/util/Pair;)V

    return-void
.end method

.method public updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "mimeGroup"    # Ljava/lang/String;

    .line 869
    .local p0, "this":Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;, "Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver<TF;TR;>;"
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Pair;

    .line 870
    .local v0, "filters":[Landroid/util/Pair;, "[TF;"
    const/4 v1, 0x0

    if-eqz v0, :cond_d

    array-length v2, v0

    goto :goto_e

    :cond_d
    move v2, v1

    .line 872
    .local v2, "n":I
    :goto_e
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    .line 873
    const/4 v3, 0x0

    .line 875
    .local v3, "hasChanges":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13
    if-ge v4, v2, :cond_28

    aget-object v5, v0, v4

    move-object v6, v5

    .local v6, "filter":Landroid/util/Pair;, "TF;"
    if-eqz v5, :cond_28

    .line 876
    invoke-virtual {p0, p2, v6}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 877
    invoke-direct {p0, p1, v6}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->updateFilter(Lcom/android/server/pm/Computer;Landroid/util/Pair;)Z

    move-result v5

    or-int/2addr v3, v5

    .line 875
    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 880
    .end local v4    # "i":I
    .end local v6    # "filter":Landroid/util/Pair;, "TF;"
    :cond_28
    iput-boolean v1, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    .line 881
    return v3
.end method
