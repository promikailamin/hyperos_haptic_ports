.class public Landroid/appwidget/AppWidgetHostView;
.super Landroid/widget/FrameLayout;
.source "AppWidgetHostView.java"

# interfaces
.implements Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetHostView$InteractionLogger;,
        Landroid/appwidget/AppWidgetHostView$ViewApplyListener;,
        Landroid/appwidget/AppWidgetHostView$RemoteViewsWrapper;,
        Landroid/appwidget/AppWidgetHostView$AdapterChildHostView;
    }
.end annotation


# static fields
.field private static final blacklist KEY_INFLATION_ID:Ljava/lang/String; = "inflation_id"

.field private static final greylist-max-o KEY_JAILED_ARRAY:Ljava/lang/String; = "jail"

.field static final greylist-max-o LOGD:Z = false

.field static final greylist-max-o TAG:Ljava/lang/String; = "AppWidgetHostView"

.field static final greylist-max-o VIEW_MODE_CONTENT:I = 0x1

.field static final greylist-max-o VIEW_MODE_DEFAULT:I = 0x3

.field static final greylist-max-o VIEW_MODE_ERROR:I = 0x2

.field static final greylist-max-o VIEW_MODE_NOINIT:I


# instance fields
.field greylist mAppWidgetId:I

.field private greylist-max-o mAsyncExecutor:Ljava/util/concurrent/Executor;

.field blacklist mColorMappingChanged:Z

.field private blacklist mColorResources:Landroid/widget/RemoteViews$ColorResources;

.field private blacklist mCurrentSize:Landroid/util/SizeF;

.field private blacklist mDelayedRestoredInflationId:J

.field private blacklist mDelayedRestoredState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field greylist mInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private blacklist mInteractionLogger:Landroid/appwidget/AppWidgetHostView$InteractionLogger;

.field private greylist-max-o mLastExecutionSignal:Landroid/os/CancellationSignal;

.field private blacklist mLastInflatedRemoteViews:Landroid/widget/RemoteViews;

.field private blacklist mLastInflatedRemoteViewsId:J

.field private blacklist mOnLightBackground:Z

.field greylist-max-o mView:Landroid/view/View;

.field greylist-max-o mViewMode:I


