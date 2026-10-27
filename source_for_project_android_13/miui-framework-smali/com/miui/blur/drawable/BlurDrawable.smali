.class public Lcom/miui/blur/drawable/BlurDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BlurDrawable.java"


# static fields
.field public static final blacklist MIUI_BLUR_DEFAULT_DARK:I = 0x6

.field public static final blacklist MIUI_BLUR_DEFAULT_LIGHT:I = 0x2

.field public static final blacklist MIUI_BLUR_EXTRA_THIN_DARK:I = 0x4

.field public static final blacklist MIUI_BLUR_EXTRA_THIN_LIGHT:I = 0x0

.field public static final blacklist MIUI_BLUR_HEAVY_DARK:I = 0x7

.field public static final blacklist MIUI_BLUR_HEAVY_LIGHT:I = 0x3

.field public static final blacklist MIUI_BLUR_THIN_DARK:I = 0x5

.field public static final blacklist MIUI_BLUR_THIN_LIGHT:I = 0x1

.field public static final blacklist MIUI_FULL_SCREEN_BLUR_DEFAULT_DARK:I = 0xb

.field public static final blacklist MIUI_FULL_SCREEN_BLUR_DEFAULT_LIGHT:I = 0x9

.field public static final blacklist MIUI_FULL_SCREEN_BLUR_THIN_DARK:I = 0xa

.field public static final blacklist MIUI_FULL_SCREEN_BLUR_THIN_LIGHT:I = 0x8

.field private static final blacklist TAG:Ljava/lang/String; = "BlurDrawable"

.field private static final blacklist mainThreadHandler:Landroid/os/Handler;


# instance fields
.field private blacklist mAlpha:I

.field private blacklist mBlurEnabled:Z

.field private blacklist mBlurHeight:I

.field private blacklist mBlurWidth:I

.field private blacklist mFunctor:J

.field private blacklist mMethodCallDrawGLFunction:Ljava/lang/reflect/Method;

