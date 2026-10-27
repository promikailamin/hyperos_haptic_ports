.class public Lcom/android/server/wm/TrustedPresentationListenerController;
.super Ljava/lang/Object;
.source "TrustedPresentationListenerController.java"


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public final mHandlerThreadLock:Ljava/lang/Object;

.field public mLastWindowHandles:Landroid/util/Pair;

.field public mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

.field public mWindowInfosListener:Landroid/window/WindowInfosListener;


# direct methods
.method public static synthetic $r8$lambda$3ELYbuMk2vwGwjmkKe4Qm4BtcDg([FLandroid/graphics/Rect;)V
    .registers 4

    .line 428
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-int/2addr v0, p1

    int-to-float p1, v0

    const/4 v0, 0x0

    .line 429
    aget v1, p0, v0

    add-float/2addr v1, p1

    aput v1, p0, v0

    return-void
.end method

.method public static synthetic $r8$lambda$Ps1sZOZ5gxyiF9hXAxVJv1jdPGY(Lcom/android/server/wm/TrustedPresentationListenerController;Landroid/window/ITrustedPresentationListener;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TrustedPresentationListenerController;->lambda$unregisterListener$1(Landroid/window/ITrustedPresentationListener;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$a20wCSIXWRHSUVxhdL2bS0npIMA(Lcom/android/server/wm/TrustedPresentationListenerController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/TrustedPresentationListenerController;->lambda$checkIfInThreshold$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$wQvFMVTI3xuRVODQ9Y9ejpVjqzg(Lcom/android/server/wm/TrustedPresentationListenerController;Landroid/window/ITrustedPresentationListener;ILandroid/os/IBinder;Landroid/window/TrustedPresentationThresholds;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/TrustedPresentationListenerController;->lambda$registerListener$0(Landroid/window/ITrustedPresentationListener;ILandroid/os/IBinder;Landroid/window/TrustedPresentationThresholds;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/wm/TrustedPresentationListenerController;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcomputeTpl(Lcom/android/server/wm/TrustedPresentationListenerController;Landroid/util/Pair;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TrustedPresentationListenerController;->computeTpl(Landroid/util/Pair;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandlerThreadLock:Ljava/lang/Object;

    .line 160
    new-instance v0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;-><init>(Lcom/android/server/wm/TrustedPresentationListenerController;Lcom/android/server/wm/TrustedPresentationListenerController-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    return-void
.end method


# virtual methods
.method public final addListenerUpdate(Landroid/util/ArrayMap;Landroid/window/ITrustedPresentationListener;IZ)V
    .registers 7

    .line 331
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    if-nez p0, :cond_1a

    .line 333
    new-instance p0, Landroid/util/Pair;

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 334
    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    if-eqz p4, :cond_24

    .line 337
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/util/IntArray;

    invoke-virtual {p0, p3}, Landroid/util/IntArray;->add(I)V

    return-void

    .line 339
    :cond_24
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/util/IntArray;

    invoke-virtual {p0, p3}, Landroid/util/IntArray;->add(I)V

    return-void
.end method

.method public final checkIfInThreshold(Ljava/util/ArrayList;Landroid/util/ArrayMap;FFJ)V
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    .line 348
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TPL_enabled:[Z

    const/4 v7, 0x0

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_2f

    float-to-double v8, v2

    float-to-double v10, v3

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    filled-new-array {v8, v9, v10}, [Ljava/lang/Object;

    move-result-object v8

    const-wide v9, 0xbdbbfb5325b3d44L

    const/16 v11, 0x1a

    invoke-static {v6, v9, v10, v11, v8}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2f
    move v6, v7

    .line 350
    :goto_30
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_143

    move-object/from16 v8, p1

    .line 351
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;

    .line 352
    iget-object v10, v9, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mListener:Landroid/window/ITrustedPresentationListener;

    .line 353
    iget-boolean v11, v9, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mLastComputedTrustedPresentationState:Z

    .line 354
    iget-object v12, v9, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mThresholds:Landroid/window/TrustedPresentationThresholds;

    .line 355
    invoke-virtual {v12}, Landroid/window/TrustedPresentationThresholds;->getMinAlpha()F

    move-result v12

    cmpl-float v12, v3, v12

    if-ltz v12, :cond_58

    iget-object v12, v9, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mThresholds:Landroid/window/TrustedPresentationThresholds;

    .line 357
    invoke-virtual {v12}, Landroid/window/TrustedPresentationThresholds;->getMinFractionRendered()F

    move-result v12

    cmpl-float v12, v2, v12

    if-ltz v12, :cond_58

    const/4 v12, 0x1

    goto :goto_59

    :cond_58
    move v12, v7

    .line 358
    :goto_59
    iput-boolean v12, v9, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mLastComputedTrustedPresentationState:Z

    .line 360
    sget-object v14, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TPL_enabled:[Z

    aget-boolean v14, v14, v7

    if-eqz v14, :cond_a6

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    invoke-static {v12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    const/16 v21, 0x1

    float-to-double v13, v3

    iget-object v7, v9, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mThresholds:Landroid/window/TrustedPresentationThresholds;

    invoke-virtual {v7}, Landroid/window/TrustedPresentationThresholds;->getMinAlpha()F

    move-result v7

    move/from16 v22, v6

    float-to-double v6, v7

    move-wide/from16 v17, v6

    float-to-double v6, v2

    iget-object v2, v9, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mThresholds:Landroid/window/TrustedPresentationThresholds;

    invoke-virtual {v2}, Landroid/window/TrustedPresentationThresholds;->getMinFractionRendered()F

    move-result v2

    float-to-double v2, v2

    move-wide/from16 v19, v2

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    move-object/from16 v17, v3

    move-object/from16 v19, v6

    filled-new-array/range {v15 .. v20}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v6, -0x1f348c21345dc04bL    # -1.884566701359065E158

    const/16 v13, 0xaa0

    invoke-static {v2, v6, v7, v13, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_aa

    :cond_a6
    move/from16 v22, v6

    const/16 v21, 0x1

    :goto_aa
    const/4 v2, 0x4

    if-eqz v11, :cond_e1

    if-nez v12, :cond_e1

    .line 370
    iget-boolean v3, v9, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mLastReportedTrustedPresentationState:Z

    if-eqz v3, :cond_db

    const/4 v3, 0x0

    .line 371
    iput-boolean v3, v9, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mLastReportedTrustedPresentationState:Z

    .line 372
    iget v6, v9, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mId:I

    invoke-virtual {v0, v1, v10, v6, v3}, Lcom/android/server/wm/TrustedPresentationListenerController;->addListenerUpdate(Landroid/util/ArrayMap;Landroid/window/ITrustedPresentationListener;IZ)V

    .line 374
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TPL_enabled:[Z

    aget-boolean v6, v6, v21

    if-eqz v6, :cond_dc

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget v7, v9, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mId:I

    int-to-long v13, v7

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array {v6, v11}, [Ljava/lang/Object;

    move-result-object v6

    const-wide v13, 0x568b544bbdca3c3bL    # 8.022997441390794E108

    invoke-static {v7, v13, v14, v2, v6}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_dc

    :cond_db
    const/4 v3, 0x0

    :cond_dc
    :goto_dc
    const-wide/16 v6, -0x1

    .line 378
    iput-wide v6, v9, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mEnteredTrustedPresentationStateTime:J

    goto :goto_fd

    :cond_e1
    const/4 v3, 0x0

    if-nez v11, :cond_fd

    if-eqz v12, :cond_fd

    .line 382
    iput-wide v4, v9, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mEnteredTrustedPresentationStateTime:J

    .line 383
    iget-object v6, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0}, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/TrustedPresentationListenerController;)V

    iget-object v11, v9, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mThresholds:Landroid/window/TrustedPresentationThresholds;

    .line 386
    invoke-virtual {v11}, Landroid/window/TrustedPresentationThresholds;->getStabilityRequirementMillis()I

    move-result v11

    int-to-double v13, v11

    const-wide/high16 v15, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v13, v15

    double-to-long v13, v13

    .line 383
    invoke-virtual {v6, v7, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 390
    :cond_fd
    :goto_fd
    iget-boolean v6, v9, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mLastReportedTrustedPresentationState:Z

    if-nez v6, :cond_13a

    if-eqz v12, :cond_13a

    iget-wide v6, v9, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mEnteredTrustedPresentationStateTime:J

    sub-long v6, v4, v6

    iget-object v11, v9, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mThresholds:Landroid/window/TrustedPresentationThresholds;

    .line 393
    invoke-virtual {v11}, Landroid/window/TrustedPresentationThresholds;->getStabilityRequirementMillis()I

    move-result v11

    int-to-long v11, v11

    cmp-long v6, v6, v11

    if-lez v6, :cond_13a

    move/from16 v6, v21

    .line 394
    iput-boolean v6, v9, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mLastReportedTrustedPresentationState:Z

    .line 395
    iget v7, v9, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mId:I

    invoke-virtual {v0, v1, v10, v7, v6}, Lcom/android/server/wm/TrustedPresentationListenerController;->addListenerUpdate(Landroid/util/ArrayMap;Landroid/window/ITrustedPresentationListener;IZ)V

    .line 397
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TPL_enabled:[Z

    aget-boolean v6, v7, v6

    if-eqz v6, :cond_13a

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget v7, v9, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mId:I

    int-to-long v9, v7

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {v6, v9}, [Ljava/lang/Object;

    move-result-object v6

    const-wide v9, 0x4b0551b010a7372fL    # 2.5524542683740336E53

    invoke-static {v7, v9, v10, v2, v6}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_13a
    add-int/lit8 v6, v22, 0x1

    move/from16 v2, p3

    move v7, v3

    move/from16 v3, p4

    goto/16 :goto_30

    :cond_143
    return-void
.end method

.method public final computeFractionRendered(Landroid/graphics/Region;Landroid/graphics/RectF;Landroid/util/Size;FF)F
    .registers 14

    .line 406
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TPL_enabled:[Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_2d

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    float-to-double v3, p4

    float-to-double v5, p5

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {p0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v1, -0x47a5b213e60cccecL    # -3.09206546421734E-37

    const/16 v3, 0x280

    invoke-static {v7, v1, v2, v3, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 411
    :cond_2d
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p0

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz p0, :cond_b8

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p0

    if-nez p0, :cond_3d

    goto/16 :goto_b8

    .line 414
    :cond_3d
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p0

    const/4 v2, 0x0

    cmpl-float p0, p0, v2

    if-eqz p0, :cond_b8

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p0

    cmpl-float p0, p0, v2

    if-nez p0, :cond_4f

    goto :goto_b8

    :cond_4f
    mul-float/2addr p4, p5

    const/high16 p0, 0x3f800000    # 1.0f

    .line 418
    invoke-static {p4, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    .line 419
    sget-object p4, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TPL_enabled:[Z

    aget-boolean p4, p4, v0

    const/4 p5, 0x2

    if-eqz p4, :cond_70

    float-to-double v1, p0

    sget-object p4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v2, 0xc7911e0fc813d91L

    invoke-static {p4, v2, v3, p5, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 421
    :cond_70
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p4

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p4, v1

    .line 422
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr v1, p3

    mul-float/2addr p4, v1

    mul-float/2addr p0, p4

    .line 424
    sget-object p3, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TPL_enabled:[Z

    aget-boolean p3, p3, v0

    if-eqz p3, :cond_9f

    float-to-double p3, p0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-wide v2, -0x652440cf159cb8cL    # -1.317716381413378E278

    invoke-static {v1, v2, v3, p5, p3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_9f
    const/4 p3, 0x1

    .line 426
    new-array p3, p3, [F

    .line 427
    new-instance p4, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda3;

    invoke-direct {p4, p3}, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda3;-><init>([F)V

    invoke-static {p1, p4}, Lcom/android/server/wm/utils/RegionUtils;->forEachRect(Landroid/graphics/Region;Ljava/util/function/Consumer;)V

    .line 432
    aget p1, p3, v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    mul-float/2addr p3, p2

    div-float/2addr p1, p3

    mul-float/2addr p0, p1

    return p0

    :cond_b8
    :goto_b8
    return v1
.end method

.method public final computeTpl(Landroid/util/Pair;)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 246
    iput-object v1, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mLastWindowHandles:Landroid/util/Pair;

    if-eqz v1, :cond_1ed

    .line 247
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [Landroid/view/InputWindowHandle;

    array-length v1, v1

    if-eqz v1, :cond_1ed

    iget-object v1, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    .line 248
    invoke-virtual {v1}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    goto/16 :goto_1ed

    .line 252
    :cond_19
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 253
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 254
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 255
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    const/16 v1, 0x9

    .line 256
    new-array v11, v1, [F

    .line 257
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 259
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TPL_enabled:[Z

    const/4 v15, 0x0

    aget-boolean v1, v1, v15

    const/4 v6, 0x1

    if-eqz v1, :cond_5c

    iget-object v1, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mLastWindowHandles:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [Landroid/view/InputWindowHandle;

    array-length v1, v1

    int-to-long v1, v1

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v4, 0x58f0d07fa42a324fL    # 2.713694087337687E120

    invoke-static {v3, v4, v5, v6, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 261
    :cond_5c
    new-instance v16, Landroid/util/ArrayMap;

    invoke-direct/range {v16 .. v16}, Landroid/util/ArrayMap;-><init>()V

    .line 263
    iget-object v1, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mLastWindowHandles:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [Landroid/view/InputWindowHandle;

    array-length v2, v1

    move v3, v15

    :goto_69
    if-ge v3, v2, :cond_1c2

    aget-object v4, v1, v3

    .line 264
    iget v5, v4, Landroid/view/InputWindowHandle;->inputConfig:I

    move/from16 p1, v6

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_78

    move/from16 v5, p1

    goto :goto_79

    :cond_78
    move v5, v15

    .line 266
    :goto_79
    iget-boolean v6, v4, Landroid/view/InputWindowHandle;->canOccludePresentation:Z

    if-eqz v6, :cond_7f

    if-eqz v5, :cond_8d

    :cond_7f
    move-object/from16 v18, v1

    move/from16 v20, v2

    move/from16 v21, v3

    move-object/from16 v22, v8

    move-wide v5, v13

    move v1, v15

    move-object/from16 v2, v16

    goto/16 :goto_1b1

    .line 270
    :cond_8d
    iget-object v5, v4, Landroid/view/InputWindowHandle;->frame:Landroid/graphics/Rect;

    invoke-virtual {v8, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 271
    iget-object v5, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mLastWindowHandles:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [Landroid/window/WindowInfosListener$DisplayInfo;

    array-length v6, v5

    move-object/from16 v18, v1

    :goto_9b
    if-ge v15, v6, :cond_d3

    aget-object v1, v5, v15

    move/from16 v20, v2

    .line 272
    iget v2, v1, Landroid/window/WindowInfosListener$DisplayInfo;->mDisplayId:I

    move/from16 v21, v3

    iget v3, v4, Landroid/view/InputWindowHandle;->displayId:I

    if-ne v2, v3, :cond_ca

    .line 275
    iget-object v2, v1, Landroid/window/WindowInfosListener$DisplayInfo;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v2, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 276
    invoke-virtual {v8, v7}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 277
    iget-object v2, v1, Landroid/window/WindowInfosListener$DisplayInfo;->mLogicalSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, v1, Landroid/window/WindowInfosListener$DisplayInfo;->mLogicalSize:Landroid/util/Size;

    .line 278
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    const/4 v5, 0x0

    .line 277
    invoke-virtual {v9, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 279
    invoke-virtual {v7, v9}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 280
    iget v1, v1, Landroid/window/WindowInfosListener$DisplayInfo;->mDisplayId:I

    move v15, v1

    move/from16 v17, v5

    goto :goto_da

    :cond_ca
    const/16 v17, 0x0

    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v20

    move/from16 v3, v21

    goto :goto_9b

    :cond_d3
    move/from16 v20, v2

    move/from16 v21, v3

    const/16 v17, 0x0

    const/4 v15, -0x1

    :goto_da
    const/4 v1, 0x4

    const/4 v2, -0x1

    if-ne v15, v2, :cond_107

    .line 286
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TPL_enabled:[Z

    aget-boolean v2, v2, v17

    if-eqz v2, :cond_ff

    iget-object v2, v4, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v3, v4, Landroid/view/InputWindowHandle;->displayId:I

    int-to-long v3, v3

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v3, -0x51ca82a2766c2d3L    # -8.988602139952866E283

    invoke-static {v5, v3, v4, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_ff
    move-object/from16 v22, v8

    move-wide v5, v13

    move-object/from16 v2, v16

    const/4 v1, 0x0

    goto/16 :goto_1b1

    .line 291
    :cond_107
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    invoke-virtual {v12, v15, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/graphics/Region;

    .line 292
    iget-object v2, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    invoke-virtual {v4}, Landroid/view/InputWindowHandle;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->get(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v19

    if-eqz v19, :cond_176

    move v2, v1

    .line 294
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 295
    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v7, v6, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 296
    iget-object v3, v4, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v3, v10}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 297
    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->getValues([F)V

    const/16 v17, 0x0

    .line 298
    aget v3, v11, v17

    mul-float/2addr v3, v3

    aget v5, v11, p1

    mul-float/2addr v5, v5

    add-float/2addr v3, v5

    move v5, v2

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 300
    aget v3, v11, v5

    mul-float/2addr v3, v3

    const/4 v5, 0x3

    aget v5, v11, v5

    mul-float/2addr v5, v5

    add-float/2addr v3, v5

    move-object v5, v1

    float-to-double v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    move v1, v2

    .line 303
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v3, v4, Landroid/view/InputWindowHandle;->contentSize:Landroid/util/Size;

    move-object/from16 v22, v8

    move-object v8, v4

    move v4, v1

    move-object v1, v5

    move v5, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TrustedPresentationListenerController;->computeFractionRendered(Landroid/graphics/Region;Landroid/graphics/RectF;Landroid/util/Size;FF)F

    move-result v3

    .line 307
    iget v4, v8, Landroid/view/InputWindowHandle;->alpha:F

    move-wide v0, v13

    move-object v13, v6

    move-wide v5, v0

    move-object/from16 v0, p0

    move/from16 v14, p1

    move-object/from16 v2, v16

    move-object/from16 v1, v19

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/TrustedPresentationListenerController;->checkIfInThreshold(Ljava/util/ArrayList;Landroid/util/ArrayMap;FFJ)V

    goto :goto_182

    :cond_176
    move-wide/from16 v23, v13

    move-object v13, v6

    move-wide/from16 v5, v23

    move/from16 v14, p1

    move-object/from16 v22, v8

    move-object/from16 v2, v16

    move-object v8, v4

    .line 311
    :goto_182
    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v13, v7, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 312
    invoke-virtual {v12, v15, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 313
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TPL_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1b1

    iget-object v0, v8, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v14, -0xfc2b3ca4a2bc081L    # -4.548520085728638E232

    filled-new-array {v0, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8, v14, v15, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1b1
    :goto_1b1
    add-int/lit8 v3, v21, 0x1

    move-object/from16 v0, p0

    move v15, v1

    move-object/from16 v16, v2

    move-wide v13, v5

    move-object/from16 v1, v18

    move/from16 v2, v20

    move-object/from16 v8, v22

    const/4 v6, 0x1

    goto/16 :goto_69

    :cond_1c2
    move v1, v15

    move-object/from16 v2, v16

    .line 317
    :goto_1c5
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v15, v0, :cond_1ed

    .line 318
    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 319
    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/ITrustedPresentationListener;

    .line 321
    :try_start_1d7
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/util/IntArray;

    .line 322
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    .line 321
    invoke-interface {v1, v3, v0}, Landroid/window/ITrustedPresentationListener;->onTrustedPresentationChanged([I[I)V
    :try_end_1ea
    .catch Landroid/os/RemoteException; {:try_start_1d7 .. :try_end_1ea} :catch_1ea

    :catch_1ea
    add-int/lit8 v15, v15, 0x1

    goto :goto_1c5

    :cond_1ed
    :goto_1ed
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 9

    .line 203
    const-string v0, "TrustedPresentationListenerController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Active unique listeners ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    iget-object v1, v1, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mUniqueListeners:Landroid/util/ArrayMap;

    .line 205
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 206
    :goto_28
    iget-object v2, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    iget-object v2, v2, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mWindowToListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_99

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    window="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    iget-object v3, v3, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mWindowToListeners:Landroid/util/ArrayMap;

    .line 208
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    iget-object v2, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    iget-object v2, v2, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mWindowToListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move v3, v0

    .line 210
    :goto_59
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_96

    .line 211
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;

    .line 212
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      listener="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mListener:Landroid/window/ITrustedPresentationListener;

    invoke-interface {v6}, Landroid/window/ITrustedPresentationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " thresholds="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mThresholds:Landroid/window/TrustedPresentationThresholds;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    :cond_96
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_99
    return-void
.end method

.method public final synthetic lambda$checkIfInThreshold$2()V
    .registers 2

    .line 384
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mLastWindowHandles:Landroid/util/Pair;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TrustedPresentationListenerController;->computeTpl(Landroid/util/Pair;)V

    return-void
.end method

.method public final synthetic lambda$registerListener$0(Landroid/window/ITrustedPresentationListener;ILandroid/os/IBinder;Landroid/window/TrustedPresentationThresholds;)V
    .registers 11

    .line 178
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TPL_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_27

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    int-to-long v1, p2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v1, -0x5538b0cc98a8c4fcL

    const/4 v3, 0x4

    invoke-static {v5, v1, v2, v3, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 181
    :cond_27
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    invoke-virtual {v0, p3, p1, p4, p2}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->register(Landroid/os/IBinder;Landroid/window/ITrustedPresentationListener;Landroid/window/TrustedPresentationThresholds;I)V

    .line 182
    invoke-virtual {p0}, Lcom/android/server/wm/TrustedPresentationListenerController;->registerWindowInfosListener()V

    .line 184
    iget-object p1, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mLastWindowHandles:Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TrustedPresentationListenerController;->computeTpl(Landroid/util/Pair;)V

    return-void
.end method

.method public final synthetic lambda$unregisterListener$1(Landroid/window/ITrustedPresentationListener;I)V
    .registers 8

    .line 191
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TPL_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1f

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    int-to-long v1, p2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v1, 0x333969f592d6333aL    # 6.1777777016535966E-62

    const/4 v4, 0x4

    invoke-static {v3, v1, v2, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 194
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->unregister(Landroid/window/ITrustedPresentationListener;I)V

    .line 195
    iget-object p1, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    invoke-virtual {p1}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 196
    invoke-virtual {p0}, Lcom/android/server/wm/TrustedPresentationListenerController;->unregisterWindowInfosListener()V

    :cond_2f
    return-void
.end method

.method public registerListener(Landroid/os/IBinder;Landroid/window/ITrustedPresentationListener;Landroid/window/TrustedPresentationThresholds;I)V
    .registers 12

    .line 176
    invoke-virtual {p0}, Lcom/android/server/wm/TrustedPresentationListenerController;->startHandlerThreadIfNeeded()V

    .line 177
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v5, p1

    move-object v3, p2

    move-object v6, p3

    move v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TrustedPresentationListenerController;Landroid/window/ITrustedPresentationListener;ILandroid/os/IBinder;Landroid/window/TrustedPresentationThresholds;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final registerWindowInfosListener()V
    .registers 2

    .line 220
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mWindowInfosListener:Landroid/window/WindowInfosListener;

    if-eqz v0, :cond_5

    return-void

    .line 224
    :cond_5
    new-instance v0, Lcom/android/server/wm/TrustedPresentationListenerController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TrustedPresentationListenerController$1;-><init>(Lcom/android/server/wm/TrustedPresentationListenerController;)V

    iput-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mWindowInfosListener:Landroid/window/WindowInfosListener;

    .line 231
    invoke-virtual {v0}, Landroid/window/WindowInfosListener;->register()Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mLastWindowHandles:Landroid/util/Pair;

    return-void
.end method

.method public final startHandlerThreadIfNeeded()V
    .registers 4

    .line 165
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandlerThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_23

    .line 167
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "WindowInfosListenerForTpl"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandlerThread:Landroid/os/HandlerThread;

    .line 168
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 169
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandler:Landroid/os/Handler;

    goto :goto_23

    :catchall_21
    move-exception p0

    goto :goto_25

    .line 171
    :cond_23
    :goto_23
    monitor-exit v0

    return-void

    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_21

    throw p0
.end method

.method public unregisterListener(Landroid/window/ITrustedPresentationListener;I)V
    .registers 5

    .line 189
    invoke-virtual {p0}, Lcom/android/server/wm/TrustedPresentationListenerController;->startHandlerThreadIfNeeded()V

    .line 190
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/TrustedPresentationListenerController;Landroid/window/ITrustedPresentationListener;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final unregisterWindowInfosListener()V
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mWindowInfosListener:Landroid/window/WindowInfosListener;

    if-nez v0, :cond_5

    return-void

    .line 239
    :cond_5
    invoke-virtual {v0}, Landroid/window/WindowInfosListener;->unregister()V

    const/4 v0, 0x0

    .line 240
    iput-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mWindowInfosListener:Landroid/window/WindowInfosListener;

    .line 241
    iput-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mLastWindowHandles:Landroid/util/Pair;

    return-void
.end method
