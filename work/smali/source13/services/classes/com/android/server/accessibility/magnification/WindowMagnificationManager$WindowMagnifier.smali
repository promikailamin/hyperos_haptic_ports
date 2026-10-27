.class Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
.super Ljava/lang/Object;
.source "WindowMagnificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WindowMagnifier"
.end annotation


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private final mDisplayId:I

.field private mEnabled:Z

.field private mIdOfLastServiceToControl:I

.field private final mMagnificationFrameOffsetRatio:Landroid/graphics/PointF;

.field private mScale:F

.field private final mSourceBounds:Landroid/graphics/Rect;

.field private mTrackingTypingFocusEnabled:Z

.field private final mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIdOfLastServiceToControl(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)I
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mIdOfLastServiceToControl:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSourceBounds(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method constructor <init>(ILcom/android/server/accessibility/magnification/WindowMagnificationManager;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "windowMagnificationManager"    # Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    .line 972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 957
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mScale:F

    .line 962
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mBounds:Landroid/graphics/Rect;

    .line 964
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    .line 966
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mIdOfLastServiceToControl:I

    .line 968
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mMagnificationFrameOffsetRatio:Landroid/graphics/PointF;

    .line 970
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mTrackingTypingFocusEnabled:Z

    .line 973
    iput p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mDisplayId:I

    .line 974
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    .line 975
    return-void
.end method


# virtual methods
.method disableWindowMagnificationInternal(Landroid/view/accessibility/MagnificationAnimationCallback;)Z
    .registers 5
    .param p1, "animationResultCallback"    # Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 1012
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1013
    return v1

    .line 1015
    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mDisplayId:I

    invoke-static {v0, v2, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$mdisableWindowMagnificationInternal(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1017
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    .line 1018
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mIdOfLastServiceToControl:I

    .line 1019
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mTrackingTypingFocusEnabled:Z

    .line 1020
    const/4 v0, 0x1

    return v0

    .line 1022
    :cond_19
    return v1
.end method

.method enableWindowMagnificationInternal(FFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z
    .registers 16
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "animationCallback"    # Landroid/view/accessibility/MagnificationAnimationCallback;
    .param p5, "windowPosition"    # I
    .param p6, "id"    # I

    .line 981
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 982
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->getScale()F

    move-result p1

    .line 984
    :cond_a
    invoke-static {p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->constrainScale(F)F

    move-result v8

    .line 985
    .local v8, "normScale":F
    invoke-virtual {p0, p5}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->setMagnificationFrameOffsetRatioByWindowPosition(I)V

    .line 986
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mMagnificationFrameOffsetRatio:Landroid/graphics/PointF;

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mMagnificationFrameOffsetRatio:Landroid/graphics/PointF;

    iget v6, v2, Landroid/graphics/PointF;->y:F

    move v2, v8

    move v3, p2

    move v4, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$menableWindowMagnificationInternal(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;IFFFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 989
    iput v8, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mScale:F

    .line 990
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    .line 991
    iput p6, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mIdOfLastServiceToControl:I

    .line 992
    return v0

    .line 994
    :cond_2f
    const/4 v0, 0x0

    return v0
.end method

.method getCenterX()F
    .registers 2

    .line 1102
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    return v0
.end method

.method getCenterY()F
    .registers 2

    .line 1107
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    return v0
.end method

.method getIdOfLastServiceToControl()I
    .registers 2

    .line 1051
    iget v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mIdOfLastServiceToControl:I

    return v0
.end method

.method getScale()F
    .registers 2

    .line 1039
    iget v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mScale:F

    return v0
.end method

.method isEnabled()Z
    .registers 2

    .line 1080
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    return v0
.end method

.method isPositionInSourceBounds(FF)Z
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1068
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method isTrackingTypingFocusEnabled()Z
    .registers 2

    .line 1076
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mTrackingTypingFocusEnabled:Z

    return v0
.end method

.method move(FF)V
    .registers 5
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F

    .line 1085
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mDisplayId:I

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$mmoveWindowMagnifierInternal(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;IFF)Z

    .line 1086
    return-void
.end method

.method public onSourceBoundsChanged(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "sourceBounds"    # Landroid/graphics/Rect;

    .line 1097
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1098
    return-void
.end method

.method pointersInWindow(Landroid/view/MotionEvent;)I
    .registers 10
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 1055
    const/4 v0, 0x0

    .line 1056
    .local v0, "count":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 1057
    .local v1, "pointerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_1f

    .line 1058
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1059
    .local v3, "x":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1060
    .local v4, "y":F
    iget-object v5, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mBounds:Landroid/graphics/Rect;

    float-to-int v6, v3

    float-to-int v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1061
    add-int/lit8 v0, v0, 0x1

    .line 1057
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1064
    .end local v2    # "i":I
    :cond_1f
    return v0
.end method

.method reset()V
    .registers 2

    .line 1090
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    .line 1091
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mIdOfLastServiceToControl:I

    .line 1092
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1093
    return-void
.end method

.method setMagnificationFrameOffsetRatioByWindowPosition(I)V
    .registers 4
    .param p1, "windowPosition"    # I

    .line 998
    packed-switch p1, :pswitch_data_14

    goto :goto_13

    .line 1004
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mMagnificationFrameOffsetRatio:Landroid/graphics/PointF;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_13

    .line 1000
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mMagnificationFrameOffsetRatio:Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 1002
    nop

    .line 1008
    :goto_13
    return-void

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_c
        :pswitch_4
    .end packed-switch
.end method

.method setMagnifierLocation(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 1044
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1045
    return-void
.end method

.method setScale(F)V
    .registers 5
    .param p1, "scale"    # F

    .line 1027
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    if-nez v0, :cond_5

    .line 1028
    return-void

    .line 1030
    :cond_5
    invoke-static {p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->constrainScale(F)F

    move-result v0

    .line 1031
    .local v0, "normScale":F
    iget v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mScale:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mDisplayId:I

    .line 1032
    invoke-static {v1, v2, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$msetScaleInternal(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;IF)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1033
    iput v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mScale:F

    .line 1035
    :cond_1d
    return-void
.end method

.method setTrackingTypingFocusEnabled(Z)V
    .registers 2
    .param p1, "trackingTypingFocusEnabled"    # Z

    .line 1072
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mTrackingTypingFocusEnabled:Z

    .line 1073
    return-void
.end method
