.class public Landroid/view/ChoreographerInjectorStubImpl;
.super Ljava/lang/Object;
.source "ChoreographerInjectorStubImpl.java"

# interfaces
.implements Landroid/view/animation/ChoreographerInjectorStub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;
    }
.end annotation


# static fields
.field private static final blacklist CACHE_BUFFER_DEBUG:Z

.field private static final blacklist CACHE_BUFFER_ENABLE:Z

.field private static final blacklist CONTINUOUS_MOVE_COUNT_MIN:I = 0x3

.field private static final blacklist DO_FRAME_LOWER_THRESHOLD:D = 0.25

.field private static final blacklist DO_FRAME_UPPER_THRESHOLD:D = 0.75

.field private static final blacklist MAX_NUM_TO_ADJUST:I

.field private static final blacklist MIN_NUM_OF_TIMES_TO_DROP_FRAME:I = 0x2

.field private static final blacklist MIN_NUM_TO_DROP_FRAME:I = 0x3

.field private static final blacklist MSG_CACHE_BUFFER_DO_FRAME:I = 0x64

.field private static final blacklist NO_SURFACE_STATE:I = 0x0

.field private static final blacklist PROP_MIUI_OPTIMIZATION:Ljava/lang/String; = "persist.sys.miui_optimization"

.field private static final blacklist RATIO_TO_DELAY:D = 0.125

.field private static final blacklist TAG:Ljava/lang/String; = "ChoreographerInjector"

.field private static final blacklist UNINIT_SURFACE_STATE:I = -0x1

.field private static blacklist mCurrentViewRootImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sCtsModeEnable:Z

.field private static blacklist sDisableBgAnimate:Z

.field public static blacklist sHasSurface:Z

.field private static blacklist sSurfaceCount:I


# instance fields
.field private blacklist mBufferNumPlanningToCache:I

.field private blacklist mCurrentDynamicBufferInfo:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDelayCachingTimes:I

.field private blacklist mDoFrameOpt:Z

