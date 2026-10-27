.class final Landroid/inputmethodservice/navigationbar/DeadZone;
.super Ljava/lang/Object;
.source "DeadZone.java"


# static fields
.field private static final blacklist CHATTY:Z = true

.field public static final blacklist DEBUG:Z = false

.field private static final blacklist FLASH_PROPERTY:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/inputmethodservice/navigationbar/DeadZone;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HORIZONTAL:I = 0x0

.field public static final blacklist TAG:Ljava/lang/String; = "DeadZone"

.field public static final blacklist VERTICAL:I = 0x1


# instance fields
.field private final blacklist mDebugFlash:Ljava/lang/Runnable;

.field private blacklist mDecay:I

.field private blacklist mDisplayRotation:I

.field private blacklist mFlashFrac:F

.field private blacklist mHold:I

.field private blacklist mLastPokeTime:J

.field private final blacklist mNavigationBarView:Landroid/inputmethodservice/navigationbar/NavigationBarView;

.field private blacklist mShouldFlash:Z

.field private blacklist mSizeMax:I

.field private blacklist mSizeMin:I

.field private blacklist mVertical:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetFLASH_PROPERTY()Landroid/util/FloatProperty;
    .registers 1

    sget-object v0, Landroid/inputmethodservice/navigationbar/DeadZone;->FLASH_PROPERTY:Landroid/util/FloatProperty;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 52
    new-instance v0, Landroid/inputmethodservice/navigationbar/DeadZone$1;

    const-string v1, "DeadZoneFlash"

    invoke-direct {v0, v1}, Landroid/inputmethodservice/navigationbar/DeadZone$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/inputmethodservice/navigationbar/DeadZone;->FLASH_PROPERTY:Landroid/util/FloatProperty;

    return-void
.end method

.method constructor blacklist <init>(Landroid/inputmethodservice/navigationbar/NavigationBarView;)V
    .registers 3

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mFlashFrac:F

    .line 79
    new-instance v0, Landroid/inputmethodservice/navigationbar/DeadZone$2;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/navigationbar/DeadZone$2;-><init>(Landroid/inputmethodservice/navigationbar/DeadZone;)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mDebugFlash:Ljava/lang/Runnable;

    .line 87
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mNavigationBarView:Landroid/inputmethodservice/navigationbar/NavigationBarView;

    .line 88
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/navigationbar/DeadZone;->onConfigurationChanged(I)V

    .line 89
    return-void
.end method

.method private blacklist getSize(J)F
    .registers 7

    .line 96
    iget v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mSizeMax:I

    if-nez v0, :cond_6

    .line 97
    const/4 p1, 0x0

    return p1

    .line 99
    :cond_6
    iget-wide v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mLastPokeTime:J

    sub-long/2addr p1, v0

    .line 100
    iget v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mHold:I

    iget v1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mDecay:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_17

    .line 101
    iget p1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mSizeMin:I

    int-to-float p1, p1

    return p1

    .line 102
    :cond_17
    iget v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mHold:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_22

    .line 103
    iget p1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mSizeMax:I

    int-to-float p1, p1

    return p1

    .line 105
    :cond_22
    iget v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mSizeMax:I

    int-to-float v0, v0

    iget v1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mSizeMin:I

    int-to-float v1, v1

    iget v2, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mHold:I

    int-to-long v2, v2

    sub-long/2addr p1, v2

    long-to-float p1, p1

    iget p2, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mDecay:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {v0, v1, p1}, Landroid/inputmethodservice/navigationbar/DeadZone;->lerp(FFF)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    return p1
.end method

.method static blacklist lerp(FFF)F
    .registers 3

    .line 92
    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr p1, p0

    return p1
.end method

.method private blacklist poke(Landroid/view/MotionEvent;)V
    .registers 4

    .line 186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mLastPokeTime:J

    .line 190
    iget-boolean p1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mShouldFlash:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mNavigationBarView:Landroid/inputmethodservice/navigationbar/NavigationBarView;

    invoke-virtual {p1}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->postInvalidate()V

    .line 191
    :cond_f
    return-void
.end method


# virtual methods
.method public blacklist getFlash()F
    .registers 2

    .line 199
    iget v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mFlashFrac:F

    return v0
.end method