# direct methods
.method public static synthetic blacklist $r8$lambda$_s0IkvzxWUOv94WhU9wUsmqvbUI(Landroid/appwidget/AppWidgetHostView;)V
    .registers 1

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->handleViewError()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAsyncExecutor(Landroid/appwidget/AppWidgetHostView;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentSize(Landroid/appwidget/AppWidgetHostView;)Landroid/util/SizeF;
    .registers 1

    iget-object p0, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInteractionLogger(Landroid/appwidget/AppWidgetHostView;)Landroid/appwidget/AppWidgetHostView$InteractionLogger;
    .registers 1

    iget-object p0, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionLogger:Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastInflatedRemoteViews(Landroid/appwidget/AppWidgetHostView;)Landroid/widget/RemoteViews;
    .registers 1

    iget-object p0, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViews:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastExecutionSignal(Landroid/appwidget/AppWidgetHostView;Landroid/os/CancellationSignal;)V
    .registers 2

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastInflatedRemoteViewsId(Landroid/appwidget/AppWidgetHostView;J)V
    .registers 3

    iput-wide p1, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mapplyContent(Landroid/appwidget/AppWidgetHostView;Landroid/view/View;ZLjava/lang/Exception;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHostView;->applyContent(Landroid/view/View;ZLjava/lang/Exception;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4

    .line 118
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-direct {p0, p1, v0, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;II)V

    .line 119
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;II)V
    .registers 4

    .line 138
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 97
    const/4 p1, 0x0

    iput p1, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 99
    iput-boolean p1, p0, Landroid/appwidget/AppWidgetHostView;->mColorMappingChanged:Z

    .line 100
    new-instance p1, Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    invoke-direct {p1, p0}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;-><init>(Landroid/appwidget/AppWidgetHostView;)V

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionLogger:Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    .line 103
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    .line 104
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    .line 106
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViews:Landroid/widget/RemoteViews;

    .line 107
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J

    .line 141
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setIsRootNamespace(Z)V

    .line 142
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 5

    .line 125
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-direct {p0, p1, v0, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;II)V

    .line 126
    invoke-virtual {p0, p2}, Landroid/appwidget/AppWidgetHostView;->setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 127
    return-void
.end method

.method static synthetic blacklist access$000(Landroid/appwidget/AppWidgetHostView;)Landroid/content/Context;
    .registers 1

    .line 79
    iget-object p0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic blacklist access$100(Landroid/appwidget/AppWidgetHostView;)Landroid/content/Context;
    .registers 1

    .line 79
    iget-object p0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private greylist-max-o applyContent(Landroid/view/View;ZLjava/lang/Exception;)V
    .registers 6

    .line 640
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorMappingChanged:Z

    .line 641
    if-nez p1, :cond_1a

    .line 642
    iget p1, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    .line 644
    return-void

    .line 646
    :cond_b
    if-eqz p3, :cond_14

    .line 647
    const-string p1, "AppWidgetHostView"

    const-string v1, "Error inflating RemoteViews"

    invoke-static {p1, v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 649
    :cond_14
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    move-result-object p1

    .line 650
    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 653
    :cond_1a
    if-nez p2, :cond_22

    .line 654
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->prepareView(Landroid/view/View;)V

    .line 655
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->addView(Landroid/view/View;)V

    .line 658
    :cond_22
    iget-object p2, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    if-eq p2, p1, :cond_2d

    .line 659
    iget-object p2, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/appwidget/AppWidgetHostView;->removeView(Landroid/view/View;)V

    .line 660
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    .line 662
    :cond_2d
    return-void
.end method

.method private blacklist computeSizeFromLayout(IIII)Landroid/util/SizeF;
    .registers 7

    .line 316
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 317
    new-instance v1, Landroid/util/SizeF;

    sub-int/2addr p3, p1

    .line 318
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingLeft()I

    move-result p1

    sub-int/2addr p3, p1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingRight()I

    move-result p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    div-float/2addr p1, v0

    sub-int/2addr p4, p2

    .line 319
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingTop()I

    move-result p2

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p4, p2

    int-to-float p2, p4

    div-float/2addr p2, v0

    invoke-direct {v1, p1, p2}, Landroid/util/SizeF;-><init>(FF)V

    .line 317
    return-object v1
.end method

.method private greylist-max-o generateId()I
    .registers 3

    .line 276
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getId()I

    move-result v0

    .line 277
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    :cond_9
    return v0
.end method

.method private greylist-max-o getDefaultPadding()Landroid/graphics/Rect;
    .registers 3

    .line 252
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 3

    .line 230
    invoke-static {p0, p2}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getDefaultPaddingForWidget(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 3

    .line 234
    const/4 v0, 0x0

    if-nez p1, :cond_9

    .line 235
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_c

    .line 237
    :cond_9
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 239
    :goto_c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 240
    const v0, 0x105016b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 242
    const v0, 0x105016c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 244
    const v0, 0x105016d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 246
    const v0, 0x105016a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 248
    return-object p1
.end method

.method private blacklist handleViewError()V
    .registers 6

    .line 363
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->removeViewInLayout(Landroid/view/View;)V

    .line 364
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    move-result-object v0

    .line 365
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->prepareView(Landroid/view/View;)V

    .line 366
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/appwidget/AppWidgetHostView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 367
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredWidth()I

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 368
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 367
    invoke-virtual {p0, v0, v1, v3}, Landroid/appwidget/AppWidgetHostView;->measureChild(Landroid/view/View;II)V

    .line 369
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v3, p0, Landroid/appwidget/AppWidgetHostView;->mPaddingLeft:I

    add-int/2addr v1, v3

    iget v3, p0, Landroid/appwidget/AppWidgetHostView;->mPaddingRight:I

    add-int/2addr v1, v3

    .line 370
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Landroid/appwidget/AppWidgetHostView;->mPaddingTop:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/appwidget/AppWidgetHostView;->mPaddingBottom:I

    add-int/2addr v3, v4

    .line 369
    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 371
    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    .line 372
    const/4 v0, 0x2

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 373
    return-void
.end method

.method private greylist-max-o inflateAsync(Landroid/widget/RemoteViews;)V
    .registers 12

    .line 667
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    .line 669
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_d

    .line 670
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 675
    :cond_d
    iget-boolean v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorMappingChanged:Z

    if-nez v0, :cond_38

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->canRecycleView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 677
    :try_start_19
    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;

    const/4 v0, 0x1

    invoke-direct {v6, p0, p1, v1, v0}, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;-><init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews;IZ)V

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionLogger:Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    iget-object v8, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    iget-object v9, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2b} :catch_35

    move-object v2, p1

    :try_start_2c
    invoke-virtual/range {v2 .. v9}, Landroid/widget/RemoteViews;->reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/os/CancellationSignal;

    move-result-object p1

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_32} :catch_33

    .line 686
    goto :goto_39

    .line 684
    :catch_33
    move-exception v0

    goto :goto_39

    :catch_35
    move-exception v0

    move-object v2, p1

    goto :goto_39

    .line 675
    :cond_38
    move-object v2, p1

    .line 688
    :goto_39
    iget-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    if-nez p1, :cond_54

    .line 689
    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;

    const/4 p1, 0x0

    invoke-direct {v6, p0, v2, v1, p1}, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;-><init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews;IZ)V

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionLogger:Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    iget-object v8, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    iget-object v9, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    move-object v4, p0

    invoke-virtual/range {v2 .. v9}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/os/CancellationSignal;

    move-result-object p1

    iput-object p1, v4, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    .line 697
    :cond_54
    return-void