.field private blacklist mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/blur/drawable/BlurDrawable;->mainThreadHandler:Landroid/os/Handler;

    .line 48
    :try_start_b
    const-string v0, "miuiblur"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    .line 51
    goto :goto_19

    .line 49
    :catchall_11
    move-exception v0

    .line 50
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "BlurDrawable"

    const-string v2, "Failed to load miuiblur library"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_19
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 66
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mFunctor:J

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mBlurEnabled:Z

    .line 39
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mBlurWidth:I

    .line 40
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mBlurHeight:I

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mPaint:Landroid/graphics/Paint;

    .line 68
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 70
    iget v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mBlurWidth:I

    iget v1, p0, Lcom/miui/blur/drawable/BlurDrawable;->mBlurHeight:I

    invoke-static {v0, v1}, Lcom/miui/blur/drawable/BlurDrawable;->nCreateNativeFunctor(II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mFunctor:J

    .line 71
    invoke-direct {p0}, Lcom/miui/blur/drawable/BlurDrawable;->initMethod()V

    .line 73
    :cond_3c
    return-void
.end method

.method private blacklist drawBlurBack(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mMethodCallDrawGLFunction:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 87
    iget-object v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mMethodCallDrawGLFunction:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/miui/blur/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    .line 90
    goto :goto_1f

    .line 88
    :catchall_17
    move-exception v0

    .line 89
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "BlurDrawable"

    const-string v2, "canvas function [callDrawGLFunction()] error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1f
    return-void
.end method

.method private blacklist initMethod()V
    .registers 6

    .line 96
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_30

    const/16 v1, 0x1c

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "callDrawGLFunction2"

    if-le v0, v1, :cond_1d

    .line 97
    :try_start_a
    const-string v0, "android.graphics.RecordingCanvas"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 98
    .local v0, "canvasClazz":Ljava/lang/Class;
    new-array v1, v3, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/blur/drawable/BlurDrawable;->mMethodCallDrawGLFunction:Ljava/lang/reflect/Method;

    goto :goto_2f

    .line 100
    .end local v0    # "canvasClazz":Ljava/lang/Class;
    :cond_1d
    const-string v0, "android.view.DisplayListCanvas"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 101
    .restart local v0    # "canvasClazz":Ljava/lang/Class;
    new-array v1, v3, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/blur/drawable/BlurDrawable;->mMethodCallDrawGLFunction:Ljava/lang/reflect/Method;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2f} :catch_30

    .line 105
    .end local v0    # "canvasClazz":Ljava/lang/Class;
    :goto_2f
    goto :goto_38

    .line 103
    :catch_30
    move-exception v0

    .line 104
    .local v0, "t":Ljava/lang/Exception;
    const-string v1, "BlurDrawable"

    const-string v2, "canvas function [callDrawGLFunction()] error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    .end local v0    # "t":Ljava/lang/Exception;
    :goto_38
    return-void
.end method

.method private blacklist invalidateOnMainThread()V
    .registers 4

    .line 286
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 287
    .local v0, "currentLooper":Landroid/os/Looper;
    if-eqz v0, :cond_15

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_15

    .line 295
    :cond_11
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->invalidateSelf()V

    goto :goto_1f

    .line 288
    :cond_15
    :goto_15
    sget-object v1, Lcom/miui/blur/drawable/BlurDrawable;->mainThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/blur/drawable/BlurDrawable$1;

    invoke-direct {v2, p0}, Lcom/miui/blur/drawable/BlurDrawable$1;-><init>(Lcom/miui/blur/drawable/BlurDrawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 297
    :goto_1f
    return-void
.end method

.method public static native blacklist nAddMixColor(JII)V
.end method

.method public static native blacklist nClearMixColor(J)V
.end method

.method public static native blacklist nCreateNativeFunctor(II)J
.end method

.method public static native blacklist nDeleteNativeFunctor(J)J
.end method

.method public static native blacklist nEnableBlur(JZ)V
.end method

.method public static native blacklist nNeedUpdateBounds(JZ)V
.end method

.method public static native blacklist nSetAlpha(JF)V
.end method

.method public static native blacklist nSetBlurCornerRadii(J[F)V
.end method

.method public static native blacklist nSetBlurMode(JI)V
.end method

.method public static native blacklist nSetBlurRatio(JF)V
.end method

.method public static native blacklist nSetMixColor(JII)V
.end method


# virtual methods
.method public blacklist addMixColor(I)V
    .registers 5
    .param p1, "color"    # I

    .line 148
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 149
    iget-wide v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mFunctor:J

    const/4 v2, 0x4

    invoke-static {v0, v1, p1, v2}, Lcom/miui/blur/drawable/BlurDrawable;->nAddMixColor(JII)V

    .line 150
    invoke-direct {p0}, Lcom/miui/blur/drawable/BlurDrawable;->invalidateOnMainThread()V

    .line 152
    :cond_f
    return-void
.end method

.method public blacklist addMixColor(II)V
    .registers 5
    .param p1, "mode"    # I
    .param p2, "color"    # I

    .line 155
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 156
    iget-wide v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1, p2, p1}, Lcom/miui/blur/drawable/BlurDrawable;->nAddMixColor(JII)V

    .line 157
    invoke-direct {p0}, Lcom/miui/blur/drawable/BlurDrawable;->invalidateOnMainThread()V

    .line 159
    :cond_e
    return-void
.end method

.method public blacklist clearMixColor()V
    .registers 3

    .line 162
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 163
    iget-wide v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1}, Lcom/miui/blur/drawable/BlurDrawable;->nClearMixColor(J)V

    .line 164
    invoke-direct {p0}, Lcom/miui/blur/drawable/BlurDrawable;->invalidateOnMainThread()V

    .line 166
    :cond_e
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mBlurEnabled:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 78
    invoke-direct {p0, p1}, Lcom/miui/blur/drawable/BlurDrawable;->drawBlurBack(Landroid/graphics/Canvas;)V

    goto :goto_1d

    .line 80
    :cond_14
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/blur/drawable/BlurDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 82
    :goto_1d
    return-void
.end method

.method public blacklist enableBlur(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 189
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 190
    iput-boolean p1, p0, Lcom/miui/blur/drawable/BlurDrawable;->mBlurEnabled:Z

    .line 191
    iget-wide v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1, p1}, Lcom/miui/blur/drawable/BlurDrawable;->nEnableBlur(JZ)V

    .line 193
    :cond_d
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 127
    iget-wide v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1}, Lcom/miui/blur/drawable/BlurDrawable;->nDeleteNativeFunctor(J)J

    .line 129
    :cond_b
    const-string v0, "BlurDrawable"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 131
    return-void
