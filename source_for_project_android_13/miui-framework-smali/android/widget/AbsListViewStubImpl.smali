.class public Landroid/widget/AbsListViewStubImpl;
.super Ljava/lang/Object;
.source "AbsListViewStubImpl.java"

# interfaces
.implements Landroid/widget/AbsListViewStub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListViewStubImpl$L1CacheInfo;
    }
.end annotation


# static fields
.field private static final blacklist L1_CACHE_SIZE_WATER_LINE:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "AbsListViewStubImpl"


# instance fields
.field private blacklist mAbsListView:Landroid/widget/AbsListView;

.field private blacklist mAbsListViewOptimizationHelper:Landroid/widget/AbsListViewOptimizationHelper;

.field private blacklist mEnablePrefetch:Z

.field private blacklist mL1Cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/widget/AbsListViewStubImpl$L1CacheInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mL1CacheWorker:Landroid/widget/L1CacheWorker;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListViewStubImpl;->mL1Cache:Ljava/util/Map;

    return-void
.end method

.method private blacklist addToL2Cache(Landroid/view/View;I)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 251
    if-nez p1, :cond_3

    .line 252
    return-void

    .line 256
    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListViewStubImpl;->mAbsListView:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 257
    return-void
.end method

.method private blacklist enablePrefetchOptIfNeed()V
    .registers 8

    .line 76
    const-string v0, "AbsListViewStubImpl"

    sget-boolean v1, Landroid/widget/AbsListViewOptimizationHelper;->ENABLE_ABSLISTVIEW_PREFETCH:Z

    iput-boolean v1, p0, Landroid/widget/AbsListViewStubImpl;->mEnablePrefetch:Z

    .line 77
    if-nez v1, :cond_9

    .line 78
    return-void

    .line 83
    :cond_9
    :try_start_9
    iget-object v1, p0, Landroid/widget/AbsListViewStubImpl;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 84
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 86
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x4000

    .line 87
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 88
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 89
    .local v4, "versionName":Ljava/lang/String;
    iget-object v5, p0, Landroid/widget/AbsListViewStubImpl;->mAbsListViewOptimizationHelper:Landroid/widget/AbsListViewOptimizationHelper;

    .line 90
    invoke-virtual {v5, v2, v4}, Landroid/widget/AbsListViewOptimizationHelper;->checkOptimizationShouldBeEnable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Landroid/widget/AbsListViewStubImpl;->mEnablePrefetch:Z

    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Enable Prefetch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Landroid/widget/AbsListViewStubImpl;->mEnablePrefetch:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_51} :catch_53

    .line 96
    nop

    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "versionName":Ljava/lang/String;
    goto :goto_59

    .line 94
    :catch_53
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "enablePrefetchOptIfNeed: RemoteException calling PackageManager"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_59
    return-void
.end method

.method private blacklist getL1CacheInfoInner(I)Landroid/widget/AbsListViewStubImpl$L1CacheInfo;
    .registers 8
    .param p1, "position"    # I

    .line 216
    const/4 v0, 0x0

    if-gez p1, :cond_4

    .line 217
    return-object v0

    .line 220
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListViewStubImpl;->mAbsListView:Landroid/widget/AbsListView;

    iget-object v1, v1, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 221
    .local v1, "viewType":I
    iget-object v2, p0, Landroid/widget/AbsListViewStubImpl;->mL1Cache:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 222
    .local v2, "l1CacheInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/AbsListViewStubImpl$L1CacheInfo;>;"
    if-nez v2, :cond_1b

    .line 223
    return-object v0

    .line 226
    :cond_1b
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_32

    .line 227
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListViewStubImpl$L1CacheInfo;

    .line 228
    .local v4, "info":Landroid/widget/AbsListViewStubImpl$L1CacheInfo;
    invoke-virtual {v4}, Landroid/widget/AbsListViewStubImpl$L1CacheInfo;->getPosition()I

    move-result v5

    if-ne v5, p1, :cond_2f

    .line 229
    return-object v4

    .line 226
    .end local v4    # "info":Landroid/widget/AbsListViewStubImpl$L1CacheInfo;
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 233
    .end local v3    # "i":I
    :cond_32
    return-object v0
.end method

.method private blacklist removeL1CacheInfoInner(I)V
    .registers 6
    .param p1, "position"    # I

    .line 237
    invoke-direct {p0, p1}, Landroid/widget/AbsListViewStubImpl;->getL1CacheInfoInner(I)Landroid/widget/AbsListViewStubImpl$L1CacheInfo;

    move-result-object v0

    .line 238
    .local v0, "deleted":Landroid/widget/AbsListViewStubImpl$L1CacheInfo;
    if-nez v0, :cond_7

    .line 239
    return-void

    .line 242
    :cond_7
    iget-object v1, p0, Landroid/widget/AbsListViewStubImpl;->mAbsListView:Landroid/widget/AbsListView;

    iget-object v1, v1, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 243
    .local v1, "viewType":I
    iget-object v2, p0, Landroid/widget/AbsListViewStubImpl;->mL1Cache:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 244
    .local v2, "l1CacheInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/AbsListViewStubImpl$L1CacheInfo;>;"
    if-nez v2, :cond_1e

    .line 245
    return-void

    .line 247
    :cond_1e
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 248
    return-void
