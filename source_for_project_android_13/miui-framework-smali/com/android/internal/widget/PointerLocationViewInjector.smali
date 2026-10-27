.class public Lcom/android/internal/widget/PointerLocationViewInjector;
.super Ljava/lang/Object;
.source "PointerLocationViewInjector.java"


# static fields
.field private static final blacklist CUSTOM_TOUCH_STYLE_ENABLED:Ljava/lang/String; = "debug.customtouchstyle.enabled"

.field private static final blacklist CUSTOM_TOUCH_STYLE_OVAL_SIZE:Ljava/lang/String; = "debug.customtouchstyle.ovalsize"

.field private static final blacklist CUSTOM_TOUCH_STYLE_PAINT_COLOR:Ljava/lang/String; = "debug.customtouchstyle.paintcolor"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist mMoveCount:I

.field private static blacklist sCustomTouchStyleEnabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 12
    const-class v0, Lcom/android/internal/widget/PointerLocationViewInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/PointerLocationViewInjector;->TAG:Ljava/lang/String;

    .line 21
    const-string v0, "debug.customtouchstyle.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/widget/PointerLocationViewInjector;->sCustomTouchStyleEnabled:Z

    .line 68
    sput v1, Lcom/android/internal/widget/PointerLocationViewInjector;->mMoveCount:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V
    .registers 16
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "major"    # F
    .param p4, "minor"    # F
    .param p5, "angle"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 30
    invoke-virtual {p6}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    .line 31
    .local v0, "oldStyle":Landroid/graphics/Paint$Style;
    invoke-virtual {p6}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    .line 33
    .local v1, "oldColor":I
    move v2, p3

    .line 34
    .local v2, "customMajor":F
    move v3, p4

    .line 36
    .local v3, "customMinor":F
    invoke-static {}, Lcom/android/internal/widget/PointerLocationViewInjector;->isCustomTouchStyleEnabled()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 37
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p6, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    const-string v4, "debug.customtouchstyle.paintcolor"

    const/4 v5, -0x1

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 39
    .local v4, "customColor":I
    if-eq v4, v5, :cond_21

    .line 40
    invoke-virtual {p6, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    :cond_21
    const-string v5, "debug.customtouchstyle.ovalsize"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 43
    .local v5, "ovalSize":Ljava/lang/String;
    if-eqz v5, :cond_40

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_40

    .line 45
    :try_start_2f
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_33} :catch_36

    .line 46
    .local v6, "customSize":F
    move v2, v6

    .line 47
    move v3, v6

    .line 50
    .end local v6    # "customSize":F
    goto :goto_40

    .line 48
    :catch_36
    move-exception v6

    .line 49
    .local v6, "e":Ljava/lang/NumberFormatException;
    sget-object v7, Lcom/android/internal/widget/PointerLocationViewInjector;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .end local v4    # "customColor":I
    .end local v5    # "ovalSize":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_40
    :goto_40
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/graphics/Canvas;->save(I)I

    .line 55
    const/high16 v4, 0x43340000    # 180.0f

    mul-float/2addr v4, p5

    float-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {p0, v4, p1, p2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 56
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 57
    .local v4, "ovalRect":Landroid/graphics/RectF;
    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v3, v5

    sub-float v6, p1, v6

    iput v6, v4, Landroid/graphics/RectF;->left:F

    .line 58
    div-float v6, v3, v5

    add-float/2addr v6, p1

    iput v6, v4, Landroid/graphics/RectF;->right:F

    .line 59
    div-float v6, v2, v5

    sub-float v6, p2, v6

    iput v6, v4, Landroid/graphics/RectF;->top:F

    .line 60
    div-float v5, v2, v5

    add-float/2addr v5, p2

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 61
    invoke-virtual {p0, v4, p6}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 62
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 64
    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    invoke-virtual {p6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    return-void
.end method

.method private static blacklist getMotionStr(Landroid/view/MotionEvent;)Ljava/lang/String;
    .registers 6
    .param p0, "event"    # Landroid/view/MotionEvent;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v0, "msg":Ljava/lang/StringBuilder;
    const-string v1, "[PointerLocationView] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, "MotionEvent { action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 93
    .local v1, "pointerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    if-ge v2, v1, :cond_49

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", id["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 96
    .end local v2    # "i":I
    :cond_49
    const-string v2, ", pointerCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    const-string v2, ", eventTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 98
    const-string v2, ", downTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 99
    const-string v2, " }"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist isCustomTouchStyleEnabled()Z
    .registers 1

    .line 25
    sget-boolean v0, Lcom/android/internal/widget/PointerLocationViewInjector;->sCustomTouchStyleEnabled:Z

    return v0
.end method

.method static blacklist logOnMotionEvent(Landroid/view/MotionEvent;)V
    .registers 6
    .param p0, "motionEvent"    # Landroid/view/MotionEvent;

    .line 72
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 73
    .local v0, "maskedAction":I
    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_d

    .line 74
    sget v2, Lcom/android/internal/widget/PointerLocationViewInjector;->mMoveCount:I

    add-int/2addr v2, v1

    sput v2, Lcom/android/internal/widget/PointerLocationViewInjector;->mMoveCount:I

    .line 76
    :cond_d
    if-eqz v0, :cond_17

    if-eq v0, v1, :cond_17

    const/4 v2, 0x5

    if-eq v0, v2, :cond_17

    const/4 v2, 0x6

    if-ne v0, v2, :cond_3e

    .line 80
    :cond_17
    sget-object v2, Lcom/android/internal/widget/PointerLocationViewInjector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/internal/widget/PointerLocationViewInjector;->getMotionStr(Landroid/view/MotionEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " moveCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/widget/PointerLocationViewInjector;->mMoveCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    if-ne v0, v1, :cond_3e

    .line 82
    const/4 v1, 0x0

    sput v1, Lcom/android/internal/widget/PointerLocationViewInjector;->mMoveCount:I

    .line 86
    :cond_3e
    return-void
.end method
