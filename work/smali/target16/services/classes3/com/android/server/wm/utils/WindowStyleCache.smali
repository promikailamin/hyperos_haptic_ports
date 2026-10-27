.class public Lcom/android/server/wm/utils/WindowStyleCache;
.super Ljava/lang/Object;
.source "WindowStyleCache.java"


# instance fields
.field public final mCache:Landroid/util/ArrayMap;

.field public final mEntryFactory:Ljava/util/function/Function;


# direct methods
.method public constructor <init>(Ljava/util/function/Function;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/utils/WindowStyleCache;->mCache:Landroid/util/ArrayMap;

    .line 39
    iput-object p1, p0, Lcom/android/server/wm/utils/WindowStyleCache;->mEntryFactory:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;II)Ljava/lang/Object;
    .registers 8

    .line 45
    iget-object v0, p0, Lcom/android/server/wm/utils/WindowStyleCache;->mCache:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 46
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/utils/WindowStyleCache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-eqz v1, :cond_17

    .line 48
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 50
    monitor-exit v0

    return-object v2

    :catchall_15
    move-exception p0

    goto :goto_4a

    .line 53
    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_15

    .line 55
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_20

    return-object v2

    .line 59
    :cond_20
    sget-object v3, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, p1, p2, v3, p3}, Lcom/android/internal/policy/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object p3

    if-nez p3, :cond_29

    return-object v2

    .line 65
    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/utils/WindowStyleCache;->mEntryFactory:Ljava/util/function/Function;

    iget-object p3, p3, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    invoke-interface {v0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 66
    iget-object v2, p0, Lcom/android/server/wm/utils/WindowStyleCache;->mCache:Landroid/util/ArrayMap;

    monitor-enter v2

    if-nez v1, :cond_43

    .line 68
    :try_start_36
    iget-object p0, p0, Lcom/android/server/wm/utils/WindowStyleCache;->mCache:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    :catchall_41
    move-exception p0

    goto :goto_48

    .line 70
    :cond_43
    :goto_43
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    monitor-exit v2

    return-object p3

    :goto_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_36 .. :try_end_49} :catchall_41

    throw p0

    .line 53
    :goto_4a
    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_15

    throw p0
.end method

.method public invalidatePackage(Ljava/lang/String;)V
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/android/server/wm/utils/WindowStyleCache;->mCache:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 78
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/utils/WindowStyleCache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method