.end method


# virtual methods
.method public blacklist addView(ILandroid/view/View;Landroid/view/View;)V
    .registers 10
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "l2CacheView"    # Landroid/view/View;

    .line 171
    if-ltz p1, :cond_4f

    if-nez p2, :cond_5

    goto :goto_4f

    .line 174
    :cond_5
    new-instance v0, Landroid/widget/AbsListViewStubImpl$L1CacheInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/AbsListViewStubImpl$L1CacheInfo;-><init>(Landroid/widget/AbsListViewStubImpl;ILandroid/view/View;Landroid/view/View;)V

    .line 175
    .local v0, "info":Landroid/widget/AbsListViewStubImpl$L1CacheInfo;
    iget-object v1, p0, Landroid/widget/AbsListViewStubImpl;->mAbsListView:Landroid/widget/AbsListView;

    iget-object v1, v1, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 177
    .local v1, "viewType":I
    iget-object v2, p0, Landroid/widget/AbsListViewStubImpl;->mL1Cache:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 178
    .local v2, "l1CacheInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/AbsListViewStubImpl$L1CacheInfo;>;"
    if-nez v2, :cond_2f

    .line 179
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 180
    iget-object v3, p0, Landroid/widget/AbsListViewStubImpl;->mL1Cache:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_2f
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :goto_32
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_4e

    .line 185
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListViewStubImpl$L1CacheInfo;

    .line 186
    .local v3, "removed":Landroid/widget/AbsListViewStubImpl$L1CacheInfo;
    if-eqz v3, :cond_4d

    .line 187
    invoke-virtual {v3}, Landroid/widget/AbsListViewStubImpl$L1CacheInfo;->getL1CacheView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3}, Landroid/widget/AbsListViewStubImpl$L1CacheInfo;->getPosition()I

    move-result v5

    invoke-direct {p0, v4, v5}, Landroid/widget/AbsListViewStubImpl;->addToL2Cache(Landroid/view/View;I)V

    .line 189
    .end local v3    # "removed":Landroid/widget/AbsListViewStubImpl$L1CacheInfo;
    :cond_4d
    goto :goto_32

    .line 190
    :cond_4e
    return-void

    .line 172
    .end local v0    # "info":Landroid/widget/AbsListViewStubImpl$L1CacheInfo;
    .end local v1    # "viewType":I
    .end local v2    # "l1CacheInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/AbsListViewStubImpl$L1CacheInfo;>;"
    :cond_4f
    :goto_4f
    return-void
.end method

.method public blacklist clearCache()V
    .registers 5

    .line 194
    iget-boolean v0, p0, Landroid/widget/AbsListViewStubImpl;->mEnablePrefetch:Z

    if-nez v0, :cond_5

    .line 195
    return-void

    .line 198
    :cond_5
    iget-object v0, p0, Landroid/widget/AbsListViewStubImpl;->mL1Cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 199
    .local v1, "key":Ljava/lang/Integer;
    iget-object v2, p0, Landroid/widget/AbsListViewStubImpl;->mL1Cache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 200
    .local v2, "l1CacheInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/AbsListViewStubImpl$L1CacheInfo;>;"
    if-eqz v2, :cond_2d

    .line 201
    new-instance v3, Landroid/widget/AbsListViewStubImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/widget/AbsListViewStubImpl$$ExternalSyntheticLambda0;-><init>(Landroid/widget/AbsListViewStubImpl;)V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 205
    .end local v1    # "key":Ljava/lang/Integer;
    .end local v2    # "l1CacheInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/AbsListViewStubImpl$L1CacheInfo;>;"
    :cond_2d
    goto :goto_f

    .line 207
    :cond_2e
    iget-object v0, p0, Landroid/widget/AbsListViewStubImpl;->mL1Cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 208
    return-void
.end method

.method public blacklist getAbsListView()Landroid/widget/AbsListView;
    .registers 2

    .line 135
    iget-object v0, p0, Landroid/widget/AbsListViewStubImpl;->mAbsListView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method public blacklist getPrefetchEnableState()Z
    .registers 2

    .line 101
    iget-boolean v0, p0, Landroid/widget/AbsListViewStubImpl;->mEnablePrefetch:Z

    return v0
.end method