.end method

.method private blacklist isSameColorMapping(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z
    .registers 7

    .line 961
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 962
    return v2

    .line 964
    :cond_c
    move v0, v2

    :goto_d
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 965
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    if-ne v1, v3, :cond_2b

    .line 966
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-eq v1, v3, :cond_28

    goto :goto_2b

    .line 964
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 967
    :cond_2b
    :goto_2b
    return v2

    .line 970
    :cond_2c
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist reapplyLastRemoteViews()V
    .registers 4

    .line 567
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 568
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 569
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/appwidget/AppWidgetHostView;->applyRemoteViews(Landroid/widget/RemoteViews;Z)V

    .line 570
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 571
    return-void
.end method

.method private blacklist setColorResourcesStates(Landroid/widget/RemoteViews$ColorResources;)V
    .registers 2

    .line 935
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    .line 936
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/appwidget/AppWidgetHostView;->mColorMappingChanged:Z

    .line 937
    const/4 p1, 0x0

    iput p1, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 938
    return-void
.end method


# virtual methods
.method protected greylist-max-o applyRemoteViews(Landroid/widget/RemoteViews;Z)V
    .registers 14

    .line 577
    nop

    .line 578
    nop

    .line 579
    nop

    .line 582
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J

    .line 584
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 585
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 586
    iput-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    .line 589
    :cond_13
    const/4 v2, 0x0

    if-nez p1, :cond_25

    .line 590
    iget p1, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1c

    .line 592
    return-void

    .line 594
    :cond_1c
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getDefaultView()Landroid/view/View;

    move-result-object p1

    .line 595
    iput p2, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    move-object v5, p0

    goto/16 :goto_9d

    .line 598
    :cond_25
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 599
    iget-boolean v3, p0, Landroid/appwidget/AppWidgetHostView;->mOnLightBackground:Z

    if-eqz v3, :cond_37

    .line 600
    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getDarkTextViews()Landroid/widget/RemoteViews;

    move-result-object v0

    move-object v3, v0

    goto :goto_38

    .line 599
    :cond_37
    move-object v3, v0

    .line 603
    :goto_38
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_42

    if-eqz p2, :cond_42

    .line 604
    invoke-direct {p0, v3}, Landroid/appwidget/AppWidgetHostView;->inflateAsync(Landroid/widget/RemoteViews;)V

    .line 605
    return-void

    .line 608
    :cond_42
    iget-boolean p2, p0, Landroid/appwidget/AppWidgetHostView;->mColorMappingChanged:Z

    const/4 v9, 0x1

    if-nez p2, :cond_76

    iget-object p2, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    invoke-virtual {v3, p2}, Landroid/widget/RemoteViews;->canRecycleView(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_76

    .line 610
    :try_start_4f
    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionLogger:Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    iget-object v8, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    invoke-virtual/range {v3 .. v8}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)V

    .line 612
    iget-object p2, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;
    :try_end_5e
    .catch Ljava/lang/RuntimeException; {:try_start_4f .. :try_end_5e} :catch_6d

    .line 613
    :try_start_5e
    invoke-virtual {v3, p1}, Landroid/widget/RemoteViews;->computeUniqueId(Landroid/widget/RemoteViews;)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J
    :try_end_64
    .catch Ljava/lang/RuntimeException; {:try_start_5e .. :try_end_64} :catch_6a

    .line 614
    nop

    .line 618
    move-object v2, v1

    move-object v1, p2

    move-object p2, v2

    move v2, v9

    goto :goto_77

    .line 616
    :catch_6a
    move-exception v0

    move-object v1, v0

    goto :goto_72

    :catch_6d
    move-exception v0

    move-object p2, v0

    move-object v10, v1

    move-object v1, p2

    move-object p2, v10

    .line 617
    :goto_72
    move-object v10, v1

    move-object v1, p2

    move-object p2, v10

    goto :goto_77

    .line 622
    :cond_76
    move-object p2, v1

    :goto_77
    if-nez v1, :cond_98

    .line 624
    :try_start_79
    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionLogger:Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    iget-object v8, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;
    :try_end_81
    .catch Ljava/lang/RuntimeException; {:try_start_79 .. :try_end_81} :catch_91

    move-object v5, p0

    :try_start_82
    invoke-virtual/range {v3 .. v8}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object v1

    .line 626
    invoke-virtual {v3, p1}, Landroid/widget/RemoteViews;->computeUniqueId(Landroid/widget/RemoteViews;)J

    move-result-wide v3

    iput-wide v3, v5, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J
    :try_end_8c
    .catch Ljava/lang/RuntimeException; {:try_start_82 .. :try_end_8c} :catch_8f

    .line 630
    move-object p1, v1

    move-object v1, p2

    goto :goto_9b

    .line 628
    :catch_8f
    move-exception v0

    goto :goto_93

    :catch_91
    move-exception v0

    move-object v5, p0

    :goto_93
    move-object p1, v0

    .line 629
    move-object v10, v1

    move-object v1, p1

    move-object p1, v10

    goto :goto_9b

    .line 622
    :cond_98
    move-object v5, p0

    move-object p1, v1

    move-object v1, p2

    .line 633
    :goto_9b
    iput v9, v5, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 636
    :goto_9d
    invoke-direct {p0, p1, v2, v1}, Landroid/appwidget/AppWidgetHostView;->applyContent(Landroid/view/View;ZLjava/lang/Exception;)V

    .line 637
    return-void
.end method

.method public blacklist collectWidgetEvent()Landroid/appwidget/AppWidgetEvent;
    .registers 2

    .line 1050
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionLogger:Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    invoke-static {v0}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->-$$Nest$mcollectWidgetEvent(Landroid/appwidget/AppWidgetHostView$InteractionLogger;)Landroid/appwidget/AppWidgetEvent;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createSharedElementActivityOptions([I[Ljava/lang/String;Landroid/content/Intent;)Landroid/app/ActivityOptions;
    .registers 11

    .line 876
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 877
    :goto_4
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_13

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_13

    .line 879
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_4

    .line 881
    :cond_13
    instance-of v1, v0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-nez v1, :cond_19

    .line 882
    return-object v2

    .line 885
    :cond_19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 886
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 888
    const/4 v4, 0x0

    :goto_24
    array-length v5, p1

    if-ge v4, v5, :cond_44

    .line 889
    aget v5, p1, v4

    invoke-virtual {p0, v5}, Landroid/appwidget/AppWidgetHostView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 890
    if-eqz v5, :cond_41

    .line 891
    aget-object v6, p2, v4

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 893
    aget-object v6, p2, v4

    invoke-static {v5}, Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 888
    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 897
    :cond_44
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_67

    .line 898
    const-string p1, "android.widget.extra.SHARED_ELEMENT_BOUNDS"

    invoke-virtual {p3, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 899
    check-cast v0, Landroid/app/Activity;

    .line 901
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/util/Pair;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/util/Pair;

    .line 899
    invoke-static {v0, p1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 902
    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/app/ActivityOptions;->setPendingIntentLaunchFlags(I)V

    .line 903
    return-object p1

    .line 905
    :cond_67
    return-object v2
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 992
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 997
    goto :goto_25

    .line 993
    :catch_4
    move-exception p1

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drawing view failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppWidgetHostView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    new-instance p1, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda0;-><init>(Landroid/appwidget/AppWidgetHostView;)V

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->post(Ljava/lang/Runnable;)Z

    .line 998
    :goto_25
    return-void
.end method

.method protected whitelist dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 282
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->generateId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    .line 284
    nop

    .line 285
    nop

    .line 286
    instance-of v0, p1, Landroid/os/Bundle;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_22

    .line 287
    check-cast p1, Landroid/os/Bundle;

    .line 288
    const-string/jumbo v0, "jail"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 289
    const-string v3, "inflation_id"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    goto :goto_23

    .line 286
    :cond_22
    const/4 v0, 0x0

    .line 292
    :goto_23
    if-nez v0, :cond_2a

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 294
    :cond_2a
    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mDelayedRestoredState:Landroid/util/SparseArray;

    .line 295
    iput-wide v1, p0, Landroid/appwidget/AppWidgetHostView;->mDelayedRestoredInflationId:J

    .line 296
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->restoreInstanceState()V

    .line 297
    return-void
.end method

.method protected whitelist dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 265
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 266
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 268
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 269
    const-string/jumbo v2, "jail"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 270
    const-string v0, "inflation_id"

    iget-wide v2, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 271
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->generateId()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 272
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->generateId()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 273
    return-void
.end method

.method public bridge synthetic blacklist generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 79
    invoke-virtual {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public blacklist generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 4

    .line 511
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public whitelist getAppWidgetId()I
    .registers 2

    .line 256
    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    return v0
.end method

.method public whitelist getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .registers 2

    .line 260
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    return-object v0
.end method

.method protected whitelist getDefaultView()Landroid/view/View;
    .registers 11

    .line 788
    const-string v0, "appWidgetCategory"

    const-string v1, "AppWidgetHostView"

    .line 789
    nop

    .line 792
    const/4 v2, 0x0

    :try_start_6
    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v3, :cond_5c

    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    if-eqz v3, :cond_5c

    .line 793
    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 794
    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    .line 795
    if-eqz v4, :cond_36

    if-eq v4, v3, :cond_36

    .line 797
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    iget v6, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    .line 798
    invoke-virtual {v5, v6}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v5

    .line 799
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 800
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_36

    .line 802
    move v3, v4

    .line 806
    :cond_36
    new-instance v4, Landroid/appwidget/AppWidgetHostView$RemoteViewsWrapper;

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v4, v0, v3}, Landroid/appwidget/AppWidgetHostView$RemoteViewsWrapper;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionLogger:Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    iget-object v9, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;
    :try_end_47
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_47} :catch_79

    .line 807
    const/4 v8, 0x0

    move-object v6, p0

    :try_start_49
    invoke-virtual/range {v4 .. v9}, Landroid/appwidget/AppWidgetHostView$RemoteViewsWrapper;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object v3
    :try_end_4d
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_4d} :catch_77

    .line 808
    :try_start_4d
    instance-of v0, v3, Landroid/widget/AdapterView;

    if-nez v0, :cond_59

    .line 810
    new-instance v0, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda1;-><init>(Landroid/appwidget/AppWidgetHostView;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_59
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_59} :catch_5a

    .line 812
    :cond_59
    goto :goto_76

    .line 815
    :catch_5a
    move-exception v0

    goto :goto_7c

    .line 792
    :cond_5c
    move-object v6, p0

    .line 813
    :try_start_5d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t inflate defaultView, missing defaultLayout, mInfo: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v6, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/lang/RuntimeException; {:try_start_5d .. :try_end_75} :catch_77

    move-object v3, v2

    .line 817
    :goto_76
    goto :goto_7e

    .line 815
    :catch_77
    move-exception v0

    goto :goto_7b

    :catch_79
    move-exception v0

    move-object v6, p0

    :goto_7b
    move-object v3, v2

    :goto_7c
    move-object v2, v0

    .line 816
    nop

    .line 819
    :goto_7e
    if-eqz v2, :cond_98

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error inflating AppWidget "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v6, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 823
    :cond_98
    if-nez v3, :cond_9e

    .line 825
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    move-result-object v3

    .line 828
    :cond_9e
    return-object v3
.end method

.method protected whitelist getErrorView()Landroid/view/View;
    .registers 4

    .line 859
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 860
    const v1, 0x1040495

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 862
    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 863
    return-object v0
.end method

.method public blacklist getInteractionLogger()Landroid/appwidget/AppWidgetHostView$InteractionLogger;
    .registers 2

    .line 168
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionLogger:Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    return-object v0
.end method

.method protected blacklist isVisibilityTrackingPermitted()Z
    .registers 2

    .line 1038
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist onDefaultViewClicked(Landroid/view/View;)V
    .registers 6

    .line 839
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 840
    if-eqz v0, :cond_d

    .line 841
    iget v1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->noteAppWidgetTapped(I)V

    .line 843
    :cond_d
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v0, :cond_4c

    .line 844
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 845
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 846
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v2

    .line 845
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 847
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4c

    .line 848
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    .line 849
    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    .line 850
    invoke-static {p1}, Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    .line 849
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p1, v3}, Landroid/content/pm/LauncherApps;->startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    .line 853
    :cond_4c
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 869
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 870
    const-class v0, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 871
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 14

    .line 326
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    .line 327
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/appwidget/AppWidgetHostView;->computeSizeFromLayout(IIII)Landroid/util/SizeF;

    move-result-object v1

    .line 328
    iput-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    .line 329
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViews:Landroid/widget/RemoteViews;
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_a} :catch_4a

    if-eqz v2, :cond_38

    .line 330
    :try_start_c
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RemoteViews;->getRemoteViewsToApplyIfDifferent(Landroid/util/SizeF;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_33

    .line 333
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/appwidget/AppWidgetHostView;->applyRemoteViews(Landroid/widget/RemoteViews;Z)V

    .line 334
    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    .line 335
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 337
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_2c} :catch_35

    .line 334
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    :try_start_2f
    invoke-virtual/range {v2 .. v7}, Landroid/appwidget/AppWidgetHostView;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_39

    .line 332
    :cond_33
    move-object v2, p0

    goto :goto_39

    .line 345
    :catch_35
    move-exception v0

    move-object v2, p0

    goto :goto_4b

    .line 329
    :cond_38
    move-object v2, p0

    .line 341
    :goto_39
    if-eqz p1, :cond_46

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->isVisibilityTrackingPermitted()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 342
    iget-object v0, v2, Landroid/appwidget/AppWidgetHostView;->mInteractionLogger:Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    invoke-static {v0}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->-$$Nest$monPositionChanged(Landroid/appwidget/AppWidgetHostView$InteractionLogger;)V

    .line 344
    :cond_46
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_49} :catch_4a

    .line 348
    goto :goto_56

    .line 345
    :catch_4a
    move-exception v0

    :goto_4b
    move-object p1, v0

    .line 346
    const-string p2, "AppWidgetHostView"

    const-string p3, "Remote provider threw runtime exception, using error view instead."

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->handleViewError()V

    .line 349
    :goto_56
    return-void
