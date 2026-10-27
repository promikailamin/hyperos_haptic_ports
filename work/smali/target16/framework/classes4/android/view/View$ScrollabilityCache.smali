.class Landroid/view/View$ScrollabilityCache;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollabilityCache"
.end annotation


# static fields
.field public static final greylist-max-o DRAGGING_HORIZONTAL_SCROLL_BAR:I = 0x2

.field public static final greylist-max-o DRAGGING_VERTICAL_SCROLL_BAR:I = 0x1

.field public static final greylist-max-o FADING:I = 0x2

.field public static final greylist-max-o NOT_DRAGGING:I = 0x0

.field public static final greylist-max-o OFF:I = 0x0

.field public static final greylist-max-o ON:I = 0x1

.field private static final greylist-max-o OPAQUE:[F

.field private static final greylist-max-o TRANSPARENT:[F


# instance fields
.field public greylist-max-o fadeScrollBars:Z

.field public blacklist fadeScrollBarsScheduled:Z

.field public greylist-max-o fadeStartTime:J

.field public greylist-max-o fadingEdgeLength:I

.field blacklist handler:Landroid/os/Handler;

.field public greylist host:Landroid/view/View;

.field public greylist-max-o interpolatorValues:[F

.field private greylist-max-o mLastColor:I

.field public final greylist-max-o mScrollBarBounds:Landroid/graphics/Rect;

.field public greylist-max-o mScrollBarDraggingPos:F

.field public greylist-max-o mScrollBarDraggingState:I

.field public final greylist-max-o mScrollBarTouchBounds:Landroid/graphics/Rect;

.field public final greylist-max-o matrix:Landroid/graphics/Matrix;

.field public final greylist-max-o paint:Landroid/graphics/Paint;

.field public greylist scrollBar:Landroid/widget/ScrollBarDrawable;

.field public greylist-max-o scrollBarDefaultDelayBeforeFade:I

.field public greylist-max-o scrollBarFadeDuration:I

.field public final greylist-max-o scrollBarInterpolator:Landroid/graphics/Interpolator;

.field public greylist-max-o scrollBarMinTouchTarget:I

.field public greylist-max-o scrollBarSize:I

.field public greylist-max-o shader:Landroid/graphics/Shader;

.field public greylist-max-r state:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 33003
    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/high16 v3, 0x437f0000    # 255.0f

    aput v3, v1, v2

    sput-object v1, Landroid/view/View$ScrollabilityCache;->OPAQUE:[F

    .line 33004
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v1, v0, v2

    sput-object v0, Landroid/view/View$ScrollabilityCache;->TRANSPARENT:[F

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/view/ViewConfiguration;Landroid/view/View;)V
    .registers 11

    .line 33035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33001
    new-instance v0, Landroid/graphics/Interpolator;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Interpolator;-><init>(II)V

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    .line 33020
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->state:I

    .line 33025
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/View$ScrollabilityCache;->mScrollBarBounds:Landroid/graphics/Rect;

    .line 33026
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/View$ScrollabilityCache;->mScrollBarTouchBounds:Landroid/graphics/Rect;

    .line 33031
    iput v0, p0, Landroid/view/View$ScrollabilityCache;->mScrollBarDraggingState:I

    .line 33033
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->mScrollBarDraggingPos:F

    .line 33036
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 33037
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    move-result v0

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 33038
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinScrollbarTouchTarget()I

    move-result p1

    iput p1, p0, Landroid/view/View$ScrollabilityCache;->scrollBarMinTouchTarget:I

    .line 33039
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result p1

    iput p1, p0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    .line 33040
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result p1

    iput p1, p0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    .line 33042
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    .line 33043
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Landroid/view/View$ScrollabilityCache;->matrix:Landroid/graphics/Matrix;

    .line 33046
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x1000000

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    .line 33047
    iget-object p1, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 33048
    iget-object p1, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 33050
    iput-object p2, p0, Landroid/view/View$ScrollabilityCache;->host:Landroid/view/View;

    .line 33051
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 33072
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 33073
    iget-wide v2, p0, Landroid/view/View$ScrollabilityCache;->fadeStartTime:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2b

    .line 33074
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/View$ScrollabilityCache;->fadeScrollBarsScheduled:Z

    .line 33075
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/View$ScrollabilityCache;->handler:Landroid/os/Handler;

    .line 33080
    long-to-int v0, v0

    .line 33081
    nop

    .line 33083
    iget-object v1, p0, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    .line 33086
    sget-object v3, Landroid/view/View$ScrollabilityCache;->OPAQUE:[F

    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    .line 33089
    iget v2, p0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    add-int/2addr v0, v2

    .line 33090
    sget-object v2, Landroid/view/View$ScrollabilityCache;->TRANSPARENT:[F

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0, v2}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    .line 33092
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->state:I

    .line 33095
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->host:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Z)V

    goto :goto_37

    .line 33096
    :cond_2b
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_37

    .line 33098
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->handler:Landroid/os/Handler;

    iget-wide v1, p0, Landroid/view/View$ScrollabilityCache;->fadeStartTime:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_38

    .line 33096
    :cond_37
    :goto_37
    nop

    .line 33100
    :goto_38
    return-void
.end method

.method public greylist-max-o setFadeColor(I)V
    .registers 11

    .line 33054
    iget v0, p0, Landroid/view/View$ScrollabilityCache;->mLastColor:I

    if-eq p1, v0, :cond_51

    .line 33055
    iput p1, p0, Landroid/view/View$ScrollabilityCache;->mLastColor:I

    .line 33057
    if-eqz p1, :cond_2d

    .line 33058
    new-instance v1, Landroid/graphics/LinearGradient;

    const/high16 v0, -0x1000000

    or-int v6, p1, v0

    const v0, 0xffffff

    and-int v7, p1, v0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    .line 33060
    iget-object p1, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 33062
    iget-object p1, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_51

    .line 33064
    :cond_2d
    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x1000000

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    .line 33065
    iget-object p1, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 33066
    iget-object p1, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 33069
    :cond_51
    :goto_51
    return-void
.end method
