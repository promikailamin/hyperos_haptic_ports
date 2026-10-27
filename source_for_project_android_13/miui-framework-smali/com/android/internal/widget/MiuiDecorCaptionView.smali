.class public Lcom/android/internal/widget/MiuiDecorCaptionView;
.super Lcom/android/internal/widget/DecorCaptionView;
.source "MiuiDecorCaptionView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final blacklist BOTTOM_DOTS_BLACK:I = 0x33949494

.field private static final blacklist BOTTOM_IMAGE_BLACK_FOCUS:I = -0x756b6b6c

.field private static final blacklist BOTTOM_IMAGE_BLACK_NORMAL:I = 0x33949494

.field private static final blacklist LAYER_COUNTS:I = 0x8

.field private static final blacklist SHOW_BORDER_REMINDER:I = 0x1

.field private static final blacklist SHOW_NOTHING:I = 0x3

.field private static final blacklist SHOW_NOTHING_DELAY:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "MiuiDecorCaptionView"

.field private static final blacklist UPDATE_CAPTION_COLOR:I = 0x4


# instance fields
.field private blacklist mBorder:Landroid/graphics/drawable/Drawable;

.field private blacklist mBottomCaption:Landroid/view/View;

.field private final blacklist mBottomCaptionRect:Landroid/graphics/Rect;

.field private blacklist mBottomImage:Landroid/graphics/drawable/Drawable;

.field private blacklist mBottomLeftDotImage:Landroid/graphics/drawable/Drawable;

.field private blacklist mBottomRightDotImage:Landroid/graphics/drawable/Drawable;

.field private blacklist mBottomUsed:I

.field private blacklist mCheckForDragging:Z

.field private blacklist mContent:Landroid/view/View;

.field private blacklist mDownNumbers:I

.field private blacklist mDragSlop:I

.field private blacklist mDragging:Z

.field private blacklist mEnableSmallBufferForFGPin:Z

.field private blacklist mFirstDownTime:J

.field private blacklist mGestureDetector:Landroid/view/GestureDetector;

.field private blacklist mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

.field private blacklist mMiuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

.field private blacklist mOpenCloseTipView:Lcom/android/internal/widget/OpenCloseTipView;

.field private blacklist mOverlayWithAppContent:Z

.field private blacklist mOwner:Lcom/android/internal/policy/PhoneWindow;

.field private blacklist mReminderScale:F

.field private blacklist mResizeBorder:Landroid/graphics/drawable/Drawable;

.field private blacklist mResizeBorderReminderAlpha:I

.field private blacklist mResizeBorderReminderShowing:Z

.field private blacklist mResizeReminder:Landroid/graphics/drawable/Drawable;

.field private blacklist mResizeZoomInAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mResizeZoomOutAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mResizeZoomOutDelayAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mScale:F

.field private blacklist mScaledBottomImage:Landroid/graphics/drawable/Drawable;

.field private blacklist mScaledBottomLeftDotImage:Landroid/graphics/drawable/Drawable;

.field private blacklist mScaledBottomRightDotImage:Landroid/graphics/drawable/Drawable;

.field private blacklist mScaledResizeReminder:Landroid/graphics/drawable/Drawable;

.field private blacklist mScaledTopImage:Landroid/graphics/drawable/Drawable;

.field private blacklist mShow:Z

.field private blacklist mTopCaption:Landroid/view/View;

.field private final blacklist mTopCaptionRect:Landroid/graphics/Rect;

.field private blacklist mTopImage:Landroid/graphics/drawable/Drawable;

.field private final blacklist mTopMoveRect:Landroid/graphics/Rect;

.field private blacklist mTopMoveRegion:Landroid/view/View;

.field private blacklist mTouchDispatchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTouchDownX:I

.field private blacklist mTouchDownY:I