.method public blacklist getView(I)Landroid/widget/AbsListViewStub$ViewBean;
    .registers 7
    .param p1, "position"    # I

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "scrapView":Landroid/view/View;
    const/4 v1, 0x0

    .line 109
    .local v1, "childView":Landroid/view/View;
    invoke-direct {p0, p1}, Landroid/widget/AbsListViewStubImpl;->getL1CacheInfoInner(I)Landroid/widget/AbsListViewStubImpl$L1CacheInfo;

    move-result-object v2

    .line 110
    .local v2, "info":Landroid/widget/AbsListViewStubImpl$L1CacheInfo;
    if-eqz v2, :cond_14

    .line 111
    invoke-virtual {v2}, Landroid/widget/AbsListViewStubImpl$L1CacheInfo;->getL1CacheView()Landroid/view/View;

    move-result-object v1

    .line 112
    invoke-virtual {v2}, Landroid/widget/AbsListViewStubImpl$L1CacheInfo;->getL2CacheView()Landroid/view/View;

    move-result-object v0

    .line 113
    invoke-direct {p0, p1}, Landroid/widget/AbsListViewStubImpl;->removeL1CacheInfoInner(I)V

    goto :goto_26

    .line 115
    :cond_14
    iget-object v3, p0, Landroid/widget/AbsListViewStubImpl;->mAbsListView:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v3, p1}, Landroid/widget/AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v0

    .line 116
    iget-object v3, p0, Landroid/widget/AbsListViewStubImpl;->mAbsListView:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v4, p0, Landroid/widget/AbsListViewStubImpl;->mAbsListView:Landroid/widget/AbsListView;

    invoke-interface {v3, p1, v0, v4}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 119
    :goto_26
    new-instance v3, Landroid/widget/AbsListViewStub$ViewBean;

    invoke-direct {v3, v1, v0}, Landroid/widget/AbsListViewStub$ViewBean;-><init>(Landroid/view/View;Landroid/view/View;)V

    return-object v3
.end method

.method public blacklist hasL1CacheInfo(I)Z
    .registers 3
    .param p1, "position"    # I

    .line 212
    invoke-direct {p0, p1}, Landroid/widget/AbsListViewStubImpl;->getL1CacheInfoInner(I)Landroid/widget/AbsListViewStubImpl$L1CacheInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist init(Landroid/widget/AbsListView;)V
    .registers 4
    .param p1, "absListView"    # Landroid/widget/AbsListView;

    .line 63
    iput-object p1, p0, Landroid/widget/AbsListViewStubImpl;->mAbsListView:Landroid/widget/AbsListView;

    .line 64
    new-instance v0, Landroid/widget/AbsListViewOptimizationHelper;

    iget-object v1, p0, Landroid/widget/AbsListViewStubImpl;->mAbsListView:Landroid/widget/AbsListView;

    .line 65
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/AbsListViewOptimizationHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListViewStubImpl;->mAbsListViewOptimizationHelper:Landroid/widget/AbsListViewOptimizationHelper;

    .line 67
    invoke-direct {p0}, Landroid/widget/AbsListViewStubImpl;->enablePrefetchOptIfNeed()V

    .line 69
    iget-boolean v0, p0, Landroid/widget/AbsListViewStubImpl;->mEnablePrefetch:Z

    if-eqz v0, :cond_1d

    .line 70
    new-instance v0, Landroid/widget/L1CacheWorker;

    invoke-direct {v0, p0}, Landroid/widget/L1CacheWorker;-><init>(Landroid/widget/AbsListViewStub;)V

    iput-object v0, p0, Landroid/widget/AbsListViewStubImpl;->mL1CacheWorker:Landroid/widget/L1CacheWorker;

    .line 72
    :cond_1d
    return-void
.end method

.method synthetic blacklist lambda$clearCache$0$android-widget-AbsListViewStubImpl(Landroid/widget/AbsListViewStubImpl$L1CacheInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/widget/AbsListViewStubImpl$L1CacheInfo;

    .line 202
    invoke-virtual {p1}, Landroid/widget/AbsListViewStubImpl$L1CacheInfo;->getL1CacheView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/AbsListViewStubImpl$L1CacheInfo;->getPosition()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/widget/AbsListViewStubImpl;->addToL2Cache(Landroid/view/View;I)V

    .line 203
    return-void
.end method

.method public blacklist postFromTraversal(I)V
    .registers 3
    .param p1, "deltaY"    # I

    .line 128
    iget-object v0, p0, Landroid/widget/AbsListViewStubImpl;->mL1CacheWorker:Landroid/widget/L1CacheWorker;

    if-eqz v0, :cond_7

    .line 129
    invoke-virtual {v0, p1}, Landroid/widget/L1CacheWorker;->postFromTraversal(I)V

    .line 131
    :cond_7
    return-void
.end method
