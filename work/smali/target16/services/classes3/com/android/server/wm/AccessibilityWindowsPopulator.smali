.class public final Lcom/android/server/wm/AccessibilityWindowsPopulator;
.super Landroid/window/WindowInfosListener;
.source "AccessibilityWindowsPopulator.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static final sTempFloats:[F


# instance fields
.field public final mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

.field public final mCurrentMagnificationSpec:Landroid/util/SparseArray;

.field public final mDisplayInfos:Landroid/util/SparseArray;

.field public final mHandler:Landroid/os/Handler;

.field public final mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public final mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

.field public final mPreviousMagnificationSpec:Landroid/util/SparseArray;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTempFloat1:[F

.field public final mTempFloat2:[F

.field public final mTempFloat3:[F

.field public final mTempMatrix1:Landroid/graphics/Matrix;

.field public final mTempMatrix2:Landroid/graphics/Matrix;

.field public final mVisibleWindows:Ljava/util/List;

.field public mWindowsNotificationEnabled:Z

.field public final mWindowsTransformMatrixMap:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$0ZOdxFPt5mH0JXsyDze2JXR79BQ(II)V
    .registers 2

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$BH-4a-VMnVRz4jfRJ_1ndkIpLBQ(Ljava/io/PrintWriter;Landroid/view/MagnificationSpec;)V
    .registers 2

    .line 584
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FmzIIhm3p1e0E4EMWm4iYLyOTkY(Ljava/io/PrintWriter;Ljava/lang/String;II)V
    .registers 4

    .line 582
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%sDisplay #%d: "

    invoke-virtual {p0, p2, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void
.end method

.method public static synthetic $r8$lambda$Ov2B_jJ4JELYpcSrjDOt0IVOvc8(Ljava/io/PrintWriter;Landroid/graphics/Matrix;)V
    .registers 2

    .line 591
    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eJUaCl84C2crO8ycCGqh-Wfj1do(Ljava/io/PrintWriter;Ljava/util/List;)V
    .registers 2

    .line 589
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fdndmmlyHS8VNpoJhf5Ye85Qano(Ljava/io/PrintWriter;Landroid/window/WindowInfosListener$DisplayInfo;)V
    .registers 2

    .line 587
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/wm/AccessibilityWindowsPopulator;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mforceUpdateWindows(Lcom/android/server/wm/AccessibilityWindowsPopulator;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->forceUpdateWindows()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyWindowsChanged(Lcom/android/server/wm/AccessibilityWindowsPopulator;Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->notifyWindowsChanged(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsTempFloats()[F
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->sTempFloats:[F

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 58
    const-class v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->TAG:Ljava/lang/String;

    const/16 v0, 0x9

    .line 70
    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->sTempFloats:[F

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/AccessibilityController;)V
    .registers 5

    .line 100
    invoke-direct {p0}, Landroid/window/WindowInfosListener;-><init>()V

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mDisplayInfos:Landroid/util/SparseArray;

    .line 81
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    .line 82
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsNotificationEnabled:Z

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsTransformMatrixMap:Ljava/util/Map;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    .line 93
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempMatrix1:Landroid/graphics/Matrix;

    .line 94
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempMatrix2:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    .line 95
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat1:[F

    .line 96
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat2:[F

    .line 97
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat3:[F

    .line 101
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 102
    iput-object p2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 103
    new-instance p2, Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;-><init>(Lcom/android/server/wm/AccessibilityWindowsPopulator;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static generateInverseMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V
    .registers 5

    .line 525
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 527
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 528
    invoke-static {p0, v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->transformMagnificationSpecToMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    .line 530
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 532
    sget-object v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t inverse the magnification spec matrix with the magnification spec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    :cond_2a
    return-void
.end method

.method public static getDisplaysForWindowsChanged(Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 7

    const/4 v0, 0x0

    .line 313
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 314
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 315
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 316
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 318
    invoke-static {v2, v3}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->hasWindowsChanged(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 319
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_27
    return-void
.end method

.method public static hasWindowsChanged(Ljava/util/List;Ljava/util/List;)Z
    .registers 10

    const/4 v0, 0x1

    if-eqz p1, :cond_46

    .line 327
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_e

    goto :goto_46

    .line 331
    :cond_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v1, :cond_45

    .line 336
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputWindowHandle;

    invoke-virtual {v4}, Landroid/view/InputWindowHandle;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    .line 337
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/InputWindowHandle;

    invoke-virtual {v5}, Landroid/view/InputWindowHandle;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v4, :cond_2e

    move v6, v0

    goto :goto_2f

    :cond_2e
    move v6, v2

    :goto_2f
    if-eqz v5, :cond_33

    move v7, v0

    goto :goto_34

    :cond_33
    move v7, v2

    :goto_34
    if-eq v6, v7, :cond_37

    return v0

    :cond_37
    if-eqz v6, :cond_42

    if-eqz v7, :cond_42

    .line 348
    invoke-interface {v4, v5}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    return v0

    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_45
    return v2

    :cond_46
    :goto_46
    return v0
.end method

.method public static transformMagnificationSpecToMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V
    .registers 3

    .line 541
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 542
    iget v0, p0, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 543
    iget v0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    iget p0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method


# virtual methods
.method public final computeIdentityMatrix(Landroid/view/InputWindowHandle;Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;[F)V
    .registers 5

    .line 480
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempMatrix1:Landroid/graphics/Matrix;

    .line 481
    invoke-static {p2, p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->transformMagnificationSpecToMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    .line 483
    new-instance p2, Landroid/graphics/Matrix;

    iget-object p1, p1, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    invoke-direct {p2, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 484
    invoke-virtual {p2, p0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 485
    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 487
    invoke-virtual {p2, p4}, Landroid/graphics/Matrix;->getValues([F)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 12

    .line 568
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 569
    :try_start_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "AccessibilityWindowsPopulator"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 572
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWindowsNotificationEnabled: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 573
    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsNotificationEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 575
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 576
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "No visible windows"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_53

    :catchall_3a
    move-exception v0

    move-object p0, v0

    goto :goto_9b

    .line 578
    :cond_3d
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 579
    const-string v0, " visible windows: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 581
    :goto_53
    new-instance v7, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda0;-><init>()V

    .line 582
    new-instance v0, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 584
    new-instance p2, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda2;-><init>(Ljava/io/PrintWriter;)V

    .line 586
    iget-object v5, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mDisplayInfos:Landroid/util/SparseArray;

    const-string v6, "display info"

    new-instance v8, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda3;

    invoke-direct {v8, p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda3;-><init>(Ljava/io/PrintWriter;)V

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/DumpUtils;->dumpSparseArray(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;Lcom/android/internal/util/DumpUtils$KeyDumper;Lcom/android/internal/util/DumpUtils$ValueDumper;)V

    move-object p1, v7

    .line 588
    iget-object v5, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    const-string v6, "window handles on display"

    new-instance v8, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda4;

    invoke-direct {v8, v3}, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda4;-><init>(Ljava/io/PrintWriter;)V

    move-object v7, v0

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/DumpUtils;->dumpSparseArray(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;Lcom/android/internal/util/DumpUtils$KeyDumper;Lcom/android/internal/util/DumpUtils$ValueDumper;)V

    .line 590
    iget-object v5, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    const-string v6, "magnification spec matrix"

    new-instance v8, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda5;

    invoke-direct {v8, v3}, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda5;-><init>(Ljava/io/PrintWriter;)V

    move-object v7, p1

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/DumpUtils;->dumpSparseArray(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;Lcom/android/internal/util/DumpUtils$KeyDumper;Lcom/android/internal/util/DumpUtils$ValueDumper;)V

    .line 592
    iget-object v5, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    const-string v6, "current magnification spec"

    move-object v8, p2

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/DumpUtils;->dumpSparseArray(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;Lcom/android/internal/util/DumpUtils$KeyDumper;Lcom/android/internal/util/DumpUtils$ValueDumper;)V

    .line 594
    iget-object v5, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    const-string v6, "previous magnification spec"

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/DumpUtils;->dumpSparseArray(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;Lcom/android/internal/util/DumpUtils$KeyDumper;Lcom/android/internal/util/DumpUtils$ValueDumper;)V

    .line 596
    monitor-exit v1

    return-void

    :goto_9b
    monitor-exit v1
    :try_end_9c
    .catchall {:try_start_3 .. :try_end_9c} :catchall_3a

    throw p0
.end method

.method public final findMagnificationSpecInverseMatrixIfNeeded(Landroid/util/SparseArray;)V
    .registers 7

    const/4 v0, 0x0

    .line 361
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4a

    .line 362
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 363
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 365
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MagnificationSpec;

    if-nez v3, :cond_1c

    goto :goto_47

    .line 369
    :cond_1c
    new-instance v4, Landroid/view/MagnificationSpec;

    invoke-direct {v4}, Landroid/view/MagnificationSpec;-><init>()V

    .line 370
    invoke-virtual {v4, v3}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 372
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MagnificationSpec;

    if-nez v3, :cond_3c

    .line 375
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 376
    invoke-static {v4, v2}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->generateInverseMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    .line 377
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_47

    .line 380
    :cond_3c
    new-instance v1, Landroid/view/MagnificationSpec;

    invoke-direct {v1}, Landroid/view/MagnificationSpec;-><init>()V

    .line 381
    invoke-virtual {v1, v3}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 383
    invoke-virtual {p0, v2, v4, v1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->generateInverseMatrixBasedOnProperMagnificationSpecForDisplay(Ljava/util/List;Landroid/view/MagnificationSpec;Landroid/view/MagnificationSpec;)V

    :goto_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4a
    return-void
.end method

.method public final forceUpdateWindows()V
    .registers 5

    .line 556
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 558
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 559
    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_23

    .line 560
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 561
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :catchall_21
    move-exception p0

    goto :goto_28

    .line 563
    :cond_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_21

    .line 564
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->notifyWindowsChanged(Ljava/util/List;)V

    return-void

    .line 563
    :goto_28
    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_21

    throw p0
.end method

.method public final generateInverseMatrixBasedOnProperMagnificationSpecForDisplay(Ljava/util/List;Landroid/view/MagnificationSpec;Landroid/view/MagnificationSpec;)V
    .registers 8

    .line 395
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_21

    .line 396
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempMatrix2:Landroid/graphics/Matrix;

    .line 397
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputWindowHandle;

    .line 398
    invoke-virtual {v2}, Landroid/view/InputWindowHandle;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 399
    invoke-virtual {p0, v3, v1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->getWindowTransformMatrix(Landroid/os/IBinder;Landroid/graphics/Matrix;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 400
    invoke-virtual {p0, v2, p2, p3, v1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->generateMagnificationSpecInverseMatrix(Landroid/view/InputWindowHandle;Landroid/view/MagnificationSpec;Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    return-void

    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_21
    return-void
.end method

.method public final generateMagnificationSpecInverseMatrix(Landroid/view/InputWindowHandle;Landroid/view/MagnificationSpec;Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V
    .registers 7

    .line 439
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat1:[F

    .line 440
    invoke-virtual {p0, p1, p2, p4, v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->computeIdentityMatrix(Landroid/view/InputWindowHandle;Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;[F)V

    .line 442
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat2:[F

    .line 443
    invoke-virtual {p0, p1, p3, p4, v1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->computeIdentityMatrix(Landroid/view/InputWindowHandle;Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;[F)V

    .line 446
    new-instance p4, Landroid/graphics/Matrix;

    invoke-direct {p4}, Landroid/graphics/Matrix;-><init>()V

    .line 447
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->selectProperMagnificationSpecByComparingIdentityDegree([F[F)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 449
    invoke-static {p2, p4}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->generateInverseMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    .line 455
    iget-object p3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    iget v0, p1, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 456
    invoke-virtual {p2}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result p2

    if-eqz p2, :cond_37

    .line 457
    iget-object p2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    iget p3, p1, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->remove(I)V

    .line 458
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    iget p1, p1, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void

    .line 462
    :cond_34
    invoke-static {p3, p4}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->generateInverseMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    .line 466
    :cond_37
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    iget p1, p1, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {p0, p1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final getWindowTransformMatrix(Landroid/os/IBinder;Landroid/graphics/Matrix;)Z
    .registers 3

    if-eqz p1, :cond_b

    .line 411
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsTransformMatrixMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Matrix;

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    if-nez p0, :cond_10

    const/4 p0, 0x0

    return p0

    .line 416
    :cond_10
    invoke-virtual {p2, p0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final getWindowsTransformMatrix(Ljava/util/List;)Ljava/util/HashMap;
    .registers 8

    .line 199
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 200
    :try_start_8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 202
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputWindowHandle;

    .line 203
    invoke-virtual {v2}, Landroid/view/InputWindowHandle;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 204
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    goto :goto_31

    :catchall_2e
    move-exception p0

    goto :goto_4c

    :cond_30
    const/4 v3, 0x0

    :goto_31
    if-eqz v3, :cond_11

    .line 207
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->shouldMagnify()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 208
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 209
    sget-object v5, Lcom/android/server/wm/AccessibilityWindowsPopulator;->sTempFloats:[F

    invoke-virtual {v3, v5, v4}, Lcom/android/server/wm/WindowState;->getTransformationMatrix([FLandroid/graphics/Matrix;)V

    .line 210
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 214
    :cond_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_8 .. :try_end_48} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 215
    :goto_4c
    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final notifyWindowsChanged(Ljava/util/List;)V
    .registers 6

    .line 547
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    move v1, v0

    .line 549
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 550
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 551
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 550
    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/AccessibilityController;->performComputeChangedWindowsNot(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_20
    return-void
.end method

.method public onWindowInfosChanged([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V
    .registers 3

    .line 156
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->onWindowInfosChangedInternal([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V

    return-void
.end method

.method public final onWindowInfosChangedInternal([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V
    .registers 12

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_37

    aget-object v4, p1, v3

    .line 164
    iget v5, v4, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int/lit8 v6, v5, 0x2

    const/4 v7, 0x1

    if-nez v6, :cond_15

    move v6, v7

    goto :goto_16

    :cond_15
    move v6, v2

    :goto_16
    const/high16 v8, 0x10000

    and-int/2addr v5, v8

    if-nez v5, :cond_1c

    goto :goto_1d

    :cond_1c
    move v7, v2

    .line 166
    :goto_1d
    iget-object v5, v4, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v5}, Landroid/graphics/Region;->isEmpty()Z

    move-result v5

    .line 167
    iget-object v8, v4, Landroid/view/InputWindowHandle;->frame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v6, :cond_34

    if-eqz v7, :cond_34

    if-nez v5, :cond_34

    if-nez v8, :cond_34

    .line 169
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 173
    :cond_37
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->getWindowsTransformMatrix(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object p1

    .line 175
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 176
    :try_start_3e
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsTransformMatrixMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 177
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsTransformMatrixMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 179
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 180
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 182
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mDisplayInfos:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 183
    array-length p1, p2

    :goto_58
    if-ge v2, p1, :cond_68

    aget-object v0, p2, v2

    .line 184
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mDisplayInfos:Landroid/util/SparseArray;

    iget v4, v0, Landroid/window/WindowInfosListener$DisplayInfo;->mDisplayId:I

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    :catchall_66
    move-exception p0

    goto :goto_81

    .line 187
    :cond_68
    iget-boolean p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsNotificationEnabled:Z

    if-eqz p1, :cond_7f

    .line 188
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_7c

    .line 189
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1c2

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 193
    :cond_7c
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->populateVisibleWindowHandlesAndNotifyWindowsChangeIfNeeded()V

    .line 195
    :cond_7f
    monitor-exit v1

    return-void

    :goto_81
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_3e .. :try_end_82} :catchall_66

    throw p0
.end method

.method public final populateVisibleWindowHandlesAndNotifyWindowsChangeIfNeeded()V
    .registers 7

    .line 271
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 273
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputWindowHandle;

    .line 274
    iget v3, v2, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_2b

    .line 278
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 279
    iget v4, v2, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 281
    :cond_2b
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 283
    :cond_2f
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->findMagnificationSpecInverseMatrixIfNeeded(Landroid/util/SparseArray;)V

    .line 285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 286
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-static {v1, v0, v2}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->getDisplaysForWindowsChanged(Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 290
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    const/4 v2, 0x0

    .line 291
    :goto_42
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5a

    .line 292
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 293
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 296
    :cond_5a
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_73

    .line 297
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_72

    .line 298
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 299
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_72
    return-void

    .line 304
    :cond_73
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 305
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x23

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public populateVisibleWindowsOnScreenLocked(ILjava/util/List;Landroid/os/IBinder;)V
    .registers 11

    .line 118
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 119
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 121
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    :try_start_d
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_20

    .line 124
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 126
    monitor-exit v1

    return-void

    :catchall_1c
    move-exception v0

    move-object p0, v0

    goto/16 :goto_90

    .line 128
    :cond_20
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 130
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mDisplayInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/WindowInfosListener$DisplayInfo;

    if-eqz v3, :cond_3b

    .line 132
    iget-object v3, v3, Landroid/window/WindowInfosListener$DisplayInfo;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_56

    .line 134
    :cond_3b
    sget-object v3, Lcom/android/server/wm/AccessibilityWindowsPopulator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The displayInfo of this displayId ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") called back from the surface flinger is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_d .. :try_end_57} :catchall_1c

    .line 139
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 140
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ShellRoot;

    if-eqz p1, :cond_70

    .line 142
    invoke-virtual {p1}, Lcom/android/server/wm/ShellRoot;->getAccessibilityWindowToken()Landroid/os/IBinder;

    move-result-object p1

    :goto_6e
    move-object v3, p1

    goto :goto_72

    :cond_70
    const/4 p1, 0x0

    goto :goto_6e

    .line 144
    :goto_72
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_76
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/InputWindowHandle;

    .line 145
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v5, p3

    .line 146
    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->initializeData(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputWindowHandle;Landroid/graphics/Matrix;Landroid/os/IBinder;Landroid/graphics/Matrix;Landroid/os/IBinder;)Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;

    move-result-object p3

    .line 149
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p3, v5

    goto :goto_76

    :cond_8f
    return-void

    .line 137
    :goto_90
    :try_start_90
    monitor-exit v1
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_1c

    throw p0
.end method

.method public final releaseResources()V
    .registers 2

    .line 601
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 602
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 603
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 604
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mDisplayInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 605
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 606
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 607
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsTransformMatrixMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 608
    iput-boolean v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsNotificationEnabled:Z

    .line 609
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final selectProperMagnificationSpecByComparingIdentityDegree([F[F)Z
    .registers 10

    .line 498
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat3:[F

    .line 499
    sget-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v0, 0x0

    .line 501
    aget v1, p0, v0

    aget v2, p1, v0

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 503
    aget v2, p0, v0

    aget v3, p2, v0

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/4 v3, 0x2

    .line 505
    aget v4, p0, v3

    aget v5, p1, v3

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 507
    aget v5, p0, v3

    aget v3, p2, v3

    sub-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/4 v5, 0x5

    .line 509
    aget v6, p0, v5

    aget p1, p1, v5

    sub-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 511
    aget p0, p0, v5

    aget p2, p2, v5

    sub-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    add-float/2addr v4, p1

    add-float/2addr v3, p0

    .line 518
    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-gtz p0, :cond_56

    .line 519
    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_55

    .line 520
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-lez p0, :cond_55

    goto :goto_56

    :cond_55
    return v0

    :cond_56
    :goto_56
    const/4 p0, 0x1

    return p0
.end method

.method public setMagnificationSpec(ILandroid/view/MagnificationSpec;)V
    .registers 6

    .line 249
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MagnificationSpec;

    if-nez v1, :cond_1e

    .line 252
    new-instance v1, Landroid/view/MagnificationSpec;

    invoke-direct {v1}, Landroid/view/MagnificationSpec;-><init>()V

    .line 253
    invoke-virtual {v1, p2}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 254
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 256
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    goto :goto_3a

    .line 259
    :cond_1e
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MagnificationSpec;

    if-nez v2, :cond_32

    .line 261
    new-instance v2, Landroid/view/MagnificationSpec;

    invoke-direct {v2}, Landroid/view/MagnificationSpec;-><init>()V

    .line 262
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 264
    :cond_32
    invoke-virtual {v2, v1}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 265
    invoke-virtual {v1, p2}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 266
    monitor-exit v0

    return-void

    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_1c

    throw p0
.end method

.method public setWindowsNotification(Z)V
    .registers 4

    .line 226
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsNotificationEnabled:Z

    if-ne v1, p1, :cond_b

    .line 228
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_27

    .line 230
    :cond_b
    iput-boolean p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsNotificationEnabled:Z

    if-eqz p1, :cond_1f

    .line 232
    invoke-virtual {p0}, Landroid/window/WindowInfosListener;->register()Landroid/util/Pair;

    move-result-object p1

    .line 233
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [Landroid/view/InputWindowHandle;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [Landroid/window/WindowInfosListener$DisplayInfo;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->onWindowInfosChangedInternal([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V

    goto :goto_25

    .line 235
    :cond_1f
    invoke-virtual {p0}, Landroid/window/WindowInfosListener;->unregister()V

    .line 236
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->releaseResources()V

    .line 238
    :goto_25
    monitor-exit v0

    return-void

    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_9

    throw p0
.end method
