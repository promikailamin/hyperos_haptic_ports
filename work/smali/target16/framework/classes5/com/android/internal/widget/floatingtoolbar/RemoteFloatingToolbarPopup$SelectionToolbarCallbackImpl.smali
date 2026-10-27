.class Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$SelectionToolbarCallbackImpl;
.super Landroid/view/selectiontoolbar/ISelectionToolbarCallback$Stub;
.source "RemoteFloatingToolbarPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectionToolbarCallbackImpl"
.end annotation


# instance fields
.field private final blacklist mRemotePopup:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;)V
    .registers 3

    .line 481
    invoke-direct {p0}, Landroid/view/selectiontoolbar/ISelectionToolbarCallback$Stub;-><init>()V

    .line 482
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$SelectionToolbarCallbackImpl;->mRemotePopup:Ljava/lang/ref/WeakReference;

    .line 483
    return-void
.end method


# virtual methods
.method public blacklist onError(II)V
    .registers 4

    .line 528
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$SelectionToolbarCallbackImpl;->mRemotePopup:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;

    .line 529
    if-eqz v0, :cond_e

    .line 530
    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->-$$Nest$monError(Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;II)V

    goto :goto_15

    .line 532
    :cond_e
    const-string p1, "floating_toolbar"

    const-string p2, "Lost remoteFloatingToolbarPopup reference for onError."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :goto_15
    return-void
.end method

.method public blacklist onMenuItemClicked(I)V
    .registers 3

    .line 517
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$SelectionToolbarCallbackImpl;->mRemotePopup:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;

    .line 518
    if-eqz v0, :cond_e

    .line 519
    invoke-static {v0, p1}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->-$$Nest$monMenuItemClicked(Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;I)V

    goto :goto_15

    .line 521
    :cond_e
    const-string p1, "floating_toolbar"

    const-string v0, "Lost remoteFloatingToolbarPopup reference for onMenuItemClicked."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :goto_15
    return-void
.end method

.method public blacklist onShown(Landroid/view/selectiontoolbar/WidgetInfo;)V
    .registers 5

    .line 487
    invoke-static {}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    const-string v1, "floating_toolbar"

    if-eqz v0, :cond_1e

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SelectionToolbarCallbackImpl onShown: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$SelectionToolbarCallbackImpl;->mRemotePopup:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;

    .line 492
    if-eqz v0, :cond_2c

    .line 493
    invoke-static {v0, p1}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->-$$Nest$monShow(Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;Landroid/view/selectiontoolbar/WidgetInfo;)V

    goto :goto_31

    .line 495
    :cond_2c
    const-string p1, "Lost remoteFloatingToolbarPopup reference for onShown."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :goto_31
    return-void
.end method

.method public blacklist onWidgetUpdated(Landroid/view/selectiontoolbar/WidgetInfo;)V
    .registers 5

    .line 502
    invoke-static {}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    const-string v1, "floating_toolbar"

    if-eqz v0, :cond_1e

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SelectionToolbarCallbackImpl onWidgetUpdated: info = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$SelectionToolbarCallbackImpl;->mRemotePopup:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;

    .line 507
    if-eqz v0, :cond_2c

    .line 508
    invoke-static {v0, p1}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;->-$$Nest$monWidgetUpdated(Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;Landroid/view/selectiontoolbar/WidgetInfo;)V

    goto :goto_31

    .line 510
    :cond_2c
    const-string p1, "Lost remoteFloatingToolbarPopup reference for onWidgetUpdated."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :goto_31
    return-void
.end method
