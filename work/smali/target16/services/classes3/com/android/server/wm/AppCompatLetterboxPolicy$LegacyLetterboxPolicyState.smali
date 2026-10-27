.class Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;
.super Ljava/lang/Object;
.source "AppCompatLetterboxPolicy.java"

# interfaces
.implements Lcom/android/server/wm/AppCompatLetterboxPolicyState;


# instance fields
.field public mLetterbox:Lcom/android/server/wm/Letterbox;

.field public final synthetic this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;


# direct methods
.method public static synthetic $r8$lambda$X6ucGf-BowyMCxP1Puj_n3OQ-tI(Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;)Landroid/view/SurfaceControl$Builder;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->lambda$layoutLetterboxIfNeeded$0()Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getLetterboxInnerBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 435
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 436
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->getInnerFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 437
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-static {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->-$$Nest$fgetmActivityRecord(Lcom/android/server/wm/AppCompatLetterboxPolicy;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 439
    invoke-static {p0, p1}, Lcom/android/server/wm/AppCompatUtils;->adjustBoundsForTaskbar(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    :cond_1e
    return-void

    .line 442
    :cond_1f
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public getLetterboxInsets()Landroid/graphics/Rect;
    .registers 2

    .line 425
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 426
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {p0}, Lcom/android/server/wm/Letterbox;->getInsets()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 428
    :cond_d
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public getLetterboxOuterBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 449
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 450
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {p0}, Lcom/android/server/wm/Letterbox;->getOuterFrame()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    .line 452
    :cond_10
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public hide()V
    .registers 2

    .line 416
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 417
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {p0}, Lcom/android/server/wm/Letterbox;->hide()V

    :cond_b
    return-void
.end method

.method public isFullyTransparentBarAllowed(Landroid/graphics/Rect;)Z
    .registers 3

    .line 462
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Letterbox;->notIntersectsOrFullyContains(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public isRunning()Z
    .registers 1

    .line 380
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$layoutLetterboxIfNeeded$0()Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 354
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-static {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->-$$Nest$fgetmActivityRecord(Lcom/android/server/wm/AppCompatLetterboxPolicy;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    return-object p0
.end method

.method public layoutLetterboxIfNeeded(Lcom/android/server/wm/WindowState;)V
    .registers 7

    .line 349
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 350
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-static {v0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->-$$Nest$fgetmActivityRecord(Lcom/android/server/wm/AppCompatLetterboxPolicy;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 351
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getLetterboxOverrides()Lcom/android/server/wm/AppCompatLetterboxOverrides;

    move-result-object v0

    .line 352
    iget-object v1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-static {v1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->-$$Nest$fgetmActivityRecord(Lcom/android/server/wm/AppCompatLetterboxPolicy;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 353
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getReachabilityPolicy()Lcom/android/server/wm/AppCompatReachabilityPolicy;

    move-result-object v1

    .line 354
    new-instance v2, Lcom/android/server/wm/Letterbox;

    new-instance v3, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;)V

    iget-object v4, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-static {v4}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->-$$Nest$fgetmActivityRecord(Lcom/android/server/wm/AppCompatLetterboxPolicy;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/android/server/wm/Letterbox;-><init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lcom/android/server/wm/AppCompatReachabilityPolicy;Lcom/android/server/wm/AppCompatLetterboxOverrides;)V

    iput-object v2, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 357
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-static {v0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->-$$Nest$fgetmActivityRecord(Lcom/android/server/wm/AppCompatLetterboxPolicy;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getReachabilityPolicy()Lcom/android/server/wm/AppCompatReachabilityPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 358
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/Letterbox;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->setLetterboxInnerBoundsSupplier(Ljava/util/function/Supplier;)V

    .line 360
    :cond_4d
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 361
    iget-object v1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-static {v1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->-$$Nest$fgetmActivityRecord(Lcom/android/server/wm/AppCompatLetterboxPolicy;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/wm/AppCompatLetterboxUtils;->calculateLetterboxPosition(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Point;)V

    .line 362
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 363
    iget-object v2, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-static {v2}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->-$$Nest$fgetmActivityRecord(Lcom/android/server/wm/AppCompatLetterboxPolicy;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/server/wm/AppCompatLetterboxUtils;->calculateLetterboxOuterBounds(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)V

    .line 364
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 365
    iget-object v3, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-static {v3}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->-$$Nest$fgetmActivityRecord(Lcom/android/server/wm/AppCompatLetterboxPolicy;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-static {v3, p1, v2}, Lcom/android/server/wm/AppCompatLetterboxUtils;->calculateLetterboxInnerBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    .line 366
    iget-object p1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {p1, v1, v2, v0}, Lcom/android/server/wm/Letterbox;->layout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    .line 367
    iget-object p1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-static {p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->-$$Nest$fgetmActivityRecord(Lcom/android/server/wm/AppCompatLetterboxPolicy;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatController;->getReachabilityOverrides()Lcom/android/server/wm/AppCompatReachabilityOverrides;

    move-result-object p1

    .line 368
    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isDoubleTapEvent()Z

    move-result p1

    if-eqz p1, :cond_9c

    .line 370
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-static {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->-$$Nest$fgetmActivityRecord(Lcom/android/server/wm/AppCompatLetterboxPolicy;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    :cond_9c
    return-void
.end method

.method public onMovedToDisplay(I)V
    .registers 3

    .line 385
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 386
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Letterbox;->onMovedToDisplay(I)V

    :cond_b
    return-void
.end method

.method public stop()V
    .registers 3

    .line 393
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 394
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->destroy()V

    .line 395
    iput-object v1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 397
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-static {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->-$$Nest$fgetmActivityRecord(Lcom/android/server/wm/AppCompatLetterboxPolicy;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getReachabilityPolicy()Lcom/android/server/wm/AppCompatReachabilityPolicy;

    move-result-object p0

    .line 398
    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->setLetterboxInnerBoundsSupplier(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public updateLetterboxSurfaceIfNeeded(Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    .line 405
    invoke-static {p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->-$$Nest$smshouldNotLayoutLetterbox(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1f

    .line 408
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->start(Lcom/android/server/wm/WindowState;)V

    .line 409
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->needsApplySurfaceChanges()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 410
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/wm/Letterbox;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowState;)V

    :cond_1f
    :goto_1f
    return-void
.end method