.end method

.method public blacklist onUpdateProviderInfo(Landroid/appwidget/AppWidgetProviderInfo;)V
    .registers 3

    .line 548
    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {p0, v0, p1}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 549
    const/4 p1, 0x0

    iput p1, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 550
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 551
    return-void
.end method

.method public blacklist onViewDataChanged(I)V
    .registers 4

    .line 749
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 750
    if-eqz p1, :cond_27

    instance-of v0, p1, Landroid/widget/AdapterView;

    if-eqz v0, :cond_27

    .line 751
    check-cast p1, Landroid/widget/AdapterView;

    .line 752
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 753
    instance-of v1, v0, Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_1a

    .line 754
    check-cast v0, Landroid/widget/BaseAdapter;

    .line 755
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_26

    .line 756
    :cond_1a
    if-nez v0, :cond_26

    instance-of v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    if-eqz v0, :cond_26

    .line 760
    check-cast p1, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    invoke-interface {p1}, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;->deferNotifyDataSetChanged()V

    goto :goto_27

    .line 756
    :cond_26
    :goto_26
    nop

    .line 763
    :cond_27
    :goto_27
    return-void
.end method

.method public whitelist onVisibilityAggregated(Z)V
    .registers 2

    .line 1002
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onVisibilityAggregated(Z)V

    .line 1003
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->isVisibilityTrackingPermitted()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1004
    iget-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionLogger:Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    invoke-static {p1}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->-$$Nest$monVisibilityAggregated(Landroid/appwidget/AppWidgetHostView$InteractionLogger;)V

    .line 1006
    :cond_e
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .registers 2

    .line 353
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 354
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->isVisibilityTrackingPermitted()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 355
    iget-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionLogger:Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    invoke-static {p1}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->-$$Nest$monWindowFocusChanged(Landroid/appwidget/AppWidgetHostView$InteractionLogger;)V

    .line 357
    :cond_e
    return-void
