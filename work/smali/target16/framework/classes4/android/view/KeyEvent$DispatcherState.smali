.class public Landroid/view/KeyEvent$DispatcherState;
.super Ljava/lang/Object;
.source "KeyEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/KeyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DispatcherState"
.end annotation


# instance fields
.field greylist-max-o mActiveLongPresses:Landroid/util/SparseIntArray;

.field greylist-max-o mDownKeyCode:I

.field greylist-max-o mDownTarget:Ljava/lang/Object;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 3884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3887
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mActiveLongPresses:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public whitelist handleUpEvent(Landroid/view/KeyEvent;)V
    .registers 5

    .line 3955
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 3957
    iget-object v1, p0, Landroid/view/KeyEvent$DispatcherState;->mActiveLongPresses:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    .line 3958
    if-ltz v1, :cond_1a

    .line 3960
    invoke-static {p1}, Landroid/view/KeyEvent;->-$$Nest$fgetmFlags(Landroid/view/KeyEvent;)I

    move-result v2

    or-int/lit16 v2, v2, 0x120

    invoke-static {p1, v2}, Landroid/view/KeyEvent;->-$$Nest$fputmFlags(Landroid/view/KeyEvent;I)V

    .line 3961
    iget-object v2, p0, Landroid/view/KeyEvent$DispatcherState;->mActiveLongPresses:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 3963
    :cond_1a
    iget v1, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    if-ne v1, v0, :cond_2d

    .line 3965
    invoke-static {p1}, Landroid/view/KeyEvent;->-$$Nest$fgetmFlags(Landroid/view/KeyEvent;)I

    move-result v0

    or-int/lit16 v0, v0, 0x200

    invoke-static {p1, v0}, Landroid/view/KeyEvent;->-$$Nest$fputmFlags(Landroid/view/KeyEvent;I)V

    .line 3966
    const/4 p1, 0x0

    iput p1, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    .line 3967
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/view/KeyEvent$DispatcherState;->mDownTarget:Ljava/lang/Object;

    .line 3969
    :cond_2d
    return-void
.end method

.method public whitelist isTracking(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 3935
    iget v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    if-ne v0, p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public whitelist performedLongPress(Landroid/view/KeyEvent;)V
    .registers 4

    .line 3945
    iget-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mActiveLongPresses:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 3946
    return-void
.end method

.method public whitelist reset()V
    .registers 2

    .line 3894
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    .line 3895
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownTarget:Ljava/lang/Object;

    .line 3896
    iget-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mActiveLongPresses:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 3897
    return-void
.end method

.method public whitelist reset(Ljava/lang/Object;)V
    .registers 3

    .line 3903
    iget-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownTarget:Ljava/lang/Object;

    if-ne v0, p1, :cond_a

    .line 3905
    const/4 p1, 0x0

    iput p1, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    .line 3906
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/view/KeyEvent$DispatcherState;->mDownTarget:Ljava/lang/Object;

    .line 3908
    :cond_a
    return-void
.end method

.method public whitelist startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V
    .registers 4

    .line 3921
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_f

    .line 3926
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    iput p1, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    .line 3927
    iput-object p2, p0, Landroid/view/KeyEvent$DispatcherState;->mDownTarget:Ljava/lang/Object;

    .line 3928
    return-void

    .line 3922
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can only start tracking on a down event"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