.field private blacklist mUpdateCaptionColorAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mainHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBorder(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBorder:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBottomCaption(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBottomCaptionRect(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaptionRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBottomImage(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomImage:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMiuiFreeFormStackInfo(Lcom/android/internal/widget/MiuiDecorCaptionView;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMiuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOpenCloseTipView(Lcom/android/internal/widget/MiuiDecorCaptionView;)Lcom/android/internal/widget/OpenCloseTipView;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOpenCloseTipView:Lcom/android/internal/widget/OpenCloseTipView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOwner(Lcom/android/internal/widget/MiuiDecorCaptionView;)Lcom/android/internal/policy/PhoneWindow;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResizeBorder(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeBorder:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScaledResizeReminder(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledResizeReminder:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTopCaption(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTopImage(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopImage:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmResizeBorderReminderAlpha(Lcom/android/internal/widget/MiuiDecorCaptionView;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeBorderReminderAlpha:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmResizeBorderReminderShowing(Lcom/android/internal/widget/MiuiDecorCaptionView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeBorderReminderShowing:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshowGuideTipView(Lcom/android/internal/widget/MiuiDecorCaptionView;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->showGuideTipView()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mshowTipView(Lcom/android/internal/widget/MiuiDecorCaptionView;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->showTipView()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mstartAlphaAnimating(Lcom/android/internal/widget/MiuiDecorCaptionView;IJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/MiuiDecorCaptionView;->startAlphaAnimating(IJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateLayerDrawables(Lcom/android/internal/widget/MiuiDecorCaptionView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->updateLayerDrawables()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 180
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;-><init>(Landroid/content/Context;)V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    .line 117
    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragging:Z

    .line 130
    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOverlayWithAppContent:Z

    .line 132
    iput v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDownNumbers:I

    .line 133
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFirstDownTime:J

    .line 136
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    .line 140
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaptionRect:Landroid/graphics/Rect;

    .line 141
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopMoveRect:Landroid/graphics/Rect;

    .line 142
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaptionRect:Landroid/graphics/Rect;

    .line 172
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    .line 176
    iput v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomUsed:I

    .line 177
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_small_buffer_for_foreground_pin"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_48

    move v0, v2

    :cond_48
    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mEnableSmallBufferForFGPin:Z

    .line 181
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->init(Landroid/content/Context;)V

    .line 182
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/DecorCaptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    .line 117
    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragging:Z

    .line 130
    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOverlayWithAppContent:Z

    .line 132
    iput v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDownNumbers:I

    .line 133
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFirstDownTime:J

    .line 136
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    .line 140
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaptionRect:Landroid/graphics/Rect;

    .line 141
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopMoveRect:Landroid/graphics/Rect;

    .line 142
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaptionRect:Landroid/graphics/Rect;

    .line 172
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    .line 176
    iput v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomUsed:I

    .line 177
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_small_buffer_for_foreground_pin"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_48

    move v0, v2

    :cond_48
    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mEnableSmallBufferForFGPin:Z

    .line 186
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->init(Landroid/content/Context;)V

    .line 187
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 190
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/DecorCaptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    .line 117
    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragging:Z

    .line 130
    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOverlayWithAppContent:Z

    .line 132
    iput v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDownNumbers:I

    .line 133
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFirstDownTime:J

    .line 136
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    .line 140
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaptionRect:Landroid/graphics/Rect;

    .line 141
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopMoveRect:Landroid/graphics/Rect;

    .line 142
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaptionRect:Landroid/graphics/Rect;

    .line 172
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    .line 176
    iput v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomUsed:I

    .line 177
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_small_buffer_for_foreground_pin"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_48

    move v0, v2

    :cond_48
    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mEnableSmallBufferForFGPin:Z

    .line 191
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->init(Landroid/content/Context;)V

    .line 192
    return-void
.end method

.method private blacklist dipToPx(F)F
    .registers 4
    .param p1, "dip"    # F

    .line 304
    nop

    .line 305
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 304
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private static blacklist drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1199
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1200
    .local v0, "w":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 1202
    .local v1, "h":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_14

    .line 1203
    :cond_12
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_14
    nop

    .line 1204
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1206
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1207
    .local v4, "canvas":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1208
    invoke-virtual {p0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1210
    return-object v3
.end method

.method private blacklist hideCaptionBarView()V
    .registers 4

    .line 868
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 869
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 870
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 871
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledBottomImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 872
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledBottomLeftDotImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_25

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledBottomRightDotImage:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_25

    .line 873
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 874
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledBottomRightDotImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 876
    :cond_25
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->requestLayout()V

    .line 877
    return-void
.end method

.method private blacklist hideCaptionView()V
    .registers 4

    .line 843
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->hideTipView()V

    .line 844
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 845
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 846
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledTopImage:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 847
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledBottomImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 848
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledBottomLeftDotImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2a

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledBottomRightDotImage:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2a

    .line 849
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 850
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledBottomRightDotImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 852
    :cond_2a
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->requestLayout()V

    .line 853
    return-void
.end method

.method private blacklist inFreeformWindowingMode()Z
    .registers 3

    .line 1039
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1040
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getWindowMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 1039
    :goto_14
    return v0
.end method

.method private blacklist init(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 218
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragSlop:I

    .line 219
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 220
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mainHandler:Landroid/os/Handler;

    .line 221
    return-void
.end method

.method private blacklist isFillingScreen()Z
    .registers 3

    .line 613
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getWindowSystemUiVisibility()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getSystemUiVisibility()I

    move-result v1

    or-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xa05

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private blacklist passedSlop(II)Z
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 456
    iget v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDownX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragSlop:I

    if-gt v0, v1, :cond_1b

    iget v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDownY:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragSlop:I

    if-le v0, v1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method private blacklist scaledDrawable(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/BitmapDrawable;
    .registers 9
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "scale"    # F

    .line 1190
    invoke-static {p1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1191
    .local v0, "oldBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1192
    .local v1, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 1193
    .local v2, "height":I
    int-to-float v3, v1

    div-float/2addr v3, p2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v5, v2

    div-float/2addr v5, p2

    add-float/2addr v5, v4

    float-to-int v4, v5

    const/4 v5, 0x1

    invoke-static {v0, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1195
    .local v3, "newbmp":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v4
.end method

.method private blacklist showCaptionView()V
    .registers 4

    .line 856
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 857
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 858
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledTopImage:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 859
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledBottomImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 860
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledBottomLeftDotImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_27

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledBottomRightDotImage:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_27

    .line 861
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 862
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledBottomRightDotImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 864
    :cond_27
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->requestLayout()V

    .line 865
    return-void
.end method

.method private blacklist showGuideTipView()Z
    .registers 4

    .line 814
    invoke-static {p0}, Lmiui/app/MiuiFreeFormManager;->getFreeFormStackInfoByView(Landroid/view/View;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMiuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 815
    const/4 v1, 0x0

    const-string v2, "MiuiDecorCaptionView"

    if-eqz v0, :cond_23

    .line 816
    invoke-virtual {v0}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isInFreeFormMode()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 817
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/widget/MiuiDecorCaptionView$8;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$8;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 831
    const/4 v0, 0x1

    return v0

    .line 833
    :cond_1d
    const-string v0, "showGuideTipViewshow guidetipview failed because current mode of this stack is not freeform"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    return v1

    .line 837
    :cond_23
    const-string v0, "showGuideTipViewshow guidetipview failed if info of this stack doesn\'t exist"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    return v1
.end method

.method private blacklist showTipView()Z
    .registers 5

    .line 782
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getFirstUseTipConfirmTimes()I

    move-result v0

    .line 783
    .local v0, "confirmTimes":I
    const/4 v1, 0x0

    const-string v2, "MiuiDecorCaptionView"

    const/4 v3, 0x2

    if-lt v0, v3, :cond_10

    .line 784
    const-string v3, "showTipView confirmTimes >= 2, start tipview failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    return v1

    .line 789
    :cond_10
    invoke-static {p0}, Lmiui/app/MiuiFreeFormManager;->getFreeFormStackInfoByView(Landroid/view/View;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMiuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 790
    if-eqz v3, :cond_33

    .line 791
    invoke-virtual {v3}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isInFreeFormMode()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 792
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/widget/MiuiDecorCaptionView$7;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$7;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 799
    const/4 v1, 0x1

    return v1

    .line 801
    :cond_2a
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->hideTipView()V

    .line 802
    const-string v3, "showTipViewshow tipview failed because current mode of this stack is not freeform"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    return v1

    .line 806
    :cond_33
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->hideTipView()V

    .line 807
    const-string v3, "showTipViewshow tipview failed if info of this stack doesn\'t exist"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    return v1
.end method

.method private blacklist startAlphaAnimating(IJ)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "delayTime"    # J

    .line 1051
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->startAlphaAnimating(IJZ)V

    .line 1052
    return-void
.end method

.method private blacklist startAlphaAnimating(IJZ)V
    .registers 11
    .param p1, "type"    # I
    .param p2, "delayTime"    # J
    .param p4, "isFocus"    # Z

    .line 1055
    const/4 v0, 0x1

    const-wide/16 v1, 0x12c

    const/4 v3, 0x2

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_108

    goto/16 :goto_107

    .line 1168
    :pswitch_a
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mUpdateCaptionColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1169
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mUpdateCaptionColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1171
    :cond_19
    new-array v0, v3, [F

    fill-array-data v0, :array_114

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mUpdateCaptionColorAnimator:Landroid/animation/ValueAnimator;

    .line 1172
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1173
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mUpdateCaptionColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/util/MiuiMultiWindowUtils$QuadraticEaseOutInterpolator;

    invoke-direct {v1}, Landroid/util/MiuiMultiWindowUtils$QuadraticEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1175
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mUpdateCaptionColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/widget/MiuiDecorCaptionView$16;

    invoke-direct {v1, p0, p4}, Lcom/android/internal/widget/MiuiDecorCaptionView$16;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1183
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mUpdateCaptionColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_107

    .line 1129
    :pswitch_42
    new-array v3, v3, [I

    iget v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeBorderReminderAlpha:I

    aput v5, v3, v4

    aput v4, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomOutAnimator:Landroid/animation/ValueAnimator;

    .line 1130
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1131
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/util/MiuiMultiWindowUtils$QuadraticEaseOutInterpolator;

    invoke-direct {v1}, Landroid/util/MiuiMultiWindowUtils$QuadraticEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1133
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/widget/MiuiDecorCaptionView$14;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$14;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1143
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/widget/MiuiDecorCaptionView$15;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$15;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1162
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomOutDelayAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_80

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1163
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomOutDelayAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1165
    :cond_80
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1166
    goto/16 :goto_107

    .line 1093
    :pswitch_87
    new-array v3, v3, [I

    iget v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeBorderReminderAlpha:I

    aput v5, v3, v4

    aput v4, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomOutDelayAnimator:Landroid/animation/ValueAnimator;

    .line 1094
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1095
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomOutDelayAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1096
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomOutDelayAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/util/MiuiMultiWindowUtils$QuadraticEaseOutInterpolator;

    invoke-direct {v1}, Landroid/util/MiuiMultiWindowUtils$QuadraticEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1097
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomOutDelayAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/widget/MiuiDecorCaptionView$12;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$12;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1107
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomOutDelayAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/widget/MiuiDecorCaptionView$13;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$13;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1126
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomOutDelayAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1127
    goto :goto_107

    .line 1057
    :pswitch_c1
    new-array v3, v3, [I

    iget v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeBorderReminderAlpha:I

    aput v5, v3, v4

    const/16 v4, 0xff

    aput v4, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomInAnimator:Landroid/animation/ValueAnimator;

    .line 1058
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1059
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/util/MiuiMultiWindowUtils$QuadraticEaseOutInterpolator;

    invoke-direct {v1}, Landroid/util/MiuiMultiWindowUtils$QuadraticEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1060
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/widget/MiuiDecorCaptionView$10;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$10;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1069
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/widget/MiuiDecorCaptionView$11;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$11;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1087
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomOutDelayAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_101

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_101

    .line 1088
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomOutDelayAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1090
    :cond_101
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1091
    nop

    .line 1187
    :goto_107
    return-void

    :pswitch_data_108
    .packed-switch 0x1
        :pswitch_c1
        :pswitch_87
        :pswitch_42
        :pswitch_a
    .end packed-switch

    :array_114
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist updateBottomUsed()I
    .registers 4

    .line 201
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2a

    .line 202
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/util/MiuiMultiWindowUtils;->multiFreeFormSupported(Landroid/content/Context;)Z

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v0, :cond_20

    .line 203
    const/high16 v0, 0x42340000    # 45.0f

    iget v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomUsed:I

    goto :goto_2d

    .line 205
    :cond_20
    const/high16 v0, 0x42580000    # 54.0f

    iget v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomUsed:I

    goto :goto_2d

    .line 208
    :cond_2a
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomUsed:I

    .line 210
    :goto_2d
    iget v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomUsed:I

    return v0
.end method

.method private blacklist updateCaptionVisibility(Z)V
    .registers 11
    .param p1, "needUpdateColor"    # Z

    .line 623
    invoke-static {p0}, Lmiui/app/MiuiFreeFormManager;->getFreeFormStackInfoByView(Landroid/view/View;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMiuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 624
    if-eqz v0, :cond_37

    .line 625
    invoke-virtual {v0}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isInFreeFormMode()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 626
    iget v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    .line 627
    .local v0, "preScale":F
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMiuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    iget v1, v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    iput v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    .line 628
    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1d

    .line 630
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->requestLayout()V

    .line 632
    :cond_1d
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->updateLayerDrawables()V

    .line 633
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->showCaptionView()V

    .line 634
    .end local v0    # "preScale":F
    goto :goto_44

    :cond_24
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMiuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    invoke-virtual {v0}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isInMiniFreeFormMode()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 635
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->updateLayerDrawables()V

    .line 636
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->hideCaptionBarView()V

    goto :goto_44

    .line 638
    :cond_33
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->hideCaptionView()V

    goto :goto_44

    .line 641
    :cond_37
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 642
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->hideCaptionView()V

    .line 644
    :goto_44
    if-eqz p1, :cond_59

    .line 645
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledTopImage:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledBottomImage:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBorder:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-static/range {v2 .. v8}, Landroid/util/MiuiMultiWindowAdapter;->updateCaptionColor(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/android/internal/policy/PhoneWindow;)V

    .line 648
    :cond_59
    return-void
.end method

.method private blacklist updateLayerDrawables()V
    .registers 23

    .line 651
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 652
    .local v1, "invisible":Z
    iget v3, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomUsed:I

    .line 653
    .local v3, "preBottomUsed":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->updateBottomUsed()I

    .line 654
    iget v4, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomUsed:I

    if-eq v3, v4, :cond_1b

    iget-object v4, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mainHandler:Landroid/os/Handler;

    if-eqz v4, :cond_1b

    .line 655
    new-instance v5, Lcom/android/internal/widget/MiuiDecorCaptionView$6;

    invoke-direct {v5, v0}, Lcom/android/internal/widget/MiuiDecorCaptionView$6;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 663
    :cond_1b
    iget-object v4, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMiuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    if-eqz v4, :cond_363

    if-nez v1, :cond_363

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->inFreeformWindowingMode()Z

    move-result v4

    if-nez v4, :cond_29

    goto/16 :goto_363

    .line 664
    :cond_29
    iget-object v4, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v4, :cond_362

    .line 665
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/util/MiuiMultiWindowUtils;->multiFreeFormSupported(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 666
    iget-object v4, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 667
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11080087

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_5a

    .line 668
    :cond_4f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11080089

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_5a
    iput-object v4, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopImage:Landroid/graphics/drawable/Drawable;

    .line 669
    iget-object v4, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_74

    .line 670
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1108008b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_7f

    .line 671
    :cond_74
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1108008d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_7f
    iput-object v4, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomImage:Landroid/graphics/drawable/Drawable;

    goto :goto_cc

    .line 673
    :cond_82
    iget-object v4, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 674
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11080086

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_a5

    .line 675
    :cond_9a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11080088

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_a5
    iput-object v4, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopImage:Landroid/graphics/drawable/Drawable;

    .line 676
    iget-object v4, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_bf

    .line 677
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1108008a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_ca

    .line 678
    :cond_bf
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1108008c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_ca
    iput-object v4, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomImage:Landroid/graphics/drawable/Drawable;

    .line 680
    :goto_cc
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/util/MiuiMultiWindowUtils;->isPadScreen(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_ed

    .line 681
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1108008e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomLeftDotImage:Landroid/graphics/drawable/Drawable;

    .line 682
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomRightDotImage:Landroid/graphics/drawable/Drawable;

    .line 684
    :cond_ed
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    .line 685
    .local v4, "oritation":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ne v4, v7, :cond_105

    move v8, v2

    goto :goto_106

    :cond_105
    move v8, v6

    :goto_106
    iget-object v9, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMiuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    if-eqz v9, :cond_111

    iget-boolean v9, v9, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isNormalFreeForm:Z

    if-eqz v9, :cond_10f

    goto :goto_111

    :cond_10f
    move v9, v6

    goto :goto_112

    :cond_111
    :goto_111
    move v9, v2

    :goto_112
    iget-object v10, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContext:Landroid/content/Context;

    .line 686
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 685
    invoke-static {v5, v8, v9, v10}, Landroid/util/MiuiMultiWindowUtils;->getOriFreeformScale(Landroid/content/Context;ZZLjava/lang/String;)F

    move-result v5

    .line 687
    .local v5, "scale":F
    iget v8, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mReminderScale:F

    cmpl-float v8, v5, v8

    if-eqz v8, :cond_12f

    .line 688
    iput v5, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mReminderScale:F

    .line 689
    iget-object v8, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeReminder:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v8, v5}, Lcom/android/internal/widget/MiuiDecorCaptionView;->scaledDrawable(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledResizeReminder:Landroid/graphics/drawable/Drawable;

    .line 690
    invoke-virtual {v8, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 692
    :cond_12f
    if-ne v4, v7, :cond_16c

    iget-object v8, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomImage:Landroid/graphics/drawable/Drawable;

    instance-of v8, v8, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v8, :cond_16c

    .line 693
    iget-object v8, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->hasWindowFocus()Z

    move-result v8

    const v9, 0x33949494

    if-eqz v8, :cond_151

    .line 694
    iget-object v8, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomImage:Landroid/graphics/drawable/Drawable;

    check-cast v8, Landroid/graphics/drawable/GradientDrawable;

    const v10, -0x756b6b6c

    invoke-virtual {v8, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_158

    .line 696
    :cond_151
    iget-object v8, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomImage:Landroid/graphics/drawable/Drawable;

    check-cast v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 698
    :goto_158
    iget-object v8, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomLeftDotImage:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_16c

    iget-object v10, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomRightDotImage:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_16c

    .line 699
    check-cast v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 700
    iget-object v8, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomRightDotImage:Landroid/graphics/drawable/Drawable;

    check-cast v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 703
    :cond_16c
    iget-object v8, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBorder:Landroid/graphics/drawable/Drawable;

    check-cast v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x110700fc

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    iget v10, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    div-float/2addr v9, v10

    float-to-int v9, v9

    .line 704
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x11060072

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 703
    invoke-virtual {v8, v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 705
    iget-object v8, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBorder:Landroid/graphics/drawable/Drawable;

    check-cast v8, Landroid/graphics/drawable/GradientDrawable;

    iget-object v9, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMiuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    iget v9, v9, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeformCornerRadius:F

    iget v10, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    div-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 706
    iget-object v8, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopImage:Landroid/graphics/drawable/Drawable;

    iget v9, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    invoke-direct {v0, v8, v9}, Lcom/android/internal/widget/MiuiDecorCaptionView;->scaledDrawable(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledTopImage:Landroid/graphics/drawable/Drawable;

    .line 707
    iget-object v8, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomImage:Landroid/graphics/drawable/Drawable;

    iget v9, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    invoke-direct {v0, v8, v9}, Lcom/android/internal/widget/MiuiDecorCaptionView;->scaledDrawable(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledBottomImage:Landroid/graphics/drawable/Drawable;

    .line 708
    iget-object v8, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomLeftDotImage:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_1e3

    iget-object v9, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomRightDotImage:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_1e3

    .line 709
    iget v9, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    invoke-direct {v0, v8, v9}, Lcom/android/internal/widget/MiuiDecorCaptionView;->scaledDrawable(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledBottomLeftDotImage:Landroid/graphics/drawable/Drawable;

    .line 710
    iget-object v8, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomRightDotImage:Landroid/graphics/drawable/Drawable;

    iget v9, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    invoke-direct {v0, v8, v9}, Lcom/android/internal/widget/MiuiDecorCaptionView;->scaledDrawable(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledBottomRightDotImage:Landroid/graphics/drawable/Drawable;

    .line 711
    iget-object v8, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMiuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    invoke-virtual {v8}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isInFreeFormMode()Z

    move-result v8

    if-eqz v8, :cond_1d3

    goto :goto_221

    .line 712
    :cond_1d3
    iget-object v8, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMiuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    invoke-virtual {v8}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isInMiniFreeFormMode()Z

    move-result v8

    if-eqz v8, :cond_1df

    .line 713
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->hideCaptionBarView()V

    goto :goto_221

    .line 715
    :cond_1df
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->hideCaptionView()V

    goto :goto_221

    .line 718
    :cond_1e3
    iget-object v8, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMiuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    invoke-virtual {v8}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isInFreeFormMode()Z

    move-result v8

    if-eqz v8, :cond_212

    .line 719
    const v8, 0x41bc6666    # 23.55f

    sget v9, Landroid/util/MiuiMultiWindowUtils;->STABLE_DENSITY:F

    mul-float/2addr v9, v8

    .line 721
    .local v9, "cornerRadius":F
    sget-boolean v8, Landroid/util/GMSDownscaleStub;->sIsMiuiWindowDownScale:Z

    if-eqz v8, :cond_202

    .line 722
    invoke-static {}, Landroid/util/GMSDownscaleStub;->getInstance()Landroid/util/GMSDownscaleStub;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/GMSDownscaleStub;->getCompatInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v8

    .line 723
    .local v8, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    if-eqz v8, :cond_202

    .line 724
    iget v10, v8, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    mul-float/2addr v9, v10

    .line 727
    .end local v8    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    :cond_202
    iget-object v8, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeBorder:Landroid/graphics/drawable/Drawable;

    check-cast v8, Landroid/graphics/drawable/GradientDrawable;

    const v10, 0x3fb4fdf4    # 1.414f

    div-float v10, v9, v10

    iget v11, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    div-float/2addr v10, v11

    invoke-virtual {v8, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 728
    .end local v9    # "cornerRadius":F
    goto :goto_221

    :cond_212
    iget-object v8, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMiuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    invoke-virtual {v8}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isInMiniFreeFormMode()Z

    move-result v8

    if-eqz v8, :cond_21e

    .line 729
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->hideCaptionBarView()V

    goto :goto_221

    .line 731
    :cond_21e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->hideCaptionView()V

    .line 734
    :goto_221
    iget-object v8, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 735
    const/16 v8, 0x8

    new-array v8, v8, [Landroid/graphics/drawable/Drawable;

    .line 736
    .local v8, "layers":[Landroid/graphics/drawable/Drawable;
    new-instance v9, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v9, v8}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v9, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 737
    iget-object v10, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v6, v10}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 738
    iget-object v9, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    iget-object v10, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledResizeReminder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v2, v10}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 739
    iget-object v9, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    iget-object v10, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v7, v10}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 740
    iget-object v9, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    iget-object v10, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledTopImage:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x3

    invoke-virtual {v9, v11, v10}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 741
    iget-object v9, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    iget-object v10, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledBottomImage:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x4

    invoke-virtual {v9, v12, v10}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 742
    iget-object v9, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    iget-object v10, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledBottomLeftDotImage:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x5

    invoke-virtual {v9, v13, v10}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 743
    iget-object v9, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    iget-object v10, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledBottomRightDotImage:Landroid/graphics/drawable/Drawable;

    const/4 v14, 0x6

    invoke-virtual {v9, v14, v10}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 744
    iget-object v9, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    iget-object v10, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const/4 v15, 0x7

    invoke-virtual {v9, v15, v10}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 745
    iget-object v9, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/16 v10, 0x51

    invoke-virtual {v9, v2, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 746
    iget-object v2, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v9, 0x42980000    # 76.0f

    iget v15, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    div-float/2addr v9, v15

    float-to-int v9, v9

    move-object/from16 v16, v2

    move/from16 v21, v9

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 747
    iget-object v2, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/16 v9, 0x31

    invoke-virtual {v2, v11, v9}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 748
    iget-object v2, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/util/MiuiMultiWindowUtils;->getTopCaptionViewHeightForClient(Landroid/content/Context;)I

    move-result v9

    div-int/2addr v9, v7

    iget-object v15, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledTopImage:Landroid/graphics/drawable/Drawable;

    .line 749
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    div-int/2addr v15, v7

    sub-int/2addr v9, v15

    .line 748
    invoke-virtual {v2, v11, v9}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetTop(II)V

    .line 750
    iget-object v2, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, v12, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 751
    iget-object v2, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/16 v9, 0x53

    invoke-virtual {v2, v13, v9}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 752
    iget-object v2, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/16 v9, 0x55

    invoke-virtual {v2, v14, v9}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 754
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/util/MiuiMultiWindowUtils;->multiFreeFormSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_300

    .line 755
    const/high16 v2, 0x42340000    # 45.0f

    iget v9, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    div-float/2addr v2, v9

    float-to-int v2, v2

    .line 756
    .local v2, "bottomCaptionHeight":I
    iget-object v10, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/high16 v11, 0x41e00000    # 28.0f

    div-float v9, v11, v9

    float-to-int v9, v9

    invoke-virtual {v10, v13, v9}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetLeft(II)V

    .line 757
    iget-object v9, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    iget v10, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    div-float/2addr v11, v10

    float-to-int v10, v11

    invoke-virtual {v9, v14, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetRight(II)V

    .line 758
    iget-object v9, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    iget v10, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    const/high16 v11, 0x41b00000    # 22.0f

    div-float v10, v11, v10

    float-to-int v10, v10

    invoke-virtual {v9, v13, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetBottom(II)V

    .line 759
    iget-object v9, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    iget v10, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    div-float/2addr v11, v10

    float-to-int v10, v11

    invoke-virtual {v9, v14, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetBottom(II)V

    goto :goto_306

    .line 761
    .end local v2    # "bottomCaptionHeight":I
    :cond_300
    const/high16 v2, 0x42580000    # 54.0f

    iget v9, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    div-float/2addr v2, v9

    float-to-int v2, v2

    .line 763
    .restart local v2    # "bottomCaptionHeight":I
    :goto_306
    sget-boolean v9, Landroid/util/GMSDownscaleStub;->sIsMiuiWindowDownScale:Z

    if-eqz v9, :cond_319

    .line 764
    invoke-static {}, Landroid/util/GMSDownscaleStub;->getInstance()Landroid/util/GMSDownscaleStub;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/GMSDownscaleStub;->getCompatInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v9

    .line 765
    .local v9, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    if-eqz v9, :cond_319

    .line 766
    int-to-float v10, v2

    iget v11, v9, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    mul-float/2addr v10, v11

    float-to-int v2, v10

    .line 769
    .end local v9    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    :cond_319
    iget-object v9, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    div-int/lit8 v10, v2, 0x2

    iget-object v11, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledBottomImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    div-int/2addr v11, v7

    sub-int/2addr v10, v11

    invoke-virtual {v9, v12, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetBottom(II)V

    .line 770
    iget-object v7, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 771
    .local v7, "lastForeground":Landroid/graphics/drawable/Drawable;
    instance-of v9, v7, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v9, :cond_351

    move-object v9, v7

    check-cast v9, Landroid/graphics/drawable/LayerDrawable;

    .line 772
    invoke-virtual {v9, v6}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v9, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeBorder:Landroid/graphics/drawable/Drawable;

    if-eq v6, v9, :cond_343

    const/4 v10, 0x7

    goto :goto_352

    .line 775
    :cond_343
    iget-object v6, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    move-object v9, v7

    check-cast v9, Landroid/graphics/drawable/LayerDrawable;

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v10, v9}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_357

    .line 771
    :cond_351
    const/4 v10, 0x7

    .line 773
    :goto_352
    iget-object v6, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v6, v10, v7}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 777
    :goto_357
    iget-object v6, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v6

    iget-object v9, v0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v6, v9}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 779
    .end local v2    # "bottomCaptionHeight":I
    .end local v4    # "oritation":I
    .end local v5    # "scale":F
    .end local v7    # "lastForeground":Landroid/graphics/drawable/Drawable;
    .end local v8    # "layers":[Landroid/graphics/drawable/Drawable;
    :cond_362
    return-void

    .line 663
    :cond_363
    :goto_363
    return-void
.end method


# virtual methods
.method public whitelist addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 482
    const/4 v0, 0x4

    if-ge p2, v0, :cond_10

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getChildCount()I

    move-result v1

    if-ge v1, v0, :cond_10

    .line 487
    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p3}, Lcom/android/internal/widget/DecorCaptionView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 488
    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    .line 489
    return-void

    .line 483
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MiuiDecorCaptionView can only handle 1 client view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addViewWithoutAttached(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "preventRequestLayout"    # Z

    .line 494
    const/4 v0, 0x4

    if-ge p2, v0, :cond_16

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getChildCount()I

    move-result v1

    if-ge v1, v0, :cond_16

    .line 499
    invoke-static {p0}, Lcom/miui/internal/os/MiuiHooks;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/os/MiuiHooks$IViewGroup;

    .line 500
    .local v0, "iviewGroup":Lcom/miui/internal/os/MiuiHooks$IViewGroup;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p3, v1}, Lcom/miui/internal/os/MiuiHooks$IViewGroup;->addViewWithoutAttached(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 502
    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    .line 503
    return-void

    .line 495
    .end local v0    # "iviewGroup":Lcom/miui/internal/os/MiuiHooks$IViewGroup;
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MiuiDecorCaptionView can only handle 1 client view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 446
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/DecorCaptionView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 447
    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    .line 448
    return-void
.end method

.method public blacklist buildTouchDispatchChildList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 420
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 421
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    :cond_f
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_18

    .line 424
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_18
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    if-eqz v0, :cond_21

    .line 427
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    :cond_21
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOpenCloseTipView:Lcom/android/internal/widget/OpenCloseTipView;

    if-eqz v0, :cond_2a

    .line 430
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_2a
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 928
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return v0
.end method

.method public whitelist detachViewFromParent(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 437
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->hideCaptionView()V

    .line 438
    invoke-super {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->detachViewFromParent(Landroid/view/View;)V

    .line 439
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    if-ne v0, p1, :cond_d

    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    .line 442
    :cond_d
    return-void
.end method

.method public blacklist dispatchFreeFormStackModeChanged(ILmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V
    .registers 9
    .param p1, "action"    # I
    .param p2, "stackInfo"    # Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchFreeFormStackModeChanged action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stackInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiDecorCaptionView"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iput-object p2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMiuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 969
    iget-boolean v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mEnableSmallBufferForFGPin:Z

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 970
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    goto :goto_3c

    :cond_3b
    const/4 v0, 0x0

    .line 971
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    :goto_3c
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    packed-switch p1, :pswitch_data_c8

    :pswitch_44
    goto/16 :goto_c7

    .line 1014
    :pswitch_46
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->hideTipView()V

    goto/16 :goto_b7

    .line 1030
    :pswitch_4b
    if-eqz v0, :cond_c7

    iget-boolean v2, p2, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isForegroundPin:Z

    if-eqz v2, :cond_c7

    .line 1031
    const-string v2, "leave foregroundPin PixelScale to 1.0f"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->changePixelScale(F)V

    goto/16 :goto_c7

    .line 1023
    :pswitch_5b
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->hideTipView()V

    .line 1024
    if-eqz v0, :cond_c7

    iget-boolean v2, p2, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isForegroundPin:Z

    if-eqz v2, :cond_c7

    .line 1025
    const-string v2, "foregroundPin PixelScale to 0.1f"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->changePixelScale(F)V

    goto :goto_c7

    .line 988
    :pswitch_70
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/util/MiuiMultiWindowUtils;->isPadScreen(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7e

    .line 989
    const/4 v1, 0x3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/MiuiDecorCaptionView;->startAlphaAnimating(IJ)V

    .line 991
    :cond_7e
    iget v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    iget v2, p2, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_c7

    .line 992
    invoke-direct {p0, v4}, Lcom/android/internal/widget/MiuiDecorCaptionView;->updateCaptionVisibility(Z)V

    goto :goto_c7

    .line 982
    :pswitch_8a
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/util/MiuiMultiWindowUtils;->isPadScreen(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_c7

    .line 983
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->updateLayerDrawables()V

    .line 984
    invoke-direct {p0, v4, v2, v3}, Lcom/android/internal/widget/MiuiDecorCaptionView;->startAlphaAnimating(IJ)V

    goto :goto_c7

    .line 999
    :pswitch_9b
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->showCaptionView()V

    .line 1000
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/widget/MiuiDecorCaptionView$9;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$9;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1012
    goto :goto_c7

    .line 974
    :pswitch_a9
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->hideCaptionView()V

    .line 976
    if-eqz v0, :cond_c7

    .line 977
    const-string v2, "freeform to fullscreen PixelScale to 1.0f"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->changePixelScale(F)V

    goto :goto_c7

    .line 1017
    :goto_b7
    :pswitch_b7
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->hideTipView()V

    .line 1018
    const-string v2, "hide tipview because of gesture from freeform to minifreeform"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->hideCaptionBarView()V

    .line 1020
    goto :goto_c7

    .line 996
    :pswitch_c3
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->showCaptionView()V

    .line 997
    nop

    .line 1036
    :cond_c7
    :goto_c7
    return-void

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_c3
        :pswitch_b7
        :pswitch_b7
        :pswitch_a9
        :pswitch_9b
        :pswitch_a9
        :pswitch_8a
        :pswitch_70
        :pswitch_44
        :pswitch_5b
        :pswitch_5b
        :pswitch_44
        :pswitch_44
        :pswitch_4b
        :pswitch_44
        :pswitch_44
        :pswitch_46
    .end packed-switch
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 917
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 912
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 923
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public blacklist getBottomUsed()I
    .registers 2

    .line 198
    iget v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomUsed:I

    return v0
.end method

.method public blacklist getCaption()Landroid/view/View;
    .registers 2

    .line 907
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getCaptionHeight()I
    .registers 2

    .line 892
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->isCaptionShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getCaptionHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public blacklist getCaptionHeight(Landroid/content/Context;)I
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 896
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/util/MiuiMultiWindowAdapter;->getCaptionHeight(Lcom/android/internal/widget/MiuiDecorCaptionView;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public blacklist getDecorView()Lcom/android/internal/policy/DecorView;
    .registers 2

    .line 1044
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_b

    .line 1045
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DecorView;

    return-object v0

    .line 1047
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMainHandler()Landroid/os/Handler;
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public blacklist hideTipView()V
    .registers 2

    .line 310
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOpenCloseTipView:Lcom/android/internal/widget/OpenCloseTipView;

    invoke-virtual {v0}, Lcom/android/internal/widget/OpenCloseTipView;->hideTipView()V

    .line 311
    return-void
.end method

.method public blacklist isCaptionShowing()Z
    .registers 2

    .line 887
    iget-boolean v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    return v0
.end method

.method public blacklist notifyDownLocked(Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 375
    iget v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDownNumbers:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDownNumbers:I

    .line 376
    if-ne v0, v1, :cond_e

    .line 377
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFirstDownTime:J

    .line 379
    :cond_e
    iget v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDownNumbers:I

    const/4 v2, 0x2

    const-wide/16 v3, 0x5dc

    if-ne v0, v2, :cond_33

    .line 380
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFirstDownTime:J

    sub-long/2addr v5, v7

    .line 381
    .local v5, "during":J
    cmp-long v0, v5, v3

    if-lez v0, :cond_29

    .line 383
    iput v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDownNumbers:I

    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFirstDownTime:J

    goto :goto_33

    .line 386
    :cond_29
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/widget/MiuiDecorCaptionView$4;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$4;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 394
    .end local v5    # "during":J
    :cond_33
    :goto_33
    iget v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDownNumbers:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_71

    .line 395
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFirstDownTime:J

    sub-long/2addr v5, v7

    .line 396
    .restart local v5    # "during":J
    cmp-long v0, v5, v3

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-gez v0, :cond_6d

    .line 397
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/widget/MiuiDecorCaptionView$5;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$5;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 406
    iput v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDownNumbers:I

    .line 407
    iput-wide v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFirstDownTime:J

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDownLocked showTipWindow during="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiDecorCaptionView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return v4

    .line 411
    :cond_6d
    iput v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDownNumbers:I

    .line 412
    iput-wide v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFirstDownTime:J

    .line 414
    .end local v5    # "during":J
    :cond_71
    return v1
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 8

    .line 957
    invoke-super {p0}, Lcom/android/internal/widget/DecorCaptionView;->onAttachedToWindow()V

    .line 958
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopImage:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomImage:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBorder:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-static/range {v0 .. v6}, Landroid/util/MiuiMultiWindowAdapter;->updateCaptionColor(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/android/internal/policy/PhoneWindow;)V

    .line 960
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->invalidate()V

    .line 961
    return-void
.end method

.method public blacklist onConfigurationChanged(Z)V
    .registers 4
    .param p1, "show"    # Z

    .line 464
    iput-boolean p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    .line 465
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->updateCaptionVisibility(Z)V

    .line 467
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMiuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    if-eqz v0, :cond_20

    .line 468
    iget v0, v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_20

    .line 469
    iget v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    .line 470
    .local v0, "preScale":F
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMiuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    iget v1, v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    iput v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    .line 471
    cmpl-float v1, v0, v1

    if-eqz v1, :cond_20

    .line 473
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->requestLayout()V

    .line 477
    .end local v0    # "preScale":F
    :cond_20
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 1

    .line 952
    invoke-super {p0}, Lcom/android/internal/widget/DecorCaptionView;->onDetachedFromWindow()V

    .line 953
    return-void
.end method

.method public whitelist onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 933
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist onFinishInflate()V
    .registers 7

    .line 225
    invoke-super {p0}, Lcom/android/internal/widget/DecorCaptionView;->onFinishInflate()V

    .line 226
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/OpenCloseTipView;

    iput-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOpenCloseTipView:Lcom/android/internal/widget/OpenCloseTipView;

    .line 227
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    .line 228
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    .line 230
    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/internal/widget/MiuiDecorCaptionView$1;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$1;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 243
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/util/MiuiMultiWindowUtils;->multiFreeFormSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 244
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11080089

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopImage:Landroid/graphics/drawable/Drawable;

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1108008d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomImage:Landroid/graphics/drawable/Drawable;

    goto :goto_63

    .line 247
    :cond_49
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11080088

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopImage:Landroid/graphics/drawable/Drawable;

    .line 248
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1108008c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomImage:Landroid/graphics/drawable/Drawable;

    .line 250
    :goto_63
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/util/MiuiMultiWindowUtils;->isPadScreen(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1108008e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomLeftDotImage:Landroid/graphics/drawable/Drawable;

    .line 252
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomRightDotImage:Landroid/graphics/drawable/Drawable;

    .line 254
    :cond_84
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11080085

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBorder:Landroid/graphics/drawable/Drawable;

    .line 255
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11080093

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeBorder:Landroid/graphics/drawable/Drawable;

    .line 256
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11080094

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeReminder:Landroid/graphics/drawable/Drawable;

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 258
    .local v3, "oritation":I
    if-ne v3, v0, :cond_c9

    iget-object v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomImage:Landroid/graphics/drawable/Drawable;

    instance-of v5, v4, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v5, :cond_c9

    .line 259
    check-cast v4, Landroid/graphics/drawable/GradientDrawable;

    const v5, 0x33949494

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 261
    :cond_c9
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v4

    if-ne v3, v0, :cond_d1

    move v0, v1

    goto :goto_d2

    :cond_d1
    move v0, v2

    :goto_d2
    iget-object v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMiuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    if-eqz v5, :cond_dc

    iget-boolean v5, v5, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isNormalFreeForm:Z

    if-eqz v5, :cond_db

    goto :goto_dc

    :cond_db
    move v1, v2

    :cond_dc
    :goto_dc
    iget-object v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContext:Landroid/content/Context;

    .line 264
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 261
    invoke-static {v4, v0, v1, v5}, Landroid/util/MiuiMultiWindowUtils;->getOriFreeformScale(Landroid/content/Context;ZZLjava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    .line 265
    iput v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mReminderScale:F

    .line 266
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeReminder:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->scaledDrawable(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledResizeReminder:Landroid/graphics/drawable/Drawable;

    .line 267
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopImage:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->scaledDrawable(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledTopImage:Landroid/graphics/drawable/Drawable;

    .line 268
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomImage:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->scaledDrawable(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledBottomImage:Landroid/graphics/drawable/Drawable;

    .line 269
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomLeftDotImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_120

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomRightDotImage:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_120

    .line 270
    iget v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->scaledDrawable(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledBottomLeftDotImage:Landroid/graphics/drawable/Drawable;

    .line 271
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomRightDotImage:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->scaledDrawable(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledBottomRightDotImage:Landroid/graphics/drawable/Drawable;

    .line 273
    :cond_120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mResizeReminder.getIntrinsicWidth(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledResizeReminder:Landroid/graphics/drawable/Drawable;

    .line 274
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mResizeReminder.getIntrinsicHeight():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledResizeReminder:Landroid/graphics/drawable/Drawable;

    .line 275
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    const-string v1, "MiuiDecorCaptionView"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 277
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledResizeReminder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 278
    iput v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeBorderReminderAlpha:I

    .line 279
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->updateLayerDrawables()V

    .line 280
    return-void
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 506
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/DecorCaptionView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 507
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->updateLayerDrawables()V

    .line 508
    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 316
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 318
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2e

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaptionRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_2e

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaptionRect:Landroid/graphics/Rect;

    .line 319
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 320
    iget-boolean v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeBorderReminderShowing:Z

    if-eqz v2, :cond_2e

    .line 321
    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/widget/MiuiDecorCaptionView$3;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$3;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 329
    :cond_2e
    const/4 v2, 0x0

    return v2
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 13
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 558
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOpenCloseTipView:Lcom/android/internal/widget/OpenCloseTipView;

    invoke-virtual {v0}, Lcom/android/internal/widget/OpenCloseTipView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1c

    .line 559
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOpenCloseTipView:Lcom/android/internal/widget/OpenCloseTipView;

    invoke-virtual {v0}, Lcom/android/internal/widget/OpenCloseTipView;->getMeasuredHeight()I

    move-result v0

    .line 560
    .local v0, "tipHeight":I
    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOpenCloseTipView:Lcom/android/internal/widget/OpenCloseTipView;

    invoke-virtual {v3}, Lcom/android/internal/widget/OpenCloseTipView;->getMeasuredWidth()I

    move-result v3

    .line 562
    .local v3, "tipWidth":I
    iget-object v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOpenCloseTipView:Lcom/android/internal/widget/OpenCloseTipView;

    invoke-virtual {v4, v2, v2, v3, v0}, Lcom/android/internal/widget/OpenCloseTipView;->layout(IIII)V

    .line 565
    .end local v0    # "tipHeight":I
    .end local v3    # "tipWidth":I
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_44

    .line 566
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/util/MiuiMultiWindowUtils;->getTopCaptionViewHeightForClient(Landroid/content/Context;)I

    move-result v0

    .line 567
    .local v0, "topCaptionHeight":I
    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3, v2, v2, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 568
    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaptionRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 569
    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopMoveRegion:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopMoveRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    goto :goto_4f

    .line 571
    .end local v0    # "topCaptionHeight":I
    :cond_44
    const/4 v0, 0x0

    .line 572
    .restart local v0    # "topCaptionHeight":I
    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaptionRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 573
    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopMoveRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 576
    :goto_4f
    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v1, :cond_a1

    .line 577
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/util/MiuiMultiWindowUtils;->multiFreeFormSupported(Landroid/content/Context;)Z

    move-result v1

    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v1, :cond_6b

    .line 578
    const/high16 v1, 0x42340000    # 45.0f

    iget v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    .local v1, "bottomCaptionHeight":I
    goto :goto_72

    .line 580
    .end local v1    # "bottomCaptionHeight":I
    :cond_6b
    const/high16 v1, 0x42580000    # 54.0f

    iget v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 582
    .restart local v1    # "bottomCaptionHeight":I
    :goto_72
    sget-boolean v3, Landroid/util/GMSDownscaleStub;->sIsMiuiWindowDownScale:Z

    if-eqz v3, :cond_85

    .line 583
    invoke-static {}, Landroid/util/GMSDownscaleStub;->getInstance()Landroid/util/GMSDownscaleStub;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/GMSDownscaleStub;->getCompatInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    .line 584
    .local v3, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    if-eqz v3, :cond_85

    .line 585
    int-to-float v4, v1

    iget v5, v3, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 588
    .end local v3    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    :cond_85
    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    .line 589
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getHeight()I

    move-result v6

    .line 588
    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 590
    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaptionRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    goto :goto_a6

    .line 592
    .end local v1    # "bottomCaptionHeight":I
    :cond_a1
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaptionRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 595
    :goto_a6
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v1, :cond_af

    .line 596
    iget-boolean v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOverlayWithAppContent:Z

    invoke-static {p0, v1, v0, v2}, Landroid/util/MiuiMultiWindowAdapter;->layoutContentView(Lcom/android/internal/widget/MiuiDecorCaptionView;Landroid/view/View;IZ)V

    .line 600
    :cond_af
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    .line 601
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 600
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/policy/PhoneWindow;->notifyRestrictedCaptionAreaCallback(IIII)V

    .line 602
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    .line 603
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 602
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/policy/PhoneWindow;->notifyRestrictedCaptionAreaCallback(IIII)V

    .line 604
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->notifyCaptionHeightChanged()V

    .line 606
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->updateLayerDrawables()V

    .line 607
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 515
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOpenCloseTipView:Lcom/android/internal/widget/OpenCloseTipView;

    invoke-virtual {v0}, Lcom/android/internal/widget/OpenCloseTipView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_14

    .line 516
    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOpenCloseTipView:Lcom/android/internal/widget/OpenCloseTipView;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/MiuiDecorCaptionView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 519
    :cond_14
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2f

    .line 520
    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/MiuiDecorCaptionView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 521
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/util/MiuiMultiWindowUtils;->getTopCaptionViewHeightForClient(Landroid/content/Context;)I

    move-result v0

    .local v0, "topCaptionHeight":I
    goto :goto_30

    .line 523
    .end local v0    # "topCaptionHeight":I
    :cond_2f
    const/4 v0, 0x0

    .line 526
    .restart local v0    # "topCaptionHeight":I
    :goto_30
    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v1, :cond_71

    .line 527
    iget-object v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move v5, p1

    move v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/MiuiDecorCaptionView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 528
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/util/MiuiMultiWindowUtils;->multiFreeFormSupported(Landroid/content/Context;)Z

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v1, :cond_56

    .line 529
    const/high16 v1, 0x42340000    # 45.0f

    iget v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .local v1, "bottomCaptionHeight":I
    goto :goto_5d

    .line 531
    .end local v1    # "bottomCaptionHeight":I
    :cond_56
    const/high16 v1, 0x42580000    # 54.0f

    iget v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScale:F

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 533
    .restart local v1    # "bottomCaptionHeight":I
    :goto_5d
    sget-boolean v2, Landroid/util/GMSDownscaleStub;->sIsMiuiWindowDownScale:Z

    if-eqz v2, :cond_72

    .line 534
    invoke-static {}, Landroid/util/GMSDownscaleStub;->getInstance()Landroid/util/GMSDownscaleStub;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/GMSDownscaleStub;->getCompatInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    .line 535
    .local v2, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    if-eqz v2, :cond_70

    .line 536
    int-to-float v3, v1

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 538
    .end local v2    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    :cond_70
    goto :goto_72

    .line 540
    .end local v1    # "bottomCaptionHeight":I
    :cond_71
    const/4 v1, 0x0

    .line 543
    .restart local v1    # "bottomCaptionHeight":I
    :cond_72
    :goto_72
    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v2, :cond_86

    .line 544
    iget-boolean v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOverlayWithAppContent:Z

    invoke-static {p0, v0, v1, v2}, Landroid/util/MiuiMultiWindowAdapter;->getheightUsed(Lcom/android/internal/widget/MiuiDecorCaptionView;IIZ)I

    move-result v2

    .line 546
    .local v2, "heightUsed":I
    iget-object v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    const/4 v6, 0x0

    move-object v3, p0

    move v5, p1

    move v7, p2

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/MiuiDecorCaptionView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 549
    .end local v2    # "heightUsed":I
    :cond_86
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 550
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 549
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/MiuiDecorCaptionView;->setMeasuredDimension(II)V

    .line 551
    return-void
.end method

.method public whitelist onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 947
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 938
    return-void
.end method

.method public whitelist onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 942
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 334
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_6d

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6d

    .line 335
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 340
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 341
    .local v2, "y":I
    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaptionRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 342
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_2b

    .line 343
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->notifyDownLocked(Landroid/view/MotionEvent;)Z

    .line 346
    :cond_2b
    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaptionRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 347
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v3, v4, :cond_41

    move v3, v5

    goto :goto_42

    :cond_41
    move v3, v1

    .line 348
    .local v3, "fromMouse":Z
    :goto_42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    and-int/2addr v4, v5

    if-eqz v4, :cond_4a

    goto :goto_4b

    :cond_4a
    move v5, v1

    :goto_4b
    move v4, v5

    .line 349
    .local v4, "primaryButton":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_6e

    :pswitch_53
    goto :goto_6c

    .line 364
    :pswitch_54
    goto :goto_6c

    .line 351
    :pswitch_55
    iget-boolean v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    if-nez v5, :cond_5a

    .line 353
    return v1

    .line 357
    :cond_5a
    if-eqz v3, :cond_5e

    if-eqz v4, :cond_6c

    .line 358
    :cond_5e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDownX:I

    .line 359
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDownY:I

    .line 368
    :cond_6c
    :goto_6c
    return v1

    .line 371
    .end local v0    # "x":I
    .end local v2    # "y":I
    .end local v3    # "fromMouse":Z
    .end local v4    # "primaryButton":Z
    :cond_6d
    return v1

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_55
        :pswitch_53
        :pswitch_54
    .end packed-switch
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .registers 4
    .param p1, "hasWindowFocus"    # Z

    .line 881
    invoke-super {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->onWindowFocusChanged(Z)V

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged hasWindowFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiDecorCaptionView"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->updateCaptionVisibility(Z)V

    .line 884
    return-void
.end method

.method public blacklist removeContentView()V
    .registers 2

    .line 900
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 901
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->removeView(Landroid/view/View;)V

    .line 902
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    .line 904
    :cond_a
    return-void
.end method

.method public blacklist setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;Z)V
    .registers 5
    .param p1, "owner"    # Lcom/android/internal/policy/PhoneWindow;
    .param p2, "show"    # Z

    .line 283
    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 284
    iput-boolean p2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    .line 285
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->isOverlayWithDecorCaptionEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOverlayWithAppContent:Z

    .line 286
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_24

    .line 287
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOverlayWithAppContent:Z

    invoke-static {v0, v1}, Landroid/util/MiuiMultiWindowAdapter;->isOverlayWithDecorCaptionEnabledPolicy(Landroid/content/ComponentName;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOverlayWithAppContent:Z

    .line 291
    :cond_24
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 292
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1, v1}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 293
    const v0, 0x10203cc

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopMoveRegion:Landroid/view/View;

    .line 294
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/widget/MiuiDecorCaptionView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$2;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 300
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->updateCaptionVisibility(Z)V

    .line 301
    return-void
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .registers 2

    .line 452
    const/4 v0, 0x0

    return v0
.end method