.end method

.method protected whitelist prepareView(Landroid/view/View;)V
    .registers 4

    .line 771
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 772
    if-nez v0, :cond_e

    .line 773
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 777
    :cond_e
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 778
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 779
    return-void
.end method

.method public whitelist resetColorResources()V
    .registers 2

    .line 981
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    if-eqz v0, :cond_10

    .line 982
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    .line 983
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorMappingChanged:Z

    .line 984
    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 985
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->reapplyLastRemoteViews()V

    .line 987
    :cond_10
    return-void
.end method

.method blacklist restoreInstanceState()V
    .registers 8

    .line 300
    iget-wide v0, p0, Landroid/appwidget/AppWidgetHostView;->mDelayedRestoredInflationId:J

    .line 301
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mDelayedRestoredState:Landroid/util/SparseArray;

    .line 302
    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_4c

    iget-wide v5, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_11

    goto :goto_4c

    .line 305
    :cond_11
    iput-wide v3, p0, Landroid/appwidget/AppWidgetHostView;->mDelayedRestoredInflationId:J

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mDelayedRestoredState:Landroid/util/SparseArray;

    .line 308
    :try_start_16
    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    .line 312
    goto :goto_4b

    .line 309
    :catch_1a
    move-exception v0

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to restoreInstanceState for widget id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 311
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v2, :cond_3a

    const-string/jumbo v2, "null"

    goto :goto_3e

    :cond_3a
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    :goto_3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    const-string v2, "AppWidgetHostView"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    :goto_4b
    return-void

    .line 303
    :cond_4c
    :goto_4c
    return-void
