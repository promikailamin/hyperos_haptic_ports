.class Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;
.super Ljava/lang/Object;
.source "TaskSnapshotController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemBarBackgroundPainter"
.end annotation


# instance fields
.field private final mInsetsState:Landroid/view/InsetsState;

.field private final mNavigationBarColor:I

.field private final mNavigationBarPaint:Landroid/graphics/Paint;

.field private final mScale:F

.field private final mStatusBarColor:I

.field private final mStatusBarPaint:Landroid/graphics/Paint;

.field private final mSystemBarInsets:Landroid/graphics/Rect;

.field private final mWindowFlags:I

.field private final mWindowPrivateFlags:I


# direct methods
.method constructor <init>(IIILandroid/app/ActivityManager$TaskDescription;FLandroid/view/InsetsState;)V
    .registers 23
    .param p1, "windowFlags"    # I
    .param p2, "windowPrivateFlags"    # I
    .param p3, "appearance"    # I
    .param p4, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p5, "scale"    # F
    .param p6, "insetsState"    # Landroid/view/InsetsState;

    .line 929
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 917
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mStatusBarPaint:Landroid/graphics/Paint;

    .line 918
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mNavigationBarPaint:Landroid/graphics/Paint;

    .line 925
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    .line 930
    move/from16 v3, p1

    iput v3, v0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mWindowFlags:I

    .line 931
    move/from16 v11, p2

    iput v11, v0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mWindowPrivateFlags:I

    .line 932
    move/from16 v12, p5

    iput v12, v0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mScale:F

    .line 933
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v13

    .line 934
    .local v13, "context":Landroid/content/Context;
    const v4, 0x106029d

    invoke-virtual {v13, v4}, Landroid/content/Context;->getColor(I)I

    move-result v14

    .line 936
    .local v14, "semiTransparent":I
    nop

    .line 937
    invoke-virtual/range {p4 .. p4}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v7

    .line 939
    invoke-virtual/range {p4 .. p4}, Landroid/app/ActivityManager$TaskDescription;->getEnsureStatusBarContrastWhenTransparent()Z

    move-result v10

    .line 936
    const/high16 v5, 0x4000000

    const/16 v9, 0x8

    move/from16 v4, p1

    move v6, v14

    move/from16 v8, p3

    invoke-static/range {v4 .. v10}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZ)I

    move-result v15

    iput v15, v0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mStatusBarColor:I

    .line 940
    nop

    .line 942
    invoke-virtual/range {p4 .. p4}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v7

    .line 944
    invoke-virtual/range {p4 .. p4}, Landroid/app/ActivityManager$TaskDescription;->getEnsureNavigationBarContrastWhenTransparent()Z

    move-result v4

    if-eqz v4, :cond_67

    .line 945
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110181

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_67

    const/4 v4, 0x1

    goto :goto_68

    :cond_67
    const/4 v4, 0x0

    :goto_68
    move v10, v4

    .line 940
    const/high16 v5, 0x8000000

    const/16 v9, 0x10

    move/from16 v4, p1

    move v6, v14

    move/from16 v8, p3

    invoke-static/range {v4 .. v10}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZ)I

    move-result v4

    iput v4, v0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mNavigationBarColor:I

    .line 946
    invoke-virtual {v1, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 947
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 948
    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mInsetsState:Landroid/view/InsetsState;

    .line 949
    return-void
.end method

.method private isNavigationBarColorViewVisible()Z
    .registers 6

    .line 967
    iget v0, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mWindowPrivateFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 969
    .local v0, "forceBarBackground":Z
    :goto_a
    sget-object v1, Lcom/android/internal/policy/DecorView;->NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mInsetsState:Landroid/view/InsetsState;

    iget v3, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mNavigationBarColor:I

    iget v4, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mWindowFlags:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(Landroid/view/InsetsState;IIZ)Z

    move-result v1

    return v1
.end method


# virtual methods
.method drawDecors(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 974
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->getStatusBarColorViewHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->drawStatusBarBackground(Landroid/graphics/Canvas;I)V

    .line 975
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->drawNavigationBarBackground(Landroid/graphics/Canvas;)V

    .line 976
    return-void
.end method

.method drawNavigationBarBackground(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 989
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 990
    .local v0, "navigationBarRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mScale:F

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/internal/policy/DecorView;->getNavigationBarRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;F)V

    .line 992
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->isNavigationBarColorViewVisible()Z

    move-result v1

    .line 993
    .local v1, "visible":Z
    if-eqz v1, :cond_2d

    iget v2, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mNavigationBarColor:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 994
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mNavigationBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 996
    :cond_2d
    return-void
.end method

.method drawStatusBarBackground(Landroid/graphics/Canvas;I)V
    .registers 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "statusBarHeight"    # I

    .line 981
    if-lez p2, :cond_22

    iget v0, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mStatusBarColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_22

    .line 982
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 983
    .local v0, "rightInset":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v4, v1

    int-to-float v5, p2

    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mStatusBarPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 985
    .end local v0    # "rightInset":I
    :cond_22
    return-void
.end method

.method getStatusBarColorViewHeight()I
    .registers 7

    .line 956
    iget v0, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mWindowPrivateFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    move v0, v1

    .line 958
    .local v0, "forceBarBackground":Z
    :goto_b
    sget-object v2, Lcom/android/internal/policy/DecorView;->STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mInsetsState:Landroid/view/InsetsState;

    iget v4, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mStatusBarColor:I

    iget v5, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mWindowFlags:I

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(Landroid/view/InsetsState;IIZ)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 960
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1

    .line 962
    :cond_23
    return v1
.end method

.method setInsets(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "systemBarInsets"    # Landroid/graphics/Rect;

    .line 952
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 953
    return-void
.end method
