.class Lmiui/view/ScreenView$SlideBar;
.super Landroid/widget/FrameLayout;
.source "ScreenView.java"

# interfaces
.implements Lmiui/view/ScreenView$Indicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideBar"
.end annotation


# instance fields
.field private blacklist mPadding:Landroid/graphics/Rect;

.field private blacklist mPos:Landroid/graphics/Rect;

.field private blacklist mSlidePoint:Landroid/graphics/NinePatch;

.field private blacklist mSlidePointBmp:Landroid/graphics/Bitmap;

.field final synthetic blacklist this$0:Lmiui/view/ScreenView;


# direct methods
.method public constructor blacklist <init>(Lmiui/view/ScreenView;Landroid/content/Context;II)V
    .registers 10
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "slideDrawableId"    # I
    .param p4, "backgroundDrawableId"    # I

    .line 2265
    iput-object p1, p0, Lmiui/view/ScreenView$SlideBar;->this$0:Lmiui/view/ScreenView;

    .line 2266
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2260
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmiui/view/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    .line 2262
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmiui/view/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    .line 2267
    nop

    .line 2268
    invoke-virtual {p0}, Lmiui/view/ScreenView$SlideBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lmiui/view/ScreenView$SlideBar;->mSlidePointBmp:Landroid/graphics/Bitmap;

    .line 2269
    if-nez p1, :cond_21

    .line 2270
    return-void

    .line 2272
    :cond_21
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object p1

    .line 2273
    .local p1, "npChunk":[B
    if-eqz p1, :cond_7f

    .line 2274
    new-instance v0, Landroid/graphics/NinePatch;

    iget-object v1, p0, Lmiui/view/ScreenView$SlideBar;->mSlidePointBmp:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v0, p0, Lmiui/view/ScreenView$SlideBar;->mSlidePoint:Landroid/graphics/NinePatch;

    .line 2278
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lmiui/view/ScreenView$SlideBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2279
    .local v0, "background":Landroid/widget/FrameLayout;
    invoke-virtual {v0, p4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 2280
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 2284
    .local v1, "backgroundParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v0, v1}, Lmiui/view/ScreenView$SlideBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2285
    iget-object v2, p0, Lmiui/view/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 2286
    iget-object v2, p0, Lmiui/view/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2287
    iget-object v2, p0, Lmiui/view/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 2288
    iget-object v2, p0, Lmiui/view/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 2289
    iget-object v2, p0, Lmiui/view/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    iget-object v3, p0, Lmiui/view/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2290
    iget-object v2, p0, Lmiui/view/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lmiui/view/ScreenView$SlideBar;->mSlidePointBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 2291
    return-void

    .line 2276
    .end local v0    # "background":Landroid/widget/FrameLayout;
    .end local v1    # "backgroundParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_7f
    return-void
.end method


# virtual methods
.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2301
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2302
    iget-object v0, p0, Lmiui/view/ScreenView$SlideBar;->mSlidePoint:Landroid/graphics/NinePatch;

    if-eqz v0, :cond_c

    .line 2303
    iget-object v1, p0, Lmiui/view/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 2305
    :cond_c
    return-void
.end method

.method public blacklist fastOffset(I)Z
    .registers 4
    .param p1, "offset"    # I

    .line 2328
    invoke-virtual {p0}, Lmiui/view/ScreenView$SlideBar;->getLeft()I

    move-result v0

    if-eq v0, p1, :cond_16

    .line 2329
    invoke-virtual {p0}, Lmiui/view/ScreenView$SlideBar;->getRight()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lmiui/view/ScreenView$SlideBar;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/view/ScreenView$SlideBar;->mRight:I

    .line 2330
    iput p1, p0, Lmiui/view/ScreenView$SlideBar;->mLeft:I

    .line 2331
    const/4 v0, 0x1

    return v0

    .line 2333
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSlideWidth()I
    .registers 3

    .line 2323
    invoke-virtual {p0}, Lmiui/view/ScreenView$SlideBar;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lmiui/view/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmiui/view/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected whitelist getSuggestedMinimumHeight()I
    .registers 3

    .line 2295
    iget-object v0, p0, Lmiui/view/ScreenView$SlideBar;->mSlidePointBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 2296
    invoke-super {p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumHeight()I

    move-result v1

    .line 2295
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 2310
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2311
    iget-object v0, p0, Lmiui/view/ScreenView$SlideBar;->mSlidePoint:Landroid/graphics/NinePatch;

    if-eqz v0, :cond_1f

    .line 2312
    iget-object v0, p0, Lmiui/view/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    sub-int v1, p5, p3

    iget-object v2, p0, Lmiui/view/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2313
    iget-object v0, p0, Lmiui/view/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lmiui/view/ScreenView$SlideBar;->mSlidePoint:Landroid/graphics/NinePatch;

    invoke-virtual {v2}, Landroid/graphics/NinePatch;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2315
    :cond_1f
    return-void
.end method

.method public blacklist setPosition(II)V
    .registers 5
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 2318
    iget-object v0, p0, Lmiui/view/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiui/view/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2319
    iget-object v0, p0, Lmiui/view/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiui/view/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2320
    return-void
.end method