.end method

.method public whitelist getOpacity()I
    .registers 2

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSupportBlur()Z
    .registers 3

    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-le v0, v1, :cond_8

    .line 197
    const/4 v0, 0x1

    return v0

    .line 199
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist needUpdateBounds(Z)V
    .registers 4
    .param p1, "needUpdate"    # Z

    .line 183
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 184
    iget-wide v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1, p1}, Lcom/miui/blur/drawable/BlurDrawable;->nNeedUpdateBounds(JZ)V

    .line 186
    :cond_b
    return-void
.end method

.method public whitelist setAlpha(I)V
    .registers 6
    .param p1, "alpha"    # I

    .line 110
    iput p1, p0, Lcom/miui/blur/drawable/BlurDrawable;->mAlpha:I

    .line 111
    iget-wide v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mFunctor:J

    int-to-float v2, p1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/miui/blur/drawable/BlurDrawable;->nSetAlpha(JF)V

    .line 112
    return-void
.end method

.method public blacklist setBlurCornerRadii([F)V
    .registers 4
    .param p1, "radio"    # [F

    .line 176
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 177
    iget-wide v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1, p1}, Lcom/miui/blur/drawable/BlurDrawable;->nSetBlurCornerRadii(J[F)V

    .line 178
    invoke-direct {p0}, Lcom/miui/blur/drawable/BlurDrawable;->invalidateOnMainThread()V

    .line 180
    :cond_e
    return-void
.end method

.method public blacklist setBlurMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 134
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 135
    iget-wide v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1, p1}, Lcom/miui/blur/drawable/BlurDrawable;->nSetBlurMode(JI)V

    .line 136
    invoke-direct {p0}, Lcom/miui/blur/drawable/BlurDrawable;->invalidateOnMainThread()V

    .line 138
    :cond_e
    return-void
.end method

