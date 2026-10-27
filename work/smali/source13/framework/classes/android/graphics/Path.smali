.class public Landroid/graphics/Path;
.super Ljava/lang/Object;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Path$Direction;,
        Landroid/graphics/Path$FillType;,
        Landroid/graphics/Path$Op;
    }
.end annotation


# static fields
.field static final greylist-max-o sFillTypeArray:[Landroid/graphics/Path$FillType;

.field private static final greylist-max-o sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field public greylist-max-r isSimplePath:Z

.field private blacklist mAutoUIPath:Lcom/miui/autoui/IAutoUIPath;

.field private greylist-max-o mLastDirection:Landroid/graphics/Path$Direction;

.field public final greylist-max-o mNativePath:J

.field public greylist-max-r rects:Landroid/graphics/Region;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 45
    const-class v0, Landroid/graphics/Path;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/graphics/Path;->nGetFinalizer()J

    move-result-wide v1

    .line 46
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/Path;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 296
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Path$FillType;

    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Landroid/graphics/Path;->sFillTypeArray:[Landroid/graphics/Path$FillType;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 72
    invoke-static {}, Landroid/graphics/Path;->nInit()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    .line 73
    sget-object v2, Landroid/graphics/Path;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 75
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 76
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->obtainAutoUIPath()Lcom/miui/autoui/IAutoUIPath;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Path;->mAutoUIPath:Lcom/miui/autoui/IAutoUIPath;

    .line 79
    :cond_28
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Path;)V
    .registers 8
    .param p1, "src"    # Landroid/graphics/Path;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 87
    const-wide/16 v1, 0x0

    .line 88
    .local v1, "valNative":J
    if-eqz p1, :cond_20

    .line 89
    iget-wide v1, p1, Landroid/graphics/Path;->mNativePath:J

    .line 90
    iget-boolean v3, p1, Landroid/graphics/Path;->isSimplePath:Z

    iput-boolean v3, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 91
    iget-object v3, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v3, :cond_20

    .line 92
    new-instance v3, Landroid/graphics/Region;

    iget-object v4, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    invoke-direct {v3, v4}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    iput-object v3, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    .line 95
    :cond_20
    invoke-static {v1, v2}, Landroid/graphics/Path;->nInit(J)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/graphics/Path;->mNativePath:J

    .line 96
    sget-object v5, Landroid/graphics/Path;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v5, p0, v3, v4}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 98
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v3

    invoke-interface {v3}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAutoUIEnable()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 99
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v3

    invoke-interface {v3}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->obtainAutoUIPath()Lcom/miui/autoui/IAutoUIPath;

    move-result-object v3

    iput-object v3, p0, Landroid/graphics/Path;->mAutoUIPath:Lcom/miui/autoui/IAutoUIPath;

    .line 100
    if-eqz v3, :cond_4c

    .line 101
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v0, v4

    const-string/jumbo v4, "newPath"

    invoke-interface {v3, v4, v0}, Lcom/miui/autoui/IAutoUIPath;->addOp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    :cond_4c
    return-void
.end method

.method private greylist-max-o detectSimplePath(FFFFLandroid/graphics/Path$Direction;)V
    .registers 13
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "dir"    # Landroid/graphics/Path$Direction;

    .line 635
    iget-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    if-nez v0, :cond_6

    .line 636
    iput-object p5, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 638
    :cond_6
    iget-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    if-eq v0, p5, :cond_e

    .line 639
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    goto :goto_24

    .line 641
    :cond_e
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-nez v0, :cond_19

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    .line 642
    :cond_19
    iget-object v1, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    float-to-int v2, p1

    float-to-int v3, p2

    float-to-int v4, p3

    float-to-int v5, p4

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 644
    :goto_24
    return-void
.end method

.method private static native greylist-max-o nAddArc(JFFFFFF)V
.end method

.method private static native greylist-max-o nAddCircle(JFFFI)V
.end method

.method private static native greylist-max-o nAddOval(JFFFFI)V
.end method

.method private static native greylist-max-o nAddPath(JJ)V
.end method

.method private static native greylist-max-o nAddPath(JJFF)V
.end method

.method private static native greylist-max-o nAddPath(JJJ)V
.end method

