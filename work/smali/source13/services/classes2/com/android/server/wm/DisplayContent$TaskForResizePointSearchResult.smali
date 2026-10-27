.class final Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;
.super Ljava/lang/Object;
.source "DisplayContent.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TaskForResizePointSearchResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/android/server/wm/Task;",
        ">;"
    }
.end annotation


# instance fields
.field private delta:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private taskForResize:Lcom/android/server/wm/Task;

.field private x:I

.field private y:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 5312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5317
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method process(Lcom/android/server/wm/WindowContainer;III)Lcom/android/server/wm/Task;
    .registers 6
    .param p1, "root"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "delta"    # I

    .line 5320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->taskForResize:Lcom/android/server/wm/Task;

    .line 5321
    iput p2, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->x:I

    .line 5322
    iput p3, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->y:I

    .line 5323
    iput p4, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->delta:I

    .line 5324
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 5325
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Predicate;)Z

    .line 5327
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->taskForResize:Lcom/android/server/wm/Task;

    return-object v0
.end method

.method public test(Lcom/android/server/wm/Task;)Z
    .registers 6
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 5332
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_10

    .line 5333
    return v1

    .line 5336
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    if-eq v0, v1, :cond_5e

    .line 5338
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inFreeformSmallWinMode()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_5e

    .line 5344
    :cond_1d
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2b

    .line 5345
    return v1

    .line 5353
    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 5354
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->delta:I

    neg-int v3, v2

    neg-int v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 5355
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->x:I

    iget v3, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 5356
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->delta:I

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 5358
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->x:I

    iget v3, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 5359
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->taskForResize:Lcom/android/server/wm/Task;

    .line 5360
    return v1

    .line 5364
    :cond_5b
    return v1

    .line 5367
    :cond_5c
    const/4 v0, 0x0

    return v0

    .line 5339
    :cond_5e
    :goto_5e
    return v1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .registers 2

    .line 5312
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->test(Lcom/android/server/wm/Task;)Z

    move-result p1

    return p1
.end method