.field private blacklist mNeedSurfaceMethod:Ljava/lang/reflect/Method;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmCurrentDynamicBufferInfo(Landroid/view/ChoreographerInjectorStubImpl;Ljava/lang/ref/WeakReference;)V
    .registers 2

    iput-object p1, p0, Landroid/view/ChoreographerInjectorStubImpl;->mCurrentDynamicBufferInfo:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetMAX_NUM_TO_ADJUST()I
    .registers 1

    sget v0, Landroid/view/ChoreographerInjectorStubImpl;->MAX_NUM_TO_ADJUST:I

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 70
    const-string v0, "persist.sys.disable_bganimate"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/ChoreographerInjectorStubImpl;->sDisableBgAnimate:Z

    .line 73
    nop

    .line 74
    const-string v0, "ro.miui.cts"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 73
    xor-int/lit8 v0, v0, 0x1

    const-string v2, "persist.sys.miui_optimization"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Landroid/view/ChoreographerInjectorStubImpl;->sCtsModeEnable:Z

    .line 75
    const-string v0, "persist.sys.cachebuffer.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/ChoreographerInjectorStubImpl;->CACHE_BUFFER_ENABLE:Z

    .line 77
    const-string v0, "persist.sys.cachebuffer.debug"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/ChoreographerInjectorStubImpl;->CACHE_BUFFER_DEBUG:Z

    .line 79
    const-string v0, "persist.sys.dynamicbuffer.max_adjust_num"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/ChoreographerInjectorStubImpl;->MAX_NUM_TO_ADJUST:I

    .line 81
    const/4 v0, -0x1

    sput v0, Landroid/view/ChoreographerInjectorStubImpl;->sSurfaceCount:I

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 5

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ChoreographerInjectorStubImpl;->mBufferNumPlanningToCache:I

    .line 95
    iput v0, p0, Landroid/view/ChoreographerInjectorStubImpl;->mDelayCachingTimes:I

    .line 96
    iput-boolean v0, p0, Landroid/view/ChoreographerInjectorStubImpl;->mDoFrameOpt:Z

    .line 101
    new-instance v1, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Landroid/view/ChoreographerInjectorStubImpl;->mCurrentViewRootImpl:Ljava/lang/ref/WeakReference;

    .line 102
    const-class v1, Landroid/view/ViewRootImpl;

    new-array v2, v0, [Ljava/lang/Class;

    .line 103
    const-string v3, "needSurface"

    invoke-static {v1, v3, v2}, Lmiui/util/ReflectionUtils;->tryFindMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ChoreographerInjectorStubImpl;->mNeedSurfaceMethod:Ljava/lang/reflect/Method;

    .line 104
    if-nez v1, :cond_22

    .line 105
    sput-boolean v0, Landroid/view/ChoreographerInjectorStubImpl;->sDisableBgAnimate:Z

    .line 107
    :cond_22
    return-void
.end method

.method public static blacklist onSurfaceCountChanged(Z)V
    .registers 4
    .param p0, "increase"    # Z

    .line 149
    sget v0, Landroid/view/ChoreographerInjectorStubImpl;->sSurfaceCount:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_8

    .line 150
    sput v1, Landroid/view/ChoreographerInjectorStubImpl;->sSurfaceCount:I

    .line 152
    :cond_8
    const/4 v0, 0x1

    if-eqz p0, :cond_11

    .line 153
    sget v2, Landroid/view/ChoreographerInjectorStubImpl;->sSurfaceCount:I

    add-int/2addr v2, v0

    sput v2, Landroid/view/ChoreographerInjectorStubImpl;->sSurfaceCount:I

    goto :goto_16

    .line 155
    :cond_11
    sget v2, Landroid/view/ChoreographerInjectorStubImpl;->sSurfaceCount:I

    sub-int/2addr v2, v0

    sput v2, Landroid/view/ChoreographerInjectorStubImpl;->sSurfaceCount:I

    .line 158
    :goto_16
    sget v2, Landroid/view/ChoreographerInjectorStubImpl;->sSurfaceCount:I

    if-lez v2, :cond_1b

    move v1, v0

    :cond_1b
    sput-boolean v1, Landroid/view/ChoreographerInjectorStubImpl;->sHasSurface:Z

    .line 159
    return-void
.end method

.method public static blacklist resetSurfaceCount()V
    .registers 1

    .line 162
    sget v0, Landroid/view/ChoreographerInjectorStubImpl;->sSurfaceCount:I

    if-nez v0, :cond_7

    .line 163
    const/4 v0, -0x1

    sput v0, Landroid/view/ChoreographerInjectorStubImpl;->sSurfaceCount:I

    .line 165
    :cond_7
    return-void
.end method

.method public static blacklist updateViewRootImpl(Landroid/view/ViewRootImpl;)V
    .registers 2
    .param p0, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    .line 110
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroid/view/ChoreographerInjectorStubImpl;->mCurrentViewRootImpl:Ljava/lang/ref/WeakReference;

    .line 111
    return-void
.end method


# virtual methods
.method public blacklist cacheBufferIfNeeded(Landroid/os/Handler;JJJ)V
    .registers 23
    .param p1, "frameHandler"    # Landroid/os/Handler;
    .param p2, "vsyncTimeNanos"    # J
    .param p4, "doFrameEndNanos"    # J
    .param p6, "vsyncPeriodNanos"    # J

    .line 170
    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p6

    sget-boolean v4, Landroid/view/ChoreographerInjectorStubImpl;->CACHE_BUFFER_ENABLE:Z

    if-eqz v4, :cond_af

    iget v4, v0, Landroid/view/ChoreographerInjectorStubImpl;->mBufferNumPlanningToCache:I

    if-lez v4, :cond_af

    .line 172
    iget v4, v0, Landroid/view/ChoreographerInjectorStubImpl;->mDelayCachingTimes:I

    const/4 v5, 0x1

    const-string v6, "ChoreographerInjector"

    if-lez v4, :cond_36

    .line 173
    sget-boolean v4, Landroid/view/ChoreographerInjectorStubImpl;->CACHE_BUFFER_DEBUG:Z

    if-eqz v4, :cond_30

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping: mDelayCachingTimes="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v0, Landroid/view/ChoreographerInjectorStubImpl;->mDelayCachingTimes:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_30
    iget v4, v0, Landroid/view/ChoreographerInjectorStubImpl;->mDelayCachingTimes:I

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/view/ChoreographerInjectorStubImpl;->mDelayCachingTimes:I

    .line 177
    return-void

    .line 180
    :cond_36
    sub-long v7, p4, p2

    .line 182
    .local v7, "duration":J
    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-ltz v4, :cond_a2

    long-to-double v9, v7

    long-to-double v11, v2

    const-wide/high16 v13, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v11, v13

    cmpl-double v4, v9, v11

    if-ltz v4, :cond_48

    goto :goto_a2

    .line 190
    :cond_48
    const/16 v4, 0x64

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-nez v9, :cond_98

    .line 192
    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 193
    .local v4, "msg":Landroid/os/Message;
    invoke-virtual {v4, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 194
    long-to-double v9, v7

    long-to-double v11, v2

    const-wide/high16 v13, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v11, v13

    cmpg-double v9, v9, v11

    if-gez v9, :cond_6f

    .line 195
    long-to-double v9, v2

    const-wide/high16 v11, 0x3fc0000000000000L    # 0.125

    mul-double/2addr v9, v11

    const-wide v11, 0x412e848000000000L    # 1000000.0

    div-double/2addr v9, v11

    double-to-long v9, v9

    .line 197
    .local v9, "delayCacheMillis":J
    invoke-virtual {v1, v4, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 198
    .end local v9    # "delayCacheMillis":J
    goto :goto_76

    .line 199
    :cond_6f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-virtual {v1, v4, v9, v10}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 201
    :goto_76
    sget-boolean v9, Landroid/view/ChoreographerInjectorStubImpl;->CACHE_BUFFER_DEBUG:Z

    if-eqz v9, :cond_92

    .line 202
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Caching-Buffer: mBufferNumPlanningToCache="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/view/ChoreographerInjectorStubImpl;->mBufferNumPlanningToCache:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_92
    iget v6, v0, Landroid/view/ChoreographerInjectorStubImpl;->mBufferNumPlanningToCache:I

    sub-int/2addr v6, v5

    iput v6, v0, Landroid/view/ChoreographerInjectorStubImpl;->mBufferNumPlanningToCache:I

    .line 206
    .end local v4    # "msg":Landroid/os/Message;
    goto :goto_af

    .line 207
    :cond_98
    sget-boolean v4, Landroid/view/ChoreographerInjectorStubImpl;->CACHE_BUFFER_DEBUG:Z

    if-eqz v4, :cond_af

    .line 208
    const-string v4, "MSG_CACHE_BUFFER_DO_FRAME already exists"

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_af

    .line 183
    :cond_a2
    :goto_a2
    const/4 v4, 0x0

    iput v4, v0, Landroid/view/ChoreographerInjectorStubImpl;->mBufferNumPlanningToCache:I

    .line 184
    sget-boolean v4, Landroid/view/ChoreographerInjectorStubImpl;->CACHE_BUFFER_DEBUG:Z

    if-eqz v4, :cond_ae

    .line 185
    const-string v4, "Stop Caching: last doFrameDuration too long"

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_ae
    return-void

    .line 212
    .end local v7    # "duration":J
    :cond_af
    :goto_af
    return-void
.end method

.method public blacklist creatDynamicBufferInfo(Landroid/graphics/BLASTBufferQueue;Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub$SetFrameDroppedCallback;)Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub;
    .registers 4
    .param p1, "blastBufferQueue"    # Landroid/graphics/BLASTBufferQueue;
    .param p2, "callback"    # Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub$SetFrameDroppedCallback;

    .line 239
    sget v0, Landroid/view/ChoreographerInjectorStubImpl;->MAX_NUM_TO_ADJUST:I

    if-nez v0, :cond_6

    .line 240
    const/4 v0, 0x0

    return-object v0

    .line 241
    :cond_6
    new-instance v0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;-><init>(Landroid/view/ChoreographerInjectorStubImpl;Landroid/graphics/BLASTBufferQueue;Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub$SetFrameDroppedCallback;)V

    return-object v0
.end method

.method public blacklist disableAnimation(I)Z
    .registers 7
    .param p1, "callbackType"    # I

    .line 115
    sget-boolean v0, Landroid/view/ChoreographerInjectorStubImpl;->sDisableBgAnimate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    sget v0, Landroid/view/ChoreographerInjectorStubImpl;->sSurfaceCount:I

    if-gtz v0, :cond_44

    .line 116
    invoke-static {}, Landroid/app/ActivityThreadImpl;->isDisablePackage()Z

    move-result v0

    if-eqz v0, :cond_44

    sget-boolean v0, Landroid/view/ChoreographerInjectorStubImpl;->sCtsModeEnable:Z

    if-nez v0, :cond_44

    .line 118
    sget-object v0, Landroid/view/ChoreographerInjectorStubImpl;->mCurrentViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 119
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_1e

    .line 120
    return v1

    .line 125
    :cond_1e
    :try_start_1e
    iget-object v2, p0, Landroid/view/ChoreographerInjectorStubImpl;->mNeedSurfaceMethod:Ljava/lang/reflect/Method;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2c} :catch_3f

    .line 129
    .local v2, "needSurface":Z
    nop

    .line 131
    if-eqz v2, :cond_30

    .line 132
    return v1

    .line 135
    :cond_30
    const/4 v3, 0x1

    if-ne p1, v3, :cond_34

    .line 136
    return v3

    .line 139
    :cond_34
    const/4 v4, 0x3

    if-ne p1, v4, :cond_44

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v4, :cond_44

    .line 140
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 141
    return v3

    .line 126
    .end local v2    # "needSurface":Z
    :catch_3f
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    return v1

    .line 145
    .end local v0    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_44
    return v1
.end method

.method public blacklist isDoFrameOptEnabled()Z
    .registers 2

    .line 224
    iget-boolean v0, p0, Landroid/view/ChoreographerInjectorStubImpl;->mDoFrameOpt:Z

    return v0
.end method

.method public blacklist setIsPageScroll(Z)V
    .registers 3
    .param p1, "isPageScroll"    # Z

    .line 229
    iget-object v0, p0, Landroid/view/ChoreographerInjectorStubImpl;->mCurrentDynamicBufferInfo:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 230
    .local v0, "dynamicBufferInfo":Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;
    :goto_c
    if-eqz v0, :cond_11

    .line 231
    invoke-virtual {v0, p1}, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->setIsPageScroll(Z)V

    .line 233
    :cond_11
    return-void
.end method

.method public blacklist windowFocusChanged(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "hasFocus"    # Z

    .line 215
    const-string v0, "com.miui.notes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p2, :cond_e

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ChoreographerInjectorStubImpl;->mDoFrameOpt:Z

    goto :goto_11

    .line 218
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ChoreographerInjectorStubImpl;->mDoFrameOpt:Z

    .line 220
    :goto_11
    return-void
.end method
