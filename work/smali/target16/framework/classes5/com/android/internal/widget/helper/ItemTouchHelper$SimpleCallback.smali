.class public abstract Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;
.super Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleCallback"
.end annotation


# instance fields
.field private blacklist mDefaultDragDirs:I

.field private blacklist mDefaultSwipeDirs:I


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 3

    .line 2179
    invoke-direct {p0}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;-><init>()V

    .line 2180
    iput p2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    .line 2181
    iput p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    .line 2182
    return-void
.end method


# virtual methods
.method public blacklist getDragDirs(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I
    .registers 3

    .line 2227
    iget p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    return p1
.end method

.method public blacklist getMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I
    .registers 4

    .line 2232
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;->getDragDirs(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 2233
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;->getSwipeDirs(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result p1

    .line 2232
    invoke-static {v0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public blacklist getSwipeDirs(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I
    .registers 3

    .line 2214
    iget p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    return p1
.end method

.method public blacklist setDefaultDragDirs(I)V
    .registers 2

    .line 2201
    iput p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    .line 2202
    return-void
.end method

.method public blacklist setDefaultSwipeDirs(I)V
    .registers 2

    .line 2191
    iput p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    .line 2192
    return-void
.end method
