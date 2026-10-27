.class public Lcom/android/server/policy/SwipeToScreenshotListener;
.super Ljava/lang/Object;
.source "SwipeToScreenshotListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# instance fields
.field public mBootCompleted:Z

.field public final mCallbacks:Lcom/android/server/policy/SwipeToScreenshotListener$Callbacks;

.field public final mContext:Landroid/content/Context;

.field public mDeviceProvisioned:Z

.field public mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public final mInitMotionY:[F

.field public final mPointerIds:[I

.field public mThreeGestureState:I

.field public final mThreeGestureThreshold:I

.field public final mThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/SwipeToScreenshotListener$Callbacks;)V
    .registers 5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mDeviceProvisioned:Z

    .line 41
    iput v0, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mThreeGestureState:I

    const/4 v0, 0x3

    .line 48
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mPointerIds:[I

    .line 49
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mInitMotionY:[F

    .line 50
    iput-object p1, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mCallbacks:Lcom/android/server/policy/SwipeToScreenshotListener$Callbacks;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/high16 p2, 0x42480000    # 50.0f

    .line 53
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mThreshold:I

    mul-int/2addr p1, v0

    .line 54
    iput p1, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mThreeGestureThreshold:I

    return-void
.end method


# virtual methods
.method public final changeThreeGestureState(I)V
    .registers 3

    .line 108
    iget v0, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mThreeGestureState:I

    if-eq v0, p1, :cond_1f

    .line 109
    iput p1, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mThreeGestureState:I

    const/4 p0, 0x3

    const/4 v0, 0x1

    if-eq p1, p0, :cond_e

    if-ne p1, v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 113
    :cond_e
    :goto_e
    :try_start_e
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/app/IActivityManager;->setSwipeToScreenshotGestureActive(Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p0

    .line 115
    const-string p1, "SwipeToScreenshotListener"

    const-string/jumbo v0, "setSwipeToScreenshotGestureActive exception"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    return-void
.end method

.method public final checkIsStartThreeGesture(Landroid/view/MotionEvent;)Z
    .registers 13

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_11

    return v1

    .line 124
    :cond_11
    iget-object v0, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 125
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v3, 0x1

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    move v7, v1

    move v5, v4

    move v6, v5

    move v4, v3

    .line 130
    :goto_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    if-ge v7, v8, :cond_4a

    .line 131
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 132
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 133
    iget v10, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mThreshold:I

    sub-int v10, v2, v10

    int-to-float v10, v10

    cmpl-float v10, v9, v10

    if-lez v10, :cond_37

    return v1

    .line 136
    :cond_37
    invoke-static {v4, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 137
    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 138
    invoke-static {v3, v9}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 139
    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    :cond_4a
    sub-float/2addr v3, v5

    .line 141
    iget-object p0, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 p1, 0x43160000    # 150.0f

    mul-float/2addr p0, p1

    cmpg-float p0, v3, p0

    if-gtz p0, :cond_62

    sub-float/2addr v4, v6

    .line 142
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, v4, p0

    if-gtz p0, :cond_62

    const/4 p0, 0x1

    return p0

    :cond_62
    return v1
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 8

    .line 59
    iget-boolean v0, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mBootCompleted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 60
    const-string/jumbo p1, "sys.boot_completed"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mBootCompleted:Z

    return-void

    .line 63
    :cond_f
    iget-boolean v0, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mDeviceProvisioned:Z

    const/4 v2, 0x1

    if-nez v0, :cond_26

    .line 64
    iget-object p1, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "device_provisioned"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_23

    move v1, v2

    :cond_23
    iput-boolean v1, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mDeviceProvisioned:Z

    return-void

    .line 68
    :cond_26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-nez v0, :cond_31

    .line 69
    invoke-virtual {p0, v1}, Lcom/android/server/policy/SwipeToScreenshotListener;->changeThreeGestureState(I)V

    goto :goto_5e

    .line 70
    :cond_31
    iget v0, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mThreeGestureState:I

    if-nez v0, :cond_5e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v3, :cond_5e

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/policy/SwipeToScreenshotListener;->checkIsStartThreeGesture(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 72
    invoke-virtual {p0, v2}, Lcom/android/server/policy/SwipeToScreenshotListener;->changeThreeGestureState(I)V

    move v0, v1

    :goto_45
    if-ge v0, v3, :cond_5e

    .line 74
    iget-object v4, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mPointerIds:[I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    aput v5, v4, v0

    .line 75
    iget-object v4, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mInitMotionY:[F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :cond_5a
    const/4 v0, 0x4

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/server/policy/SwipeToScreenshotListener;->changeThreeGestureState(I)V

    .line 81
    :cond_5e
    :goto_5e
    iget v0, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mThreeGestureState:I

    if-ne v0, v2, :cond_a3

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v3, :cond_6d

    .line 83
    invoke-virtual {p0, v2}, Lcom/android/server/policy/SwipeToScreenshotListener;->changeThreeGestureState(I)V

    return-void

    .line 86
    :cond_6d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v2, :cond_a3

    const/4 v0, 0x0

    :goto_74
    if-ge v1, v3, :cond_94

    .line 90
    iget-object v4, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mPointerIds:[I

    aget v4, v4, v1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-ltz v4, :cond_90

    if-lt v4, v3, :cond_83

    goto :goto_90

    .line 95
    :cond_83
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v5, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mInitMotionY:[F

    aget v5, v5, v1

    sub-float/2addr v4, v5

    add-float/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_74

    .line 92
    :cond_90
    :goto_90
    invoke-virtual {p0, v2}, Lcom/android/server/policy/SwipeToScreenshotListener;->changeThreeGestureState(I)V

    return-void

    .line 99
    :cond_94
    iget p1, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mThreeGestureThreshold:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_a3

    .line 100
    invoke-virtual {p0, v3}, Lcom/android/server/policy/SwipeToScreenshotListener;->changeThreeGestureState(I)V

    .line 101
    iget-object p0, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mCallbacks:Lcom/android/server/policy/SwipeToScreenshotListener$Callbacks;

    invoke-interface {p0}, Lcom/android/server/policy/SwipeToScreenshotListener$Callbacks;->onSwipeThreeFinger()V

    :cond_a3
    return-void
.end method
