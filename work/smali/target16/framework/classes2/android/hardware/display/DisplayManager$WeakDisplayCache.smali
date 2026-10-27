.class final Landroid/hardware/display/DisplayManager$WeakDisplayCache;
.super Ljava/lang/Object;
.source "DisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WeakDisplayCache"
.end annotation


# instance fields
.field private final blacklist mDisplayCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/Display;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 2314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2315
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager$WeakDisplayCache;->mDisplayCache:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/display/DisplayManager-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/hardware/display/DisplayManager$WeakDisplayCache;-><init>()V

    return-void
.end method

.method private blacklist removeStaleEntries()V
    .registers 5

    .line 2346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2347
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    iget-object v3, p0, Landroid/hardware/display/DisplayManager$WeakDisplayCache;->mDisplayCache:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 2348
    iget-object v3, p0, Landroid/hardware/display/DisplayManager$WeakDisplayCache;->mDisplayCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_24

    .line 2349
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2347
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2353
    :cond_27
    nop

    :goto_28
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_40

    .line 2356
    iget-object v2, p0, Landroid/hardware/display/DisplayManager$WeakDisplayCache;->mDisplayCache:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2353
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 2358
    :cond_40
    return-void
.end method


# virtual methods
.method blacklist get(I)Landroid/view/Display;
    .registers 3

    .line 2324
    iget-object v0, p0, Landroid/hardware/display/DisplayManager$WeakDisplayCache;->mDisplayCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 2325
    if-nez p1, :cond_c

    .line 2326
    const/4 p1, 0x0

    return-object p1

    .line 2328
    :cond_c
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Display;

    return-object p1
.end method

.method blacklist put(Landroid/view/Display;)V
    .registers 5

    .line 2338
    invoke-direct {p0}, Landroid/hardware/display/DisplayManager$WeakDisplayCache;->removeStaleEntries()V

    .line 2339
    iget-object v0, p0, Landroid/hardware/display/DisplayManager$WeakDisplayCache;->mDisplayCache:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2340
    return-void
.end method