.end method

.method public whitelist setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .registers 6

    .line 193
    iput p1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    .line 194
    iput-object p2, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 197
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->getDefaultPadding()Landroid/graphics/Rect;

    move-result-object p1

    .line 198
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    .line 202
    if-eqz p2, :cond_3e

    .line 203
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object p1

    .line 204
    iget-object p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p2, v0

    if-eqz p2, :cond_3b

    .line 205
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1040a7c

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 208
    :cond_3b
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 210
    :cond_3e
    return-void
.end method

.method public whitelist setColorResources(Landroid/util/SparseIntArray;)V
    .registers 3

    .line 922
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    .line 923
    invoke-virtual {v0}, Landroid/widget/RemoteViews$ColorResources;->getColorMapping()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/appwidget/AppWidgetHostView;->isSameColorMapping(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 924
    return-void

    .line 926
    :cond_11
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->selfTargetingAndroidResourceFrro()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 927
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    .line 928
    invoke-static {v0, p1}, Landroid/widget/RemoteViews$ColorResources;->createWithOverlay(Landroid/content/Context;Landroid/util/SparseIntArray;)Landroid/widget/RemoteViews$ColorResources;

    move-result-object p1

    .line 927
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setColorResources(Landroid/widget/RemoteViews$ColorResources;)V

    goto :goto_2a

    .line 930
    :cond_21
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews$ColorResources;->create(Landroid/content/Context;Landroid/util/SparseIntArray;)Landroid/widget/RemoteViews$ColorResources;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setColorResources(Landroid/widget/RemoteViews$ColorResources;)V

    .line 932
    :goto_2a
    return-void
.end method

.method public blacklist setColorResources(Landroid/widget/RemoteViews$ColorResources;)V
    .registers 3

    .line 942
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    if-ne p1, v0, :cond_5

    .line 943
    return-void

    .line 945
    :cond_5
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setColorResourcesStates(Landroid/widget/RemoteViews$ColorResources;)V

    .line 946
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->reapplyLastRemoteViews()V

    .line 947
    return-void
.end method

.method public blacklist setColorResourcesNoReapply(Landroid/widget/RemoteViews$ColorResources;)V
    .registers 3

    .line 953
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    if-ne p1, v0, :cond_5

    .line 954
    return-void

    .line 956
    :cond_5
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setColorResourcesStates(Landroid/widget/RemoteViews$ColorResources;)V

    .line 957
    return-void
.end method

.method public whitelist setExecutor(Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 522
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_c

    .line 523
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 524
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    .line 527
    :cond_c
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    .line 528
    return-void
.end method

.method public blacklist setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 3

    .line 152
    instance-of v0, p1, Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    if-eqz v0, :cond_9

    check-cast p1, Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    .line 154
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionLogger:Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    goto :goto_10

    .line 156
    :cond_9
    new-instance v0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    invoke-direct {v0, p0, p1}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;-><init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews$InteractionHandler;)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionLogger:Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    .line 158
    :goto_10
    return-void
.end method

.method public whitelist setOnLightBackground(Z)V
    .registers 2

    .line 537
    iput-boolean p1, p0, Landroid/appwidget/AppWidgetHostView;->mOnLightBackground:Z

    .line 538
    return-void
.end method

.method public whitelist startVisibilityTracking()V
    .registers 3

    .line 1014
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionLogger:Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->-$$Nest$monTrackingChanged(Landroid/appwidget/AppWidgetHostView$InteractionLogger;Z)V

    .line 1015
    return-void
.end method

.method public whitelist stopVisibilityTracking()V
    .registers 3

    .line 1028
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionLogger:Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->-$$Nest$monTrackingChanged(Landroid/appwidget/AppWidgetHostView$InteractionLogger;Z)V

    .line 1029
    return-void
.end method

.method public whitelist updateAppWidget(Landroid/widget/RemoteViews;)V
    .registers 3

    .line 559
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViews:Landroid/widget/RemoteViews;

    .line 560
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/appwidget/AppWidgetHostView;->applyRemoteViews(Landroid/widget/RemoteViews;Z)V

    .line 561
    return-void
.end method

.method public whitelist updateAppWidgetOptions(Landroid/os/Bundle;)V
    .registers 4

    .line 504
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget v1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v0, v1, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidgetOptions(ILandroid/os/Bundle;)V

    .line 505
    return-void
.end method

.method public whitelist updateAppWidgetSize(Landroid/os/Bundle;IIII)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 394
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIIIZ)V

    .line 395
    return-void