.method public blacklist setBlurRatio(F)V
    .registers 4
    .param p1, "ratio"    # F

    .line 169
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 170
    iget-wide v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1, p1}, Lcom/miui/blur/drawable/BlurDrawable;->nSetBlurRatio(JF)V

    .line 171
    invoke-direct {p0}, Lcom/miui/blur/drawable/BlurDrawable;->invalidateOnMainThread()V

    .line 173
    :cond_e
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 4
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 116
    const-string v0, "BlurDrawable"

    const-string v1, "nothing in setColorFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method public blacklist setMiuiBlurType(I)V
    .registers 9
    .param p1, "type"    # I

    .line 203
    const v0, 0x3f666666    # 0.9f

    const v1, 0x3f333333    # 0.7f

    const v2, 0x3ecccccd    # 0.4f

    const/16 v3, 0x13

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x12

    const/16 v6, 0x1d

    packed-switch p1, :pswitch_data_14a

    goto/16 :goto_149

    .line 275
    :pswitch_16
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->clearMixColor()V

    .line 276
    const-string v0, "#80a3a3a3"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    .line 277
    const-string v0, "#66000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v6, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    .line 278
    invoke-virtual {p0, v4}, Lcom/miui/blur/drawable/BlurDrawable;->setBlurRatio(F)V

    .line 279
    goto/16 :goto_149

    .line 268
    :pswitch_30
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->clearMixColor()V

    .line 269
    const-string v0, "#52b4b4b4"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    .line 270
    const-string v0, "#26000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v6, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    .line 271
    invoke-virtual {p0, v4}, Lcom/miui/blur/drawable/BlurDrawable;->setBlurRatio(F)V

    .line 272
    goto/16 :goto_149

    .line 261
    :pswitch_4a
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->clearMixColor()V

    .line 262
    const-string v0, "#85666666"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v5, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    .line 263
    const-string v0, "#66ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v6, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    .line 264
    invoke-virtual {p0, v4}, Lcom/miui/blur/drawable/BlurDrawable;->setBlurRatio(F)V

    .line 265
    goto/16 :goto_149

    .line 254
    :pswitch_64
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->clearMixColor()V

    .line 255
    const-string v0, "#61424242"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v5, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    .line 256
    const-string v0, "#1effffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v6, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    .line 257
    invoke-virtual {p0, v4}, Lcom/miui/blur/drawable/BlurDrawable;->setBlurRatio(F)V

    .line 258
    goto/16 :goto_149

    .line 247
    :pswitch_7e
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->clearMixColor()V

    .line 248
    const-string v0, "#7f5c5c5c"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    .line 249
    const-string v0, "#bf1f1f1f"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v6, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    .line 250
    invoke-virtual {p0, v4}, Lcom/miui/blur/drawable/BlurDrawable;->setBlurRatio(F)V

    .line 251
    goto/16 :goto_149

    .line 241
    :pswitch_98
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->clearMixColor()V

    .line 242
    const-string v1, "#75737373"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    .line 243
    const-string v1, "#8a262626"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v6, v1}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    .line 244
    invoke-virtual {p0, v0}, Lcom/miui/blur/drawable/BlurDrawable;->setBlurRatio(F)V

    .line 245
    goto/16 :goto_149

    .line 235
    :pswitch_b2
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->clearMixColor()V

    .line 236
    const-string v0, "#618a8a8a"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    .line 237
    const-string v0, "#4d424242"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v6, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    .line 238
    invoke-virtual {p0, v1}, Lcom/miui/blur/drawable/BlurDrawable;->setBlurRatio(F)V

    .line 239
    goto/16 :goto_149

    .line 229
    :pswitch_cc
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->clearMixColor()V

    .line 230
    const-string v0, "#4dadadad"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    .line 231
    const-string v0, "#33616161"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v6, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    .line 232
    invoke-virtual {p0, v2}, Lcom/miui/blur/drawable/BlurDrawable;->setBlurRatio(F)V

    .line 233
    goto :goto_149

    .line 223
    :pswitch_e5
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->clearMixColor()V

    .line 224
    const-string v0, "#a66b6b6b"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v5, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    .line 225
    const-string v0, "#ccf5f5f5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v6, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    .line 226
    invoke-virtual {p0, v4}, Lcom/miui/blur/drawable/BlurDrawable;->setBlurRatio(F)V

    .line 227
    goto :goto_149

    .line 217
    :pswitch_fe
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->clearMixColor()V

    .line 218
    const-string v1, "#8f606060"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v5, v1}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    .line 219
    const-string v1, "#a3f2f2f2"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v6, v1}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    .line 220
    invoke-virtual {p0, v0}, Lcom/miui/blur/drawable/BlurDrawable;->setBlurRatio(F)V

    .line 221
    goto :goto_149

    .line 211
    :pswitch_117
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->clearMixColor()V

    .line 212
    const-string v0, "#84585858"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v5, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    .line 213
    const-string v0, "#40e3e3e3"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v6, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    .line 214
    invoke-virtual {p0, v1}, Lcom/miui/blur/drawable/BlurDrawable;->setBlurRatio(F)V

    .line 215
    goto :goto_149

    .line 205
    :pswitch_130
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->clearMixColor()V

    .line 206
    const-string v0, "#7f4d4d4d"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v5, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    .line 207
    const-string v0, "#26d9d9d9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v6, v0}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    .line 208
    invoke-virtual {p0, v2}, Lcom/miui/blur/drawable/BlurDrawable;->setBlurRatio(F)V

    .line 209
    nop

    .line 283
    :goto_149
    return-void

    :pswitch_data_14a
    .packed-switch 0x0
        :pswitch_130
        :pswitch_117
        :pswitch_fe
        :pswitch_e5
        :pswitch_cc
        :pswitch_b2
        :pswitch_98
        :pswitch_7e
        :pswitch_64
        :pswitch_4a
        :pswitch_30
        :pswitch_16
    .end packed-switch
.end method

.method public blacklist setMixColor(II)V
    .registers 5
    .param p1, "mode"    # I
    .param p2, "color"    # I

    .line 141
    invoke-virtual {p0}, Lcom/miui/blur/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 142
    iget-wide v0, p0, Lcom/miui/blur/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1, p2, p1}, Lcom/miui/blur/drawable/BlurDrawable;->nSetMixColor(JII)V

    .line 143
    invoke-direct {p0}, Lcom/miui/blur/drawable/BlurDrawable;->invalidateOnMainThread()V

    .line 145
    :cond_e
    return-void
.end method
