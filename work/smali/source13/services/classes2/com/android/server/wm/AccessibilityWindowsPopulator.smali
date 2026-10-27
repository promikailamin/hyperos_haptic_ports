.class public final Lcom/android/server/wm/AccessibilityWindowsPopulator;
.super Landroid/window/WindowInfosListener;
.source "AccessibilityWindowsPopulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;,
        Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;
    }
.end annotation


# static fields
.field private static final SURFACE_FLINGER_CALLBACK_WINDOWS_STABLE_TIMES_MS:I = 0x23

.field private static final TAG:Ljava/lang/String;

.field private static final WINDOWS_CHANGED_NOTIFICATION_MAX_DURATION_TIMES_MS:I = 0x1f4

.field private static final sTempFloats:[F


# instance fields
.field private final mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

.field private final mCurrentMagnificationSpec:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/MagnificationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/window/WindowInfosListener$DisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/InputWindowHandle;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousMagnificationSpec:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/MagnificationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTempFloat1:[F

.field private final mTempFloat2:[F

.field private final mTempFloat3:[F

.field private final mTempMatrix1:Landroid/graphics/Matrix;

.field private final mTempMatrix2:Landroid/graphics/Matrix;

.field private final mVisibleWindows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/InputWindowHandle;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowsNotificationEnabled:Z

.field private final mWindowsTransformMatrixMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/wm/AccessibilityWindowsPopulator;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mforceUpdateWindows(Lcom/android/server/wm/AccessibilityWindowsPopulator;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->forceUpdateWindows()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyWindowsChanged(Lcom/android/server/wm/AccessibilityWindowsPopulator;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->notifyWindowsChanged(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsTempFloats()[F
    .registers 1

    sget-object v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->sTempFloats:[F

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 55
    const-class v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->TAG:Ljava/lang/String;

    .line 64
    const/16 v0, 0x9

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->sTempFloats:[F

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/AccessibilityController;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "accessibilityController"    # Lcom/android/server/wm/AccessibilityController;

    .line 94
    invoke-direct {p0}, Landroid/window/WindowInfosListener;-><init>()V

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mDisplayInfos:Landroid/util/SparseArray;

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsNotificationEnabled:Z

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsTransformMatrixMap:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempMatrix1:Landroid/graphics/Matrix;

    .line 88
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempMatrix2:Landroid/graphics/Matrix;

    .line 89
    const/16 v0, 0x9

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat1:[F

    .line 90
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat2:[F

    .line 91
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat3:[F

    .line 95
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 96
    iput-object p2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 97
    new-instance v0, Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;-><init>(Lcom/android/server/wm/AccessibilityWindowsPopulator;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    .line 98
    return-void
.end method

.method private computeIdentityMatrix(Landroid/view/InputWindowHandle;Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;[F)V
    .registers 8
    .param p1, "inputWindowHandle"    # Landroid/view/InputWindowHandle;
    .param p2, "magnificationSpec"    # Landroid/view/MagnificationSpec;
    .param p3, "transformMatrix"    # Landroid/graphics/Matrix;
    .param p4, "magnifyMatrixFloats"    # [F

    .line 461
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempMatrix1:Landroid/graphics/Matrix;

    .line 462
    .local v0, "specMatrix":Landroid/graphics/Matrix;
    invoke-static {p2, v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->transformMagnificationSpecToMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    .line 464
    new-instance v1, Landroid/graphics/Matrix;

    iget-object v2, p1, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    invoke-direct {v1, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 465
    .local v1, "resultMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 466
    invoke-virtual {v1, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 468
    invoke-virtual {v1, p4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 469
    return-void
.end method

.method private findMagnificationSpecInverseMatrixIfNeeded(Landroid/util/SparseArray;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/InputWindowHandle;",
            ">;>;)V"
        }
    .end annotation

    .line 341
    .local p1, "windowHandleList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/view/InputWindowHandle;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4a

    .line 342
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 343
    .local v1, "displayId":I
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 345
    .local v2, "inputWindowHandles":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputWindowHandle;>;"
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MagnificationSpec;

    .line 346
    .local v3, "currentSpec":Landroid/view/MagnificationSpec;
    if-nez v3, :cond_1c

    .line 347
    goto :goto_47

    .line 349
    :cond_1c
    new-instance v4, Landroid/view/MagnificationSpec;

    invoke-direct {v4}, Landroid/view/MagnificationSpec;-><init>()V

    .line 350
    .local v4, "currentMagnificationSpec":Landroid/view/MagnificationSpec;
    invoke-virtual {v4, v3}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 352
    iget-object v5, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/MagnificationSpec;

    .line 354
    .local v5, "previousSpec":Landroid/view/MagnificationSpec;
    if-nez v5, :cond_3c

    .line 355
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 356
    .local v6, "inverseMatrixForCurrentSpec":Landroid/graphics/Matrix;
    invoke-static {v4, v6}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->generateInverseMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    .line 357
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    invoke-virtual {v7, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 358
    goto :goto_47

    .line 360
    .end local v6    # "inverseMatrixForCurrentSpec":Landroid/graphics/Matrix;
    :cond_3c
    new-instance v6, Landroid/view/MagnificationSpec;

    invoke-direct {v6}, Landroid/view/MagnificationSpec;-><init>()V

    .line 361
    .local v6, "previousMagnificationSpec":Landroid/view/MagnificationSpec;
    invoke-virtual {v6, v5}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 363
    invoke-direct {p0, v2, v4, v6}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->generateInverseMatrixBasedOnProperMagnificationSpecForDisplay(Ljava/util/List;Landroid/view/MagnificationSpec;Landroid/view/MagnificationSpec;)V

    .line 341
    .end local v1    # "displayId":I
    .end local v2    # "inputWindowHandles":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputWindowHandle;>;"
    .end local v3    # "currentSpec":Landroid/view/MagnificationSpec;
    .end local v4    # "currentMagnificationSpec":Landroid/view/MagnificationSpec;
    .end local v5    # "previousSpec":Landroid/view/MagnificationSpec;
    .end local v6    # "previousMagnificationSpec":Landroid/view/MagnificationSpec;
    :goto_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 366
    .end local v0    # "i":I
    :cond_4a
    return-void
.end method

.method private forceUpdateWindows()V
    .registers 6

    .line 537
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v0, "displayIdsForWindowsChanged":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 540
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 541
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 542
    .local v3, "displayId":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    nop

    .end local v3    # "displayId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 544
    .end local v2    # "i":I
    :cond_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_27

    .line 545
    invoke-direct {p0, v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->notifyWindowsChanged(Ljava/util/List;)V

    .line 546
    return-void

    .line 544
    :catchall_27
    move-exception v2

    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v2
.end method

.method private static generateInverseMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V
    .registers 7
    .param p0, "spec"    # Landroid/view/MagnificationSpec;
    .param p1, "outMatrix"    # Landroid/graphics/Matrix;

    .line 506
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 508
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 509
    .local v0, "tempMatrix":Landroid/graphics/Matrix;
    invoke-static {p0, v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->transformMagnificationSpecToMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    .line 511
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v1

    .line 512
    .local v1, "result":Z
    if-nez v1, :cond_2c

    .line 513
    sget-object v2, Lcom/android/server/wm/AccessibilityWindowsPopulator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t inverse the magnification spec matrix with the magnification spec = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 517
    :cond_2c
    return-void
.end method

.method private generateInverseMatrixBasedOnProperMagnificationSpecForDisplay(Ljava/util/List;Landroid/view/MagnificationSpec;Landroid/view/MagnificationSpec;)V
    .registers 9
    .param p2, "currentMagnificationSpec"    # Landroid/view/MagnificationSpec;
    .param p3, "previousMagnificationSpec"    # Landroid/view/MagnificationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/InputWindowHandle;",
            ">;",
            "Landroid/view/MagnificationSpec;",
            "Landroid/view/MagnificationSpec;",
            ")V"
        }
    .end annotation

    .line 375
    .local p1, "inputWindowHandles":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputWindowHandle;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "index":I
    :goto_6
    if-ltz v0, :cond_25

    .line 376
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempMatrix2:Landroid/graphics/Matrix;

    .line 377
    .local v1, "windowTransformMatrix":Landroid/graphics/Matrix;
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputWindowHandle;

    .line 378
    .local v2, "windowHandle":Landroid/view/InputWindowHandle;
    invoke-virtual {v2}, Landroid/view/InputWindowHandle;->getWindow()Landroid/view/IWindow;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 380
    .local v3, "iBinder":Landroid/os/IBinder;
    invoke-direct {p0, v3, v1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->getWindowTransformMatrix(Landroid/os/IBinder;Landroid/graphics/Matrix;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 381
    invoke-direct {p0, v2, p2, p3, v1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->generateMagnificationSpecInverseMatrix(Landroid/view/InputWindowHandle;Landroid/view/MagnificationSpec;Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    .line 384
    goto :goto_25

    .line 375
    .end local v1    # "windowTransformMatrix":Landroid/graphics/Matrix;
    .end local v2    # "windowHandle":Landroid/view/InputWindowHandle;
    .end local v3    # "iBinder":Landroid/os/IBinder;
    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 387
    .end local v0    # "index":I
    :cond_25
    :goto_25
    return-void
.end method

.method private generateMagnificationSpecInverseMatrix(Landroid/view/InputWindowHandle;Landroid/view/MagnificationSpec;Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V
    .registers 10
    .param p1, "inputWindowHandle"    # Landroid/view/InputWindowHandle;
    .param p2, "currentMagnificationSpec"    # Landroid/view/MagnificationSpec;
    .param p3, "previousMagnificationSpec"    # Landroid/view/MagnificationSpec;
    .param p4, "transformMatrix"    # Landroid/graphics/Matrix;

    .line 420
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat1:[F

    .line 421
    .local v0, "identityMatrixFloatsForCurrentSpec":[F
    invoke-direct {p0, p1, p2, p4, v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->computeIdentityMatrix(Landroid/view/InputWindowHandle;Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;[F)V

    .line 423
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat2:[F

    .line 424
    .local v1, "identityMatrixFloatsForPreviousSpec":[F
    invoke-direct {p0, p1, p3, p4, v1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->computeIdentityMatrix(Landroid/view/InputWindowHandle;Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;[F)V

    .line 427
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 428
    .local v2, "inverseMatrixForMagnificationSpec":Landroid/graphics/Matrix;
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->selectProperMagnificationSpecByComparingIdentityDegree([F[F)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 430
    invoke-static {p2, v2}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->generateInverseMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    .line 436
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    iget v4, p1, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 437
    invoke-virtual {p2}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 438
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    iget v4, p1, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 439
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    iget v4, p1, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 440
    return-void

    .line 443
    :cond_34
    invoke-static {p3, v2}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->generateInverseMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    .line 447
    :cond_37
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    iget v4, p1, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 449
    return-void
.end method

.method private static getDisplaysForWindowsChanged(Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/InputWindowHandle;",
            ">;>;",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/InputWindowHandle;",
            ">;>;)V"
        }
    .end annotation

    .line 302
    .local p0, "outDisplayIdsForWindowsChanged":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p1, "newWindowsList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/view/InputWindowHandle;>;>;"
    .local p2, "oldWindowsList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/view/InputWindowHandle;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 303
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 304
    .local v1, "displayId":I
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 305
    .local v2, "newWindows":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputWindowHandle;>;"
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 307
    .local v3, "oldWindows":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputWindowHandle;>;"
    invoke-static {v2, v3}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->hasWindowsChanged(Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 308
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    .end local v1    # "displayId":I
    .end local v2    # "newWindows":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputWindowHandle;>;"
    .end local v3    # "oldWindows":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputWindowHandle;>;"
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 311
    .end local v0    # "i":I
    :cond_27
    return-void
.end method

.method private getWindowTransformMatrix(Landroid/os/IBinder;Landroid/graphics/Matrix;)Z
    .registers 5
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "outTransform"    # Landroid/graphics/Matrix;

    .line 391
    if-eqz p1, :cond_b

    .line 392
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsTransformMatrixMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 394
    .local v0, "windowMatrix":Landroid/graphics/Matrix;
    :goto_c
    if-nez v0, :cond_10

    .line 395
    const/4 v1, 0x0

    return v1

    .line 397
    :cond_10
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 399
    const/4 v1, 0x1

    return v1
.end method

.method private getWindowsTransformMatrix(Ljava/util/List;)Ljava/util/HashMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/InputWindowHandle;",
            ">;)",
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation

    .line 188
    .local p1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputWindowHandle;>;"
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 189
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 191
    .local v1, "windowsTransformMatrixMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/os/IBinder;Landroid/graphics/Matrix;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputWindowHandle;

    .line 192
    .local v3, "inputWindowHandle":Landroid/view/InputWindowHandle;
    invoke-virtual {v3}, Landroid/view/InputWindowHandle;->getWindow()Landroid/view/IWindow;

    move-result-object v4

    .line 193
    .local v4, "iWindow":Landroid/view/IWindow;
    if-eqz v4, :cond_32

    iget-object v5, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    .line 194
    invoke-interface {v4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 193
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    goto :goto_33

    .line 194
    :cond_32
    const/4 v5, 0x0

    :goto_33
    nop

    .line 196
    .local v5, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_4d

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->shouldMagnify()Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 197
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 198
    .local v6, "transformMatrix":Landroid/graphics/Matrix;
    sget-object v7, Lcom/android/server/wm/AccessibilityWindowsPopulator;->sTempFloats:[F

    invoke-virtual {v5, v7, v6}, Lcom/android/server/wm/WindowState;->getTransformationMatrix([FLandroid/graphics/Matrix;)V

    .line 199
    invoke-interface {v4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .end local v3    # "inputWindowHandle":Landroid/view/InputWindowHandle;
    .end local v4    # "iWindow":Landroid/view/IWindow;
    .end local v5    # "windowState":Lcom/android/server/wm/WindowState;
    .end local v6    # "transformMatrix":Landroid/graphics/Matrix;
    :cond_4d
    goto :goto_11

    .line 203
    :cond_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_5 .. :try_end_4f} :catchall_53

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 204
    .end local v1    # "windowsTransformMatrixMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/os/IBinder;Landroid/graphics/Matrix;>;"
    :catchall_53
    move-exception v1

    :try_start_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private static hasWindowsChanged(Ljava/util/List;Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/InputWindowHandle;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/InputWindowHandle;",
            ">;)Z"
        }
    .end annotation

    .line 316
    .local p0, "newWindows":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputWindowHandle;>;"
    .local p1, "oldWindows":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputWindowHandle;>;"
    const/4 v0, 0x1

    if-eqz p1, :cond_3d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_e

    goto :goto_3d

    .line 320
    :cond_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 324
    .local v1, "windowsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_3b

    .line 325
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputWindowHandle;

    .line 326
    .local v3, "newWindow":Landroid/view/InputWindowHandle;
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputWindowHandle;

    .line 328
    .local v4, "oldWindow":Landroid/view/InputWindowHandle;
    invoke-virtual {v3}, Landroid/view/InputWindowHandle;->getWindow()Landroid/view/IWindow;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/InputWindowHandle;->getWindow()Landroid/view/IWindow;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38

    .line 329
    return v0

    .line 324
    .end local v3    # "newWindow":Landroid/view/InputWindowHandle;
    .end local v4    # "oldWindow":Landroid/view/InputWindowHandle;
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 333
    .end local v2    # "i":I
    :cond_3b
    const/4 v0, 0x0

    return v0

    .line 317
    .end local v1    # "windowsCount":I
    :cond_3d
    :goto_3d
    return v0
.end method

.method private notifyWindowsChanged(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 528
    .local p1, "displayIdsForWindowsChanged":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 530
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 531
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 532
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    .line 531
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/AccessibilityController;->performComputeChangedWindowsNot(IZ)V

    .line 530
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 534
    .end local v0    # "i":I
    :cond_20
    return-void
.end method

.method private onWindowInfosChangedInternal([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V
    .registers 11
    .param p1, "windowHandles"    # [Landroid/view/InputWindowHandle;
    .param p2, "displayInfos"    # [Landroid/window/WindowInfosListener$DisplayInfo;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v0, "tempVisibleWindows":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputWindowHandle;>;"
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_27

    aget-object v4, p1, v3

    .line 156
    .local v4, "window":Landroid/view/InputWindowHandle;
    iget v5, v4, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_14

    const/4 v5, 0x1

    goto :goto_15

    :cond_14
    move v5, v2

    .line 157
    .local v5, "visible":Z
    :goto_15
    if-eqz v5, :cond_24

    invoke-virtual {v4}, Landroid/view/InputWindowHandle;->getWindow()Landroid/view/IWindow;

    move-result-object v6

    if-eqz v6, :cond_24

    iget-boolean v6, v4, Landroid/view/InputWindowHandle;->isClone:Z

    if-nez v6, :cond_24

    .line 158
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    .end local v4    # "window":Landroid/view/InputWindowHandle;
    .end local v5    # "visible":Z
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 161
    :cond_27
    nop

    .line 162
    invoke-direct {p0, v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->getWindowsTransformMatrix(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v1

    .line 164
    .local v1, "windowsTransformMatrixMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/os/IBinder;Landroid/graphics/Matrix;>;"
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 165
    :try_start_2f
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsTransformMatrixMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 166
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsTransformMatrixMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 168
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 169
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 171
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mDisplayInfos:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 172
    array-length v4, p2

    :goto_49
    if-ge v2, v4, :cond_57

    aget-object v5, p2, v2

    .line 173
    .local v5, "displayInfo":Landroid/window/WindowInfosListener$DisplayInfo;
    iget-object v6, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mDisplayInfos:Landroid/util/SparseArray;

    iget v7, v5, Landroid/window/WindowInfosListener$DisplayInfo;->mDisplayId:I

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 172
    .end local v5    # "displayInfo":Landroid/window/WindowInfosListener$DisplayInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 176
    :cond_57
    iget-boolean v2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsNotificationEnabled:Z

    if-eqz v2, :cond_6e

    .line 177
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_6b

    .line 178
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 182
    :cond_6b
    invoke-direct {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->populateVisibleWindowHandlesAndNotifyWindowsChangeIfNeeded()V

    .line 184
    :cond_6e
    monitor-exit v3

    .line 185
    return-void

    .line 184
    :catchall_70
    move-exception v2

    monitor-exit v3
    :try_end_72
    .catchall {:try_start_2f .. :try_end_72} :catchall_70

    throw v2
.end method

.method private populateVisibleWindowHandlesAndNotifyWindowsChangeIfNeeded()V
    .registers 7

    .line 260
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 262
    .local v0, "tempWindowHandleList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/view/InputWindowHandle;>;>;"
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputWindowHandle;

    .line 263
    .local v2, "windowHandle":Landroid/view/InputWindowHandle;
    iget v3, v2, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 266
    .local v3, "inputWindowHandles":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputWindowHandle;>;"
    if-nez v3, :cond_2c

    .line 267
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 268
    iget v4, v2, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 270
    :cond_2c
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    .end local v2    # "windowHandle":Landroid/view/InputWindowHandle;
    .end local v3    # "inputWindowHandles":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputWindowHandle;>;"
    goto :goto_b

    .line 272
    :cond_30
    invoke-direct {p0, v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->findMagnificationSpecInverseMatrixIfNeeded(Landroid/util/SparseArray;)V

    .line 274
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v1, "displayIdsForWindowsChanged":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-static {v1, v0, v2}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->getDisplaysForWindowsChanged(Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 279
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 280
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_43
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5b

    .line 281
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 282
    .local v3, "displayId":I
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 280
    .end local v3    # "displayId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 285
    .end local v2    # "i":I
    :cond_5b
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_74

    .line 286
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_73

    .line 287
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 288
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 291
    :cond_73
    return-void

    .line 293
    :cond_74
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 294
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x23

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 296
    return-void
.end method

.method private releaseResources()V
    .registers 3

    .line 550
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 551
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 552
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 553
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mDisplayInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 554
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 555
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 556
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsTransformMatrixMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 557
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsNotificationEnabled:Z

    .line 558
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 559
    return-void
.end method

.method private selectProperMagnificationSpecByComparingIdentityDegree([F[F)Z
    .registers 14
    .param p1, "magnifyMatrixFloatsForSpecOne"    # [F
    .param p2, "magnifyMatrixFloatsForSpecTwo"    # [F

    .line 479
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat3:[F

    .line 480
    .local v0, "IdentityMatrixValues":[F
    sget-object v1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 482
    const/4 v1, 0x0

    aget v2, v0, v1

    aget v3, p1, v1

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 484
    .local v2, "scaleDiffForSpecOne":F
    aget v3, v0, v1

    aget v4, p2, v1

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 486
    .local v3, "scaleDiffForSpecTwo":F
    const/4 v4, 0x2

    aget v5, v0, v4

    aget v6, p1, v4

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 488
    .local v5, "offsetXDiffForSpecOne":F
    aget v6, v0, v4

    aget v4, p2, v4

    sub-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 490
    .local v4, "offsetXDiffForSpecTwo":F
    const/4 v6, 0x5

    aget v7, v0, v6

    aget v8, p1, v6

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 492
    .local v7, "offsetYDiffForSpecOne":F
    aget v8, v0, v6

    aget v6, p2, v6

    sub-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 494
    .local v6, "offsetYDiffForSpecTwo":F
    add-float v8, v5, v7

    .line 496
    .local v8, "offsetDiffForSpecOne":F
    add-float v9, v4, v6

    .line 499
    .local v9, "offsetDiffForSpecTwo":F
    invoke-static {v3, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-gtz v10, :cond_58

    .line 500
    invoke-static {v3, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-nez v10, :cond_57

    .line 501
    invoke-static {v9, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-lez v10, :cond_57

    goto :goto_58

    :cond_57
    goto :goto_59

    :cond_58
    :goto_58
    const/4 v1, 0x1

    .line 499
    :goto_59
    return v1
.end method

.method private static transformMagnificationSpecToMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V
    .registers 4
    .param p0, "spec"    # Landroid/view/MagnificationSpec;
    .param p1, "outMatrix"    # Landroid/graphics/Matrix;

    .line 522
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 523
    iget v0, p0, Landroid/view/MagnificationSpec;->scale:F

    iget v1, p0, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 524
    iget v0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    iget v1, p0, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 525
    return-void
.end method


# virtual methods
.method synthetic lambda$onWindowInfosChanged$0$com-android-server-wm-AccessibilityWindowsPopulator([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V
    .registers 3
    .param p1, "windowHandles"    # [Landroid/view/InputWindowHandle;
    .param p2, "displayInfos"    # [Landroid/window/WindowInfosListener$DisplayInfo;

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->onWindowInfosChangedInternal([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V

    return-void
.end method

.method public onWindowInfosChanged([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V
    .registers 5
    .param p1, "windowHandles"    # [Landroid/view/InputWindowHandle;
    .param p2, "displayInfos"    # [Landroid/window/WindowInfosListener$DisplayInfo;

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AccessibilityWindowsPopulator;[Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    return-void
.end method

.method public populateVisibleWindowsOnScreenLocked(ILjava/util/List;)V
    .registers 12
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;",
            ">;)V"
        }
    .end annotation

    .line 110
    .local p2, "outWindows":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;>;"
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 111
    .local v0, "inverseMatrix":Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 113
    .local v1, "displayMatrix":Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 114
    :try_start_d
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 115
    .local v3, "inputWindowHandles":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputWindowHandle;>;"
    if-nez v3, :cond_1c

    .line 116
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 118
    monitor-exit v2

    return-void

    .line 120
    :cond_1c
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Matrix;

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 122
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mDisplayInfos:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/WindowInfosListener$DisplayInfo;

    .line 123
    .local v4, "displayInfo":Landroid/window/WindowInfosListener$DisplayInfo;
    if-eqz v4, :cond_37

    .line 124
    iget-object v5, v4, Landroid/window/WindowInfosListener$DisplayInfo;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_55

    .line 126
    :cond_37
    sget-object v5, Lcom/android/server/wm/AccessibilityWindowsPopulator;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The displayInfo of this displayId ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") called back from the surface fligner is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v4    # "displayInfo":Landroid/window/WindowInfosListener$DisplayInfo;
    :goto_55
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_d .. :try_end_56} :catchall_8a

    .line 131
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 132
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ShellRoot;

    .line 134
    .local v4, "shellroot":Lcom/android/server/wm/ShellRoot;
    if-eqz v4, :cond_6e

    invoke-virtual {v4}, Lcom/android/server/wm/ShellRoot;->getAccessibilityWindowToken()Landroid/os/IBinder;

    move-result-object v5

    goto :goto_6f

    :cond_6e
    const/4 v5, 0x0

    .line 136
    .local v5, "pipMenuIBinder":Landroid/os/IBinder;
    :goto_6f
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_73
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_89

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/InputWindowHandle;

    .line 137
    .local v7, "windowHandle":Landroid/view/InputWindowHandle;
    iget-object v8, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 138
    invoke-static {v8, v7, v0, v5, v1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->initializeData(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputWindowHandle;Landroid/graphics/Matrix;Landroid/os/IBinder;Landroid/graphics/Matrix;)Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;

    move-result-object v8

    .line 141
    .local v8, "accessibilityWindow":Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;
    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    .end local v7    # "windowHandle":Landroid/view/InputWindowHandle;
    .end local v8    # "accessibilityWindow":Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;
    goto :goto_73

    .line 143
    :cond_89
    return-void

    .line 129
    .end local v2    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "inputWindowHandles":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputWindowHandle;>;"
    .end local v4    # "shellroot":Lcom/android/server/wm/ShellRoot;
    .end local v5    # "pipMenuIBinder":Landroid/os/IBinder;
    :catchall_8a
    move-exception v3

    :try_start_8b
    monitor-exit v2
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw v3
.end method

.method public setMagnificationSpec(ILandroid/view/MagnificationSpec;)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "spec"    # Landroid/view/MagnificationSpec;

    .line 238
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MagnificationSpec;

    .line 240
    .local v1, "currentMagnificationSpec":Landroid/view/MagnificationSpec;
    if-nez v1, :cond_1d

    .line 241
    new-instance v2, Landroid/view/MagnificationSpec;

    invoke-direct {v2}, Landroid/view/MagnificationSpec;-><init>()V

    move-object v1, v2

    .line 242
    invoke-virtual {v1, p2}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 243
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 245
    monitor-exit v0

    return-void

    .line 248
    :cond_1d
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MagnificationSpec;

    .line 249
    .local v2, "previousMagnificationSpec":Landroid/view/MagnificationSpec;
    if-nez v2, :cond_32

    .line 250
    new-instance v3, Landroid/view/MagnificationSpec;

    invoke-direct {v3}, Landroid/view/MagnificationSpec;-><init>()V

    move-object v2, v3

    .line 251
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 253
    :cond_32
    invoke-virtual {v2, v1}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 254
    invoke-virtual {v1, p2}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 255
    .end local v1    # "currentMagnificationSpec":Landroid/view/MagnificationSpec;
    .end local v2    # "previousMagnificationSpec":Landroid/view/MagnificationSpec;
    monitor-exit v0

    .line 256
    return-void

    .line 255
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public setWindowsNotification(Z)V
    .registers 6
    .param p1, "register"    # Z

    .line 215
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsNotificationEnabled:Z

    if-ne v1, p1, :cond_9

    .line 217
    monitor-exit v0

    return-void

    .line 219
    :cond_9
    iput-boolean p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsNotificationEnabled:Z

    .line 220
    if-eqz p1, :cond_1d

    .line 221
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->register()Landroid/util/Pair;

    move-result-object v1

    .line 222
    .local v1, "info":Landroid/util/Pair;, "Landroid/util/Pair<[Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [Landroid/view/InputWindowHandle;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [Landroid/window/WindowInfosListener$DisplayInfo;

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->onWindowInfosChangedInternal([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V

    .line 223
    .end local v1    # "info":Landroid/util/Pair;, "Landroid/util/Pair<[Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;>;"
    goto :goto_23

    .line 224
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->unregister()V

    .line 225
    invoke-direct {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->releaseResources()V

    .line 227
    :goto_23
    monitor-exit v0

    .line 228
    return-void

    .line 227
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method