.method public blacklist onConfigurationChanged(I)V
    .registers 4

    .line 115
    iput p1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mDisplayRotation:I

    .line 117
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mNavigationBarView:Landroid/inputmethodservice/navigationbar/NavigationBarView;

    invoke-virtual {p1}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 118
    const/16 v0, 0x14d

    iput v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mHold:I

    .line 119
    iput v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mDecay:I

    .line 121
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0, p1}, Landroid/inputmethodservice/navigationbar/NavigationBarUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mSizeMin:I

    .line 122
    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0, p1}, Landroid/inputmethodservice/navigationbar/NavigationBarUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mSizeMax:I

    .line 123
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->fixNavbarDeadZone()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2f

    .line 124
    iget v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mSizeMax:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mSizeMax:I

    .line 125
    iget v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mSizeMin:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mSizeMin:I

    .line 127
    :cond_2f
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x0

    if-ne p1, v1, :cond_3a

    const/4 p1, 0x1

    goto :goto_3b

    :cond_3a
    move p1, v0

    :goto_3b
    iput-boolean p1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mVertical:Z

    .line 133
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/DeadZone;->setFlashOnTouchCapture(Z)V

    .line 134
    return-void
.end method

.method public blacklist onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 203
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mShouldFlash:Z

    if-eqz v0, :cond_4f

    iget v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mFlashFrac:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_c

    goto :goto_4f

    .line 207
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/inputmethodservice/navigationbar/DeadZone;->getSize(J)F

    move-result v0

    float-to-int v0, v0

    .line 208
    iget-boolean v1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mVertical:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_38

    .line 209
    iget v1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mDisplayRotation:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_30

    .line 210
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_3f

    .line 212
    :cond_30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_3f

    .line 215
    :cond_38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 218
    :goto_3f
    iget v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mFlashFrac:F

    .line 219
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0xee

    const/16 v2, 0xaa

    const/16 v3, 0xdd

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 225
    return-void

    .line 204
    :cond_4f
    :goto_4f
    return-void
.end method

.method public blacklist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    .line 145
    return v0

    .line 148
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 149
    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne v1, v3, :cond_15

    .line 150
    invoke-direct {p0, p1}, Landroid/inputmethodservice/navigationbar/DeadZone;->poke(Landroid/view/MotionEvent;)V

    .line 151
    return v4

    .line 152
    :cond_15
    if-nez v1, :cond_98

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Landroid/inputmethodservice/navigationbar/DeadZone;->getSize(J)F

    move-result v1

    float-to-int v1, v1

    .line 161
    iget-boolean v3, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mVertical:Z

    if-eqz v3, :cond_49

    .line 162
    iget v3, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mDisplayRotation:I

    if-ne v3, v2, :cond_3c

    .line 163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mNavigationBarView:Landroid/inputmethodservice/navigationbar/NavigationBarView;

    invoke-virtual {v3}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v1, v3

    cmpl-float v1, v2, v1

    if-lez v1, :cond_3a

    move v1, v4

    goto :goto_55

    :cond_3a
    move v1, v0

    goto :goto_55

    .line 165
    :cond_3c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-gez v1, :cond_47

    move v1, v4

    goto :goto_55

    :cond_47
    move v1, v0

    goto :goto_55

    .line 168
    :cond_49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-gez v1, :cond_54

    move v1, v4

    goto :goto_55

    :cond_54
    move v1, v0

    .line 170
    :goto_55
    if-eqz v1, :cond_98

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "consuming errant click: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 172
    const-string v0, "DeadZone"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-boolean p1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mShouldFlash:Z

    if-eqz p1, :cond_97

    .line 176
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mNavigationBarView:Landroid/inputmethodservice/navigationbar/NavigationBarView;

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mDebugFlash:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->post(Ljava/lang/Runnable;)Z

    .line 177
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mNavigationBarView:Landroid/inputmethodservice/navigationbar/NavigationBarView;

    invoke-virtual {p1}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->postInvalidate()V

    .line 179
    :cond_97
    return v4

    .line 182
    :cond_98
    return v0
.end method

.method public blacklist setFlash(F)V
    .registers 2

    .line 194
    iput p1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mFlashFrac:F

    .line 195
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mNavigationBarView:Landroid/inputmethodservice/navigationbar/NavigationBarView;

    invoke-virtual {p1}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->postInvalidate()V

    .line 196
    return-void
.end method

.method public blacklist setFlashOnTouchCapture(Z)V
    .registers 2

    .line 109
    iput-boolean p1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mShouldFlash:Z

    .line 110
    const/4 p1, 0x0

    iput p1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mFlashFrac:F

    .line 111
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mNavigationBarView:Landroid/inputmethodservice/navigationbar/NavigationBarView;

    invoke-virtual {p1}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->postInvalidate()V

    .line 112
    return-void
.end method