.end method

.method public greylist-max-r updateAppWidgetSize(Landroid/os/Bundle;IIIIZ)V
    .registers 13

    .line 458
    if-nez p1, :cond_7

    .line 459
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 462
    :cond_7
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->getDefaultPadding()Landroid/graphics/Rect;

    move-result-object v0

    .line 463
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 465
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v2, v2

    .line 466
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v0

    int-to-float v0, v3

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 468
    const/4 v1, 0x0

    if-eqz p6, :cond_2a

    move v3, v1

    goto :goto_2b

    :cond_2a
    move v3, v2

    :goto_2b
    sub-int/2addr p2, v3

    .line 469
    if-eqz p6, :cond_30

    move v3, v1

    goto :goto_31

    :cond_30
    move v3, v0

    :goto_31
    sub-int/2addr p3, v3

    .line 470
    if-eqz p6, :cond_35

    move v2, v1

    :cond_35
    sub-int/2addr p4, v2

    .line 471
    if-eqz p6, :cond_39

    move v0, v1

    :cond_39
    sub-int/2addr p5, v0

    .line 473
    iget-object p6, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {p6}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p6

    .line 476
    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {p6, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p6

    .line 477
    nop

    .line 478
    const-string v0, "appWidgetMinWidth"

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "appWidgetMaxHeight"

    const-string v4, "appWidgetMaxWidth"

    const-string v5, "appWidgetMinHeight"

    if-ne p2, v2, :cond_67

    .line 479
    invoke-virtual {p6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne p3, v2, :cond_67

    .line 480
    invoke-virtual {p6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne p4, v2, :cond_67

    .line 481
    invoke-virtual {p6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p6

    if-eq p5, p6, :cond_68

    .line 482
    :cond_67
    const/4 v1, 0x1

    .line 485
    :cond_68
    if-eqz v1, :cond_83

    .line 486
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 487
    invoke-virtual {p1, v5, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 488
    invoke-virtual {p1, v4, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 489
    invoke-virtual {p1, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 490
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string p3, "appWidgetSizes"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 492
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    .line 494
    :cond_83
    return-void
.end method

.method public whitelist updateAppWidgetSize(Landroid/os/Bundle;Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/util/SizeF;",
            ">;)V"
        }
    .end annotation

    .line 415
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 417
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->getDefaultPadding()Landroid/graphics/Rect;

    move-result-object v1

    .line 418
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 420
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 421
    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v1

    int-to-float v1, v4

    div-float/2addr v1, v2

    .line 423
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 424
    nop

    .line 425
    nop

    .line 426
    nop

    .line 427
    nop

    .line 428
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v8, v5

    move v9, v8

    move v7, v6

    move v6, v4

    :goto_38
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_81

    .line 429
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SizeF;

    .line 430
    new-instance v11, Landroid/util/SizeF;

    invoke-virtual {v10}, Landroid/util/SizeF;->getWidth()F

    move-result v12

    sub-float/2addr v12, v3

    invoke-static {v5, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 431
    invoke-virtual {v10}, Landroid/util/SizeF;->getHeight()F

    move-result v10

    sub-float/2addr v10, v1

    invoke-static {v5, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-direct {v11, v12, v10}, Landroid/util/SizeF;-><init>(FF)V

    .line 432
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    invoke-virtual {v11}, Landroid/util/SizeF;->getWidth()F

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 434
    invoke-virtual {v11}, Landroid/util/SizeF;->getWidth()F

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 435
    invoke-virtual {v11}, Landroid/util/SizeF;->getHeight()F

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 436
    invoke-virtual {v11}, Landroid/util/SizeF;->getHeight()F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 428
    add-int/lit8 v7, v7, 0x1

    goto :goto_38

    .line 438
    :cond_81
    iget p2, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    .line 439
    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p2

    const-class v0, Landroid/util/SizeF;

    const-string v1, "appWidgetSizes"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p2

    .line 438
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_96

    .line 441
    return-void

    .line 443
    :cond_96
    invoke-virtual {p1}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object p1

    .line 444
    const-string p2, "appWidgetMinWidth"

    float-to-int v0, v4

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 445
    const-string p2, "appWidgetMinHeight"

    float-to-int v0, v6

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 446
    const-string p2, "appWidgetMaxWidth"

    float-to-int v0, v8

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 447
    const-string p2, "appWidgetMaxHeight"

    float-to-int v0, v9

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 448
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 449
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    .line 450
    return-void
.end method