.method private static native greylist-max-o nAddRect(JFFFFI)V
.end method

.method private static native greylist-max-o nAddRoundRect(JFFFFFFI)V
.end method

.method private static native greylist-max-o nAddRoundRect(JFFFF[FI)V
.end method

.method private static native greylist-max-o nApproximate(JF)[F
.end method

.method private static native greylist-max-o nArcTo(JFFFFFFZ)V
.end method

.method private static native greylist-max-o nClose(J)V
.end method

.method private static native greylist-max-o nComputeBounds(JLandroid/graphics/RectF;)V
.end method

.method private static native greylist-max-o nCubicTo(JFFFFFF)V
.end method

.method private static native greylist-max-o nGetFillType(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetFinalizer()J
.end method

.method private static native greylist-max-o nIncReserve(JI)V
.end method

.method private static native greylist-max-o nInit()J
.end method

.method private static native greylist-max-o nInit(J)J
.end method

.method private static native greylist-max-o nIsConvex(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nIsEmpty(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nIsRect(JLandroid/graphics/RectF;)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nLineTo(JFF)V
.end method

.method private static native greylist-max-o nMoveTo(JFF)V
.end method

.method private static native greylist-max-o nOffset(JFF)V
.end method

.method private static native greylist-max-o nOp(JJIJ)Z
.end method

.method private static native greylist-max-o nQuadTo(JFFFF)V
.end method

.method private static native greylist-max-o nRCubicTo(JFFFFFF)V
.end method

.method private static native greylist-max-o nRLineTo(JFF)V
.end method

.method private static native greylist-max-o nRMoveTo(JFF)V
.end method

.method private static native greylist-max-o nRQuadTo(JFFFF)V
.end method

.method private static native greylist-max-o nReset(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nRewind(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSet(JJ)V
.end method

.method private static native greylist-max-o nSetFillType(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetLastPoint(JFF)V
.end method

.method private static native greylist-max-o nTransform(JJ)V
.end method

.method private static native greylist-max-o nTransform(JJJ)V
.end method


# virtual methods
.method public whitelist addArc(FFFFFF)V
    .registers 19
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F

    .line 737
    move-object v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/Path;->isSimplePath:Z

    .line 739
    iget-object v2, v0, Landroid/graphics/Path;->mAutoUIPath:Lcom/miui/autoui/IAutoUIPath;

    if-eqz v2, :cond_39

    .line 740
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x5

    invoke-static/range {p6 .. p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "addArc"

    invoke-interface {v2, v1, v3}, Lcom/miui/autoui/IAutoUIPath;->addOp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 743
    :cond_39
    iget-wide v4, v0, Landroid/graphics/Path;->mNativePath:J

    move v6, p1

    move v7, p2

    move v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-static/range {v4 .. v11}, Landroid/graphics/Path;->nAddArc(JFFFFFF)V

    .line 744
    return-void
.end method

.method public whitelist addArc(Landroid/graphics/RectF;FF)V
    .registers 11
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F

    .line 726
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->addArc(FFFFFF)V

    .line 727
    return-void
.end method

.method public whitelist addCircle(FFFLandroid/graphics/Path$Direction;)V
    .registers 14
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radius"    # F
    .param p4, "dir"    # Landroid/graphics/Path$Direction;

    .line 709
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 711
    iget-object v1, p0, Landroid/graphics/Path;->mAutoUIPath:Lcom/miui/autoui/IAutoUIPath;

    if-eqz v1, :cond_26

    .line 712
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object p4, v2, v0

    const-string v0, "addCircle"

    invoke-interface {v1, v0, v2}, Lcom/miui/autoui/IAutoUIPath;->addOp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 715
    :cond_26
    iget-wide v3, p0, Landroid/graphics/Path;->mNativePath:J

    iget v8, p4, Landroid/graphics/Path$Direction;->nativeInt:I

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v3 .. v8}, Landroid/graphics/Path;->nAddCircle(JFFFI)V

    .line 716
    return-void
.end method

.method public whitelist addOval(FFFFLandroid/graphics/Path$Direction;)V
    .registers 16
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "dir"    # Landroid/graphics/Path$Direction;

    .line 691
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 693
    iget-object v1, p0, Landroid/graphics/Path;->mAutoUIPath:Lcom/miui/autoui/IAutoUIPath;

    if-eqz v1, :cond_2d

    .line 694
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    aput-object p5, v2, v0

    const-string v0, "addOval"

    invoke-interface {v1, v0, v2}, Lcom/miui/autoui/IAutoUIPath;->addOp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    :cond_2d
    iget-wide v3, p0, Landroid/graphics/Path;->mNativePath:J

    iget v9, p5, Landroid/graphics/Path$Direction;->nativeInt:I

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v3 .. v9}, Landroid/graphics/Path;->nAddOval(JFFFFI)V

    .line 698
    return-void
.end method

.method public whitelist addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V
    .registers 9
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "dir"    # Landroid/graphics/Path$Direction;

    .line 682
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addOval(FFFFLandroid/graphics/Path$Direction;)V

    .line 683
    return-void
.end method

.method public whitelist addPath(Landroid/graphics/Path;)V
    .registers 6
    .param p1, "src"    # Landroid/graphics/Path;

    .line 836
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 838
    iget-object v1, p0, Landroid/graphics/Path;->mAutoUIPath:Lcom/miui/autoui/IAutoUIPath;

    if-eqz v1, :cond_11

    .line 839
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string v0, "addPath2"

    invoke-interface {v1, v0, v2}, Lcom/miui/autoui/IAutoUIPath;->addOp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 842
    :cond_11
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v2, p1, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Path;->nAddPath(JJ)V

    .line 843
    return-void
.end method

.method public whitelist addPath(Landroid/graphics/Path;FF)V
    .registers 13
    .param p1, "src"    # Landroid/graphics/Path;
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .line 821
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 823
    iget-object v1, p0, Landroid/graphics/Path;->mAutoUIPath:Lcom/miui/autoui/IAutoUIPath;

    if-eqz v1, :cond_1f

    .line 824
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "addPath1"

    invoke-interface {v1, v0, v2}, Lcom/miui/autoui/IAutoUIPath;->addOp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 827
    :cond_1f
    iget-wide v3, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v5, p1, Landroid/graphics/Path;->mNativePath:J

    move v7, p2

    move v8, p3

    invoke-static/range {v3 .. v8}, Landroid/graphics/Path;->nAddPath(JJFF)V

    .line 828
    return-void
.end method

.method public whitelist addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .registers 12
    .param p1, "src"    # Landroid/graphics/Path;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 851
    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    const/4 v1, 0x0

    if-nez v0, :cond_7

    iput-boolean v1, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 853
    :cond_7
    iget-object v0, p0, Landroid/graphics/Path;->mAutoUIPath:Lcom/miui/autoui/IAutoUIPath;

    if-eqz v0, :cond_18

    .line 854
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const/4 v1, 0x1

    aput-object p2, v2, v1

    const-string v1, "addPath3"

    invoke-interface {v0, v1, v2}, Lcom/miui/autoui/IAutoUIPath;->addOp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 857
    :cond_18
    iget-wide v3, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v5, p1, Landroid/graphics/Path;->mNativePath:J

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v7

    invoke-static/range {v3 .. v8}, Landroid/graphics/Path;->nAddPath(JJJ)V

    .line 858
    return-void
.end method

.method public whitelist addRect(FFFFLandroid/graphics/Path$Direction;)V
    .registers 16
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "dir"    # Landroid/graphics/Path$Direction;

    .line 666
    invoke-direct/range {p0 .. p5}, Landroid/graphics/Path;->detectSimplePath(FFFFLandroid/graphics/Path$Direction;)V

    .line 668
    iget-object v0, p0, Landroid/graphics/Path;->mAutoUIPath:Lcom/miui/autoui/IAutoUIPath;

    if-eqz v0, :cond_2e

    .line 669
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const-string v2, "addRect"

    invoke-interface {v0, v2, v1}, Lcom/miui/autoui/IAutoUIPath;->addOp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 672
    :cond_2e
    iget-wide v3, p0, Landroid/graphics/Path;->mNativePath:J

    iget v9, p5, Landroid/graphics/Path$Direction;->nativeInt:I

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v3 .. v9}, Landroid/graphics/Path;->nAddRect(JFFFFI)V

    .line 673
    return-void
.end method

.method public whitelist addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V
    .registers 9
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "dir"    # Landroid/graphics/Path$Direction;

    .line 653
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 654
    return-void
.end method

.method public whitelist addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V
    .registers 22
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "rx"    # F
    .param p6, "ry"    # F
    .param p7, "dir"    # Landroid/graphics/Path$Direction;

    .line 767
    move-object v0, p0

    move-object/from16 v1, p7

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/Path;->isSimplePath:Z

    .line 769
    iget-object v3, v0, Landroid/graphics/Path;->mAutoUIPath:Lcom/miui/autoui/IAutoUIPath;

    if-eqz v3, :cond_3e

    .line 770
    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x5

    invoke-static/range {p6 .. p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x6

    aput-object v1, v4, v2

    const-string v2, "addRoundRect"

    invoke-interface {v3, v2, v4}, Lcom/miui/autoui/IAutoUIPath;->addOp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 773
    :cond_3e
    iget-wide v5, v0, Landroid/graphics/Path;->mNativePath:J

    iget v13, v1, Landroid/graphics/Path$Direction;->nativeInt:I

    move v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    invoke-static/range {v5 .. v13}, Landroid/graphics/Path;->nAddRoundRect(JFFFFFFI)V

    .line 774
    return-void
.end method

.method public whitelist addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V
    .registers 18
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "radii"    # [F
    .param p6, "dir"    # Landroid/graphics/Path$Direction;

    .line 802
    move-object v0, p0

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    array-length v1, v9

    const/16 v2, 0x8

    if-lt v1, v2, :cond_48

    .line 805
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/Path;->isSimplePath:Z

    .line 807
    iget-object v2, v0, Landroid/graphics/Path;->mAutoUIPath:Lcom/miui/autoui/IAutoUIPath;

    if-eqz v2, :cond_3a

    .line 808
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x4

    aput-object v9, v3, v1

    const/4 v1, 0x5

    aput-object v10, v3, v1

    const-string v1, "addRoundRect"

    invoke-interface {v2, v1, v3}, Lcom/miui/autoui/IAutoUIPath;->addOp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 811
    :cond_3a
    iget-wide v1, v0, Landroid/graphics/Path;->mNativePath:J

    iget v8, v10, Landroid/graphics/Path$Direction;->nativeInt:I

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    invoke-static/range {v1 .. v8}, Landroid/graphics/Path;->nAddRoundRect(JFFFF[FI)V

    .line 812
    return-void

    .line 803
    :cond_48
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v2, "radii[] needs 8 values"

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V
    .registers 13
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "rx"    # F
    .param p3, "ry"    # F
    .param p4, "dir"    # Landroid/graphics/Path$Direction;

    .line 755
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 756
    return-void
.end method

.method public whitelist addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V
    .registers 11
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "radii"    # [F
    .param p3, "dir"    # Landroid/graphics/Path$Direction;

    .line 786
    if-eqz p1, :cond_11

    .line 789
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 790
    return-void

    .line 787
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need rect parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist approximate(F)[F
    .registers 4
    .param p1, "acceptableError"    # F

    .line 984
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_c

    .line 987
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Path;->nApproximate(JF)[F

    move-result-object v0

    return-object v0

    .line 985
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AcceptableError must be greater than or equal to 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist arcTo(FFFFFFZ)V
    .registers 21
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F
    .param p7, "forceMoveTo"    # Z

    .line 600
    move-object v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/Path;->isSimplePath:Z

    .line 602
    iget-object v2, v0, Landroid/graphics/Path;->mAutoUIPath:Lcom/miui/autoui/IAutoUIPath;

    if-eqz v2, :cond_40

    .line 603
    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x5

    invoke-static/range {p6 .. p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x6

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "arcTo"

    invoke-interface {v2, v1, v3}, Lcom/miui/autoui/IAutoUIPath;->addOp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 606
    :cond_40
    iget-wide v4, v0, Landroid/graphics/Path;->mNativePath:J

    move v6, p1

    move v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-static/range {v4 .. v12}, Landroid/graphics/Path;->nArcTo(JFFFFFFZ)V

    .line 607
    return-void
.end method

.method public whitelist arcTo(Landroid/graphics/RectF;FF)V
    .registers 12
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F

    .line 583
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    const/4 v7, 0x0

    move-object v0, p0

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 584
    return-void
.end method

.method public whitelist arcTo(Landroid/graphics/RectF;FFZ)V
    .registers 13
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F
    .param p4, "forceMoveTo"    # Z

    .line 568
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 569
    return-void
.end method

.method public whitelist close()V
    .registers 3

    .line 614
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 615
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->nClose(J)V

    .line 616
    return-void
.end method

.method public whitelist computeBounds(Landroid/graphics/RectF;Z)V
    .registers 5
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "exact"    # Z

    .line 379
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Path;->nComputeBounds(JLandroid/graphics/RectF;)V

    .line 380
    return-void
.end method

.method public whitelist cubicTo(FFFFFF)V
    .registers 19
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "x3"    # F
    .param p6, "y3"    # F

    .line 528
    move-object v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/Path;->isSimplePath:Z

    .line 530
    iget-object v2, v0, Landroid/graphics/Path;->mAutoUIPath:Lcom/miui/autoui/IAutoUIPath;

    if-eqz v2, :cond_39

    .line 531
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x5

    invoke-static/range {p6 .. p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "cubicTo"

    invoke-interface {v2, v1, v3}, Lcom/miui/autoui/IAutoUIPath;->addOp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 534
    :cond_39
    iget-wide v4, v0, Landroid/graphics/Path;->mNativePath:J

    move v6, p1

    move v7, p2

    move v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-static/range {v4 .. v11}, Landroid/graphics/Path;->nCubicTo(JFFFFFF)V

    .line 535
    return-void
.end method

.method public whitelist getFillType()Landroid/graphics/Path$FillType;
    .registers 4

    .line 311
    sget-object v0, Landroid/graphics/Path;->sFillTypeArray:[Landroid/graphics/Path$FillType;

    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v1, v2}, Landroid/graphics/Path;->nGetFillType(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist incReserve(I)V
    .registers 6
    .param p1, "extraPtCount"    # I

    .line 391
    iget-object v0, p0, Landroid/graphics/Path;->mAutoUIPath:Lcom/miui/autoui/IAutoUIPath;

    if-eqz v0, :cond_13

    .line 392
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "incReserve"

    invoke-interface {v0, v2, v1}, Lcom/miui/autoui/IAutoUIPath;->addOp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    :cond_13
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Path;->nIncReserve(JI)V

    .line 396
    return-void
.end method

.method public whitelist isConvex()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 261
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->nIsConvex(J)Z

    move-result v0

    return v0
.end method

.method public whitelist isEmpty()Z
    .registers 3

    .line 353
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->nIsEmpty(J)Z

    move-result v0

    return v0
.end method

.method public whitelist isInverseFillType()Z
    .registers 3

    .line 329
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->nGetFillType(J)I

    move-result v0

    .line 330
    .local v0, "ft":I
    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    iget v1, v1, Landroid/graphics/Path$FillType;->nativeInt:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public whitelist isRect(Landroid/graphics/RectF;)Z
    .registers 4
    .param p1, "rect"    # Landroid/graphics/RectF;

    .line 366
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Path;->nIsRect(JLandroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public whitelist lineTo(FF)V
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 441
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 443
    iget-object v1, p0, Landroid/graphics/Path;->mAutoUIPath:Lcom/miui/autoui/IAutoUIPath;

    if-eqz v1, :cond_1c

    .line 444
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "lineTo"

    invoke-interface {v1, v0, v2}, Lcom/miui/autoui/IAutoUIPath;->addOp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    :cond_1c
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->nLineTo(JFF)V

    .line 448
    return-void
.end method

.method public whitelist moveTo(FF)V
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 406
    iget-object v0, p0, Landroid/graphics/Path;->mAutoUIPath:Lcom/miui/autoui/IAutoUIPath;

    if-eqz v0, :cond_1b

    .line 407
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v2, "moveTo"

    invoke-interface {v0, v2, v1}, Lcom/miui/autoui/IAutoUIPath;->addOp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    :cond_1b
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->nMoveTo(JFF)V

    .line 411
    return-void
.end method

.method final greylist-max-o mutateNI()J
    .registers 3

    .line 960
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 961
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    return-wide v0
.end method

.method public whitelist offset(FF)V
    .registers 9
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 884
    iget-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    if-eqz v0, :cond_9

    iget-object v1, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-nez v1, :cond_9

    .line 886
    return-void

    .line 888
    :cond_9
    const/4 v1, 0x0

    if-eqz v0, :cond_28

    float-to-double v2, p1

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->rint(D)D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-nez v0, :cond_28

    float-to-double v2, p2

    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->rint(D)D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-nez v0, :cond_28

    .line 889
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Region;->translate(II)V

    goto :goto_2a

    .line 891
    :cond_28
    iput-boolean v1, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 894
    :goto_2a
    iget-object v0, p0, Landroid/graphics/Path;->mAutoUIPath:Lcom/miui/autoui/IAutoUIPath;

    if-eqz v0, :cond_44

    .line 895
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    const-string/jumbo v1, "offset"

    invoke-interface {v0, v1, v2}, Lcom/miui/autoui/IAutoUIPath;->addOp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 898
    :cond_44
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->nOffset(JFF)V

    .line 899
    return-void
.end method

.method public whitelist offset(FFLandroid/graphics/Path;)V
    .registers 4
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "dst"    # Landroid/graphics/Path;

    .line 869
    if-eqz p3, :cond_6

    .line 870
    invoke-virtual {p3, p0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    goto :goto_7

    .line 872
    :cond_6
    move-object p3, p0

    .line 874
    :goto_7
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Path;->offset(FF)V

    .line 875
    return-void
.end method

.method public whitelist op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z
    .registers 4
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "op"    # Landroid/graphics/Path$Op;

    .line 212
    invoke-virtual {p0, p0, p1, p2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    move-result v0

    return v0
.end method

.method public whitelist op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z
    .registers 16
    .param p1, "path1"    # Landroid/graphics/Path;
    .param p2, "path2"    # Landroid/graphics/Path;
    .param p3, "op"    # Landroid/graphics/Path$Op;

    .line 231
    iget-object v0, p0, Landroid/graphics/Path;->mAutoUIPath:Lcom/miui/autoui/IAutoUIPath;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    .line 232
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const-string/jumbo v4, "op"

    invoke-interface {v0, v4, v3}, Lcom/miui/autoui/IAutoUIPath;->addOp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    :cond_16
    iget-wide v5, p1, Landroid/graphics/Path;->mNativePath:J

    iget-wide v7, p2, Landroid/graphics/Path;->mNativePath:J

    invoke-virtual {p3}, Landroid/graphics/Path$Op;->ordinal()I

    move-result v9

    iget-wide v10, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static/range {v5 .. v11}, Landroid/graphics/Path;->nOp(JJIJ)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 236
    iput-boolean v2, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    .line 238
    return v1

    .line 240
    :cond_2c
    return v2
.end method

.method public whitelist quadTo(FFFF)V
    .registers 14
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 481
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 483
    iget-object v1, p0, Landroid/graphics/Path;->mAutoUIPath:Lcom/miui/autoui/IAutoUIPath;

    if-eqz v1, :cond_2b

    .line 484
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const-string/jumbo v0, "quadTo"

    invoke-interface {v1, v0, v2}, Lcom/miui/autoui/IAutoUIPath;->addOp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    :cond_2b
    iget-wide v3, p0, Landroid/graphics/Path;->mNativePath:J

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v3 .. v8}, Landroid/graphics/Path;->nQuadTo(JFFFF)V

    .line 488
    return-void
.end method

.method public whitelist rCubicTo(FFFFFF)V
    .registers 19
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "x3"    # F
    .param p6, "y3"    # F

    .line 544
    move-object v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/Path;->isSimplePath:Z

    .line 546
    iget-object v2, v0, Landroid/graphics/Path;->mAutoUIPath:Lcom/miui/autoui/IAutoUIPath;

    if-eqz v2, :cond_3a

    .line 547
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x5

    invoke-static/range {p6 .. p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const-string/jumbo v1, "rCubicTo"

    invoke-interface {v2, v1, v3}, Lcom/miui/autoui/IAutoUIPath;->addOp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    :cond_3a
    iget-wide v4, v0, Landroid/graphics/Path;->mNativePath:J

    move v6, p1

    move v7, p2

    move v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-static/range {v4 .. v11}, Landroid/graphics/Path;->nRCubicTo(JFFFFFF)V

    .line 551
    return-void
.end method

.method public whitelist rLineTo(FF)V
    .registers 7
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 463
    iget-object v1, p0, Landroid/graphics/Path;->mAutoUIPath:Lcom/miui/autoui/IAutoUIPath;

    if-eqz v1, :cond_1d

    .line 464
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const-string/jumbo v0, "rLineTo"

    invoke-interface {v1, v0, v2}, Lcom/miui/autoui/IAutoUIPath;->addOp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 467
    :cond_1d
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->nRLineTo(JFF)V

    .line 468
    return-void
.end method

.method public whitelist rMoveTo(FF)V
    .registers 7
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 425
    iget-object v0, p0, Landroid/graphics/Path;->mAutoUIPath:Lcom/miui/autoui/IAutoUIPath;

    if-eqz v0, :cond_1b

    .line 426
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v2, "rMoveTo"

    invoke-interface {v0, v2, v1}, Lcom/miui/autoui/IAutoUIPath;->addOp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    :cond_1b
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->nRMoveTo(JFF)V

    .line 430
    return-void
.end method

.method public whitelist rQuadTo(FFFF)V
    .registers 14
    .param p1, "dx1"    # F
    .param p2, "dy1"    # F
    .param p3, "dx2"    # F
    .param p4, "dy2"    # F

    .line 505
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 507
    iget-object v1, p0, Landroid/graphics/Path;->mAutoUIPath:Lcom/miui/autoui/IAutoUIPath;

    if-eqz v1, :cond_2b

    .line 508
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const-string/jumbo v0, "rQuadTo"

    invoke-interface {v1, v0, v2}, Lcom/miui/autoui/IAutoUIPath;->addOp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 511
    :cond_2b
    iget-wide v3, p0, Landroid/graphics/Path;->mNativePath:J

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v3 .. v8}, Landroid/graphics/Path;->nRQuadTo(JFFFF)V

    .line 512
    return-void
.end method

.method public final greylist-max-o readOnlyNI()J
    .registers 3

    .line 956
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    return-wide v0
.end method

.method public whitelist reset()V
    .registers 4

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 114
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 117
    :cond_d
    invoke-virtual {p0}, Landroid/graphics/Path;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object v0

    .line 119
    .local v0, "fillType":Landroid/graphics/Path$FillType;
    iget-object v1, p0, Landroid/graphics/Path;->mAutoUIPath:Lcom/miui/autoui/IAutoUIPath;

    if-eqz v1, :cond_18

    .line 120
    invoke-interface {v1}, Lcom/miui/autoui/IAutoUIPath;->clear()V

    .line 123
    :cond_18
    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v1, v2}, Landroid/graphics/Path;->nReset(J)V

    .line 124
    invoke-virtual {p0, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 125
    return-void
.end method

.method public whitelist rewind()V
    .registers 4

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 134
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 136
    :cond_d
    iget-object v0, p0, Landroid/graphics/Path;->mAutoUIPath:Lcom/miui/autoui/IAutoUIPath;

    if-eqz v0, :cond_1a

    .line 137
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "rewind"

    invoke-interface {v0, v2, v1}, Lcom/miui/autoui/IAutoUIPath;->addOp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    :cond_1a
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->nRewind(J)V

    .line 141
    return-void
.end method

.method public whitelist set(Landroid/graphics/Path;)V
    .registers 6
    .param p1, "src"    # Landroid/graphics/Path;

    .line 146
    if-ne p0, p1, :cond_3

    .line 147
    return-void

    .line 149
    :cond_3
    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 150
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v2, p1, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Path;->nSet(JJ)V

    .line 151
    iget-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    if-nez v0, :cond_13

    .line 152
    return-void

    .line 155
    :cond_13
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_1f

    iget-object v1, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v1, :cond_1f

    .line 156
    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    goto :goto_36

    .line 157
    :cond_1f
    if-eqz v0, :cond_29

    iget-object v1, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-nez v1, :cond_29

    .line 158
    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    goto :goto_36

    .line 159
    :cond_29
    iget-object v0, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_36

    .line 160
    new-instance v0, Landroid/graphics/Region;

    iget-object v1, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    invoke-direct {v0, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    iput-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    .line 163
    :cond_36
    :goto_36
    iget-object v0, p0, Landroid/graphics/Path;->mAutoUIPath:Lcom/miui/autoui/IAutoUIPath;

    if-eqz v0, :cond_46

    .line 164
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo v2, "set"

    invoke-interface {v0, v2, v1}, Lcom/miui/autoui/IAutoUIPath;->addOp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    :cond_46
    return-void
.end method

.method public whitelist setFillType(Landroid/graphics/Path$FillType;)V
    .registers 5
    .param p1, "ft"    # Landroid/graphics/Path$FillType;

    .line 320
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget v2, p1, Landroid/graphics/Path$FillType;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Path;->nSetFillType(JI)V

    .line 321
    return-void
.end method

.method public whitelist setLastPoint(FF)V
    .registers 7
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 908
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 910
    iget-object v1, p0, Landroid/graphics/Path;->mAutoUIPath:Lcom/miui/autoui/IAutoUIPath;

    if-eqz v1, :cond_1d

    .line 911
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const-string/jumbo v0, "setLastPoint"

    invoke-interface {v1, v0, v2}, Lcom/miui/autoui/IAutoUIPath;->addOp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 914
    :cond_1d
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->nSetLastPoint(JFF)V

    .line 915
    return-void
.end method

.method public whitelist toggleInverseFillType()V
    .registers 6

    .line 337
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->nGetFillType(J)I

    move-result v0

    .line 338
    .local v0, "ft":I
    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    iget v1, v1, Landroid/graphics/Path$FillType;->nativeInt:I

    xor-int/2addr v0, v1

    .line 340
    iget-object v1, p0, Landroid/graphics/Path;->mAutoUIPath:Lcom/miui/autoui/IAutoUIPath;

    if-eqz v1, :cond_1f

    .line 341
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string/jumbo v3, "setFillType"

    invoke-interface {v1, v3, v2}, Lcom/miui/autoui/IAutoUIPath;->addOp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    :cond_1f
    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v1, v2, v0}, Landroid/graphics/Path;->nSetFillType(JI)V

    .line 345
    return-void
.end method

.method public whitelist transform(Landroid/graphics/Matrix;)V
    .registers 6
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 945
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 947
    iget-object v1, p0, Landroid/graphics/Path;->mAutoUIPath:Lcom/miui/autoui/IAutoUIPath;

    if-eqz v1, :cond_12

    .line 948
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string/jumbo v0, "transform2"

    invoke-interface {v1, v0, v2}, Lcom/miui/autoui/IAutoUIPath;->addOp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 951
    :cond_12
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-virtual {p1}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Path;->nTransform(JJ)V

    .line 952
    return-void
.end method

.method public whitelist transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .registers 12
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "dst"    # Landroid/graphics/Path;

    .line 926
    const-wide/16 v0, 0x0

    .line 927
    .local v0, "dstNative":J
    const/4 v2, 0x0

    if-eqz p2, :cond_9

    .line 928
    iput-boolean v2, p2, Landroid/graphics/Path;->isSimplePath:Z

    .line 929
    iget-wide v0, p2, Landroid/graphics/Path;->mNativePath:J

    .line 932
    :cond_9
    iget-object v3, p0, Landroid/graphics/Path;->mAutoUIPath:Lcom/miui/autoui/IAutoUIPath;

    if-eqz v3, :cond_1b

    .line 933
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    const/4 v2, 0x1

    aput-object p2, v4, v2

    const-string/jumbo v2, "transform1"

    invoke-interface {v3, v2, v4}, Lcom/miui/autoui/IAutoUIPath;->addOp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 936
    :cond_1b
    iget-wide v3, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-virtual {p1}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v5

    move-wide v7, v0

    invoke-static/range {v3 .. v8}, Landroid/graphics/Path;->nTransform(JJJ)V

    .line 937
    return-void
.end method
