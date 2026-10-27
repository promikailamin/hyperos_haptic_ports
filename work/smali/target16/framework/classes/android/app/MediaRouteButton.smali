.class public Landroid/app/MediaRouteButton;
.super Landroid/view/View;
.source "MediaRouteButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/MediaRouteButton$MediaRouterCallback;
    }
.end annotation


# static fields
.field private static final greylist-max-o ACTIVATED_STATE_SET:[I

.field private static final greylist-max-o CHECKED_STATE_SET:[I


# instance fields
.field private greylist-max-o mAttachedToWindow:Z

.field private final greylist-max-o mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

.field private greylist-max-o mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

.field private greylist-max-o mIsConnecting:Z

.field private greylist-max-o mMinHeight:I

.field private greylist-max-o mMinWidth:I

.field private greylist-max-o mRemoteActive:Z

.field private greylist-max-o mRemoteIndicator:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mRouteTypes:I

.field private final greylist-max-o mRouter:Landroid/media/MediaRouter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mrefreshRoute(Landroid/app/MediaRouteButton;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/MediaRouteButton;->refreshRoute()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/app/MediaRouteButton;->CHECKED_STATE_SET:[I

    .line 59
    const v0, 0x10102fe

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/app/MediaRouteButton;->ACTIVATED_STATE_SET:[I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 68
    const v0, 0x10103ad

    invoke-direct {p0, p1, p2, v0}, Landroid/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 79
    const-string/jumbo v0, "media_router"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    .line 80
    new-instance v0, Landroid/app/MediaRouteButton$MediaRouterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/MediaRouteButton$MediaRouterCallback;-><init>(Landroid/app/MediaRouteButton;Landroid/app/MediaRouteButton-IA;)V

    iput-object v0, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    .line 82
    sget-object v0, Lcom/android/internal/R$styleable;->MediaRouteButton:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 84
    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/app/MediaRouteButton;->setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroid/app/MediaRouteButton;->mMinWidth:I

    .line 88
    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/app/MediaRouteButton;->mMinHeight:I

    .line 90
    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    .line 93
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    invoke-virtual {p0, p3}, Landroid/app/MediaRouteButton;->setClickable(Z)V

    .line 97
    invoke-virtual {p0, p2}, Landroid/app/MediaRouteButton;->setRouteTypes(I)V

    .line 98
    return-void
.end method

.method private greylist-max-o getActivity()Landroid/app/Activity;
    .registers 3

    .line 165
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 166
    :goto_4
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_16

    .line 167
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_f

    .line 168
    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 170
    :cond_f
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_4

    .line 172
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The MediaRouteButton\'s Context is not an Activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o refreshRoute()V
    .registers 7

    .line 343
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_18

    iget v1, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v1

    if-eqz v1, :cond_18

    move v1, v3

    goto :goto_19

    :cond_18
    move v1, v2

    .line 345
    :goto_19
    if-eqz v1, :cond_23

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_23

    move v0, v3

    goto :goto_24

    :cond_23
    move v0, v2

    .line 346
    :goto_24
    nop

    .line 347
    iget-boolean v4, p0, Landroid/app/MediaRouteButton;->mRemoteActive:Z

    if-eq v4, v1, :cond_2c

    .line 348
    iput-boolean v1, p0, Landroid/app/MediaRouteButton;->mRemoteActive:Z

    .line 349
    move v2, v3

    .line 351
    :cond_2c
    iget-boolean v4, p0, Landroid/app/MediaRouteButton;->mIsConnecting:Z

    if-eq v4, v0, :cond_33

    .line 352
    iput-boolean v0, p0, Landroid/app/MediaRouteButton;->mIsConnecting:Z

    .line 353
    move v2, v3

    .line 356
    :cond_33
    if-eqz v2, :cond_38

    .line 357
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->refreshDrawableState()V

    .line 359
    :cond_38
    iget-boolean v4, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v4, :cond_47

    .line 360
    iget-object v4, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    iget v5, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    invoke-virtual {v4, v5, v3}, Landroid/media/MediaRouter;->isRouteAvailable(II)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/app/MediaRouteButton;->setEnabled(Z)V

    .line 363
    :cond_47
    iget-object v4, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_84

    iget-object v4, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 364
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v4, v4, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v4, :cond_84

    .line 365
    iget-object v4, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    .line 366
    iget-boolean v5, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v5, :cond_6f

    .line 367
    if-nez v2, :cond_65

    if-eqz v0, :cond_84

    :cond_65
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_84

    .line 368
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_84

    .line 370
    :cond_6f
    if-eqz v1, :cond_84

    if-nez v0, :cond_84

    .line 373
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 374
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 376
    :cond_7c
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    .line 379
    :cond_84
    :goto_84
    return-void
.end method

.method private greylist-max-o setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 219
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    .line 220
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 221
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/app/MediaRouteButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    :cond_f
    iput-object p1, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 224
    if-eqz p1, :cond_2a

    .line 225
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 226
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 227
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    move v0, v1

    :goto_27
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 230
    :cond_2a
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->refreshDrawableState()V

    .line 231
    return-void
.end method


# virtual methods
.method protected whitelist drawableStateChanged()V
    .registers 3

    .line 209
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 211
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 212
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 213
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 214
    invoke-virtual {p0, v0}, Landroid/app/MediaRouteButton;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    :cond_1a
    return-void
.end method

.method public whitelist getRouteTypes()I
    .registers 2

    .line 107
    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    return v0
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .registers 2

    .line 240
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 242
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 243
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 245
    :cond_c
    return-void
.end method

.method public whitelist onAttachedToWindow()V
    .registers 5

    .line 258
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    .line 261
    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    if-eqz v0, :cond_15

    .line 262
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    iget v1, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    iget-object v2, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 265
    :cond_15
    invoke-direct {p0}, Landroid/app/MediaRouteButton;->refreshRoute()V

    .line 266
    return-void
.end method

.method protected whitelist onCreateDrawableState(I)[I
    .registers 3

    .line 193
    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 199
    iget-boolean v0, p0, Landroid/app/MediaRouteButton;->mIsConnecting:Z

    if-eqz v0, :cond_10

    .line 200
    sget-object v0, Landroid/app/MediaRouteButton;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Landroid/app/MediaRouteButton;->mergeDrawableStates([I[I)[I

    goto :goto_19

    .line 201
    :cond_10
    iget-boolean v0, p0, Landroid/app/MediaRouteButton;->mRemoteActive:Z

    if-eqz v0, :cond_19

    .line 202
    sget-object v0, Landroid/app/MediaRouteButton;->ACTIVATED_STATE_SET:[I

    invoke-static {p1, v0}, Landroid/app/MediaRouteButton;->mergeDrawableStates([I[I)[I

    .line 204
    :cond_19
    :goto_19
    return-object p1
.end method

.method public whitelist onDetachedFromWindow()V
    .registers 3

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    .line 271
    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    if-eqz v0, :cond_e

    .line 272
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 275
    :cond_e
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 276
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 323
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 325
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_8

    return-void

    .line 327
    :cond_8
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingLeft()I

    move-result v0

    .line 328
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 329
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingTop()I

    move-result v2

    .line 330
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 332
    iget-object v4, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 333
    iget-object v5, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 334
    sub-int/2addr v1, v0

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 335
    sub-int/2addr v3, v2

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 337
    iget-object v1, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    add-int/2addr v4, v0

    add-int/2addr v5, v2

    invoke-virtual {v1, v0, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 339
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 340
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 9

    .line 280
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 281
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 282
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 283
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 285
    iget v2, p0, Landroid/app/MediaRouteButton;->mMinWidth:I

    iget-object v3, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    if-eqz v3, :cond_28

    .line 286
    iget-object v3, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingLeft()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_29

    :cond_28
    move v3, v4

    .line 285
    :goto_29
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 287
    iget v3, p0, Landroid/app/MediaRouteButton;->mMinHeight:I

    iget-object v5, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_44

    .line 288
    iget-object v4, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_45

    :cond_44
    nop

    .line 287
    :goto_45
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 291
    sparse-switch p1, :sswitch_data_66

    .line 300
    move v0, v2

    goto :goto_55

    .line 293
    :sswitch_4e
    nop

    .line 294
    goto :goto_55

    .line 296
    :sswitch_50
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 297
    nop

    .line 305
    :goto_55
    sparse-switch p2, :sswitch_data_70

    .line 314
    move v1, v3

    goto :goto_61

    .line 307
    :sswitch_5a
    nop

    .line 308
    goto :goto_61

    .line 310
    :sswitch_5c
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 311
    nop

    .line 318
    :goto_61
    invoke-virtual {p0, v0, v1}, Landroid/app/MediaRouteButton;->setMeasuredDimension(II)V

    .line 319
    return-void

    nop

    :sswitch_data_66
    .sparse-switch
        -0x80000000 -> :sswitch_50
        0x40000000 -> :sswitch_4e
    .end sparse-switch

    :sswitch_data_70
    .sparse-switch
        -0x80000000 -> :sswitch_5c
        0x40000000 -> :sswitch_5a
    .end sparse-switch
.end method

.method public whitelist performClick()Z
    .registers 4

    .line 184
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    .line 185
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 186
    invoke-virtual {p0, v1}, Landroid/app/MediaRouteButton;->playSoundEffect(I)V

    .line 188
    :cond_a
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->showDialogInternal()Z

    move-result v2

    if-nez v2, :cond_12

    if-eqz v0, :cond_13

    :cond_12
    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method public whitelist setContentDescription(Ljava/lang/CharSequence;)V
    .registers 2

    .line 177
    invoke-super {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 178
    invoke-virtual {p0, p1}, Landroid/app/MediaRouteButton;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 179
    return-void
.end method

.method public whitelist setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 134
    iput-object p1, p0, Landroid/app/MediaRouteButton;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 135
    return-void
.end method

.method public whitelist setRouteTypes(I)V
    .registers 5

    .line 117
    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    if-eq v0, p1, :cond_27

    .line 118
    iget-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v0, :cond_13

    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    if-eqz v0, :cond_13

    .line 119
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 122
    :cond_13
    iput p1, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    .line 124
    iget-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v0, :cond_24

    if-eqz p1, :cond_24

    .line 125
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 129
    :cond_24
    invoke-direct {p0}, Landroid/app/MediaRouteButton;->refreshRoute()V

    .line 131
    :cond_27
    return-void
.end method

.method public whitelist setVisibility(I)V
    .registers 4

    .line 249
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object p1, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_16

    .line 252
    iget-object p1, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 254
    :cond_16
    return-void
.end method

.method public whitelist showDialog()V
    .registers 1

    .line 150
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->showDialogInternal()Z

    .line 151
    return-void
.end method

.method greylist-max-o showDialogInternal()Z
    .registers 5

    .line 154
    iget-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 155
    return v1

    .line 158
    :cond_6
    invoke-direct {p0}, Landroid/app/MediaRouteButton;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v2, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    iget-object v3, p0, Landroid/app/MediaRouteButton;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-static {v0, v2, v3}, Lcom/android/internal/app/MediaRouteDialogPresenter;->showDialogFragment(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/app/DialogFragment;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method protected whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 235
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method
