.class Lmiui/view/ScreenView$SliderTouchListener;
.super Ljava/lang/Object;
.source "ScreenView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SliderTouchListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/view/ScreenView;


# direct methods
.method private constructor blacklist <init>(Lmiui/view/ScreenView;)V
    .registers 2

    .line 2337
    iput-object p1, p0, Lmiui/view/ScreenView$SliderTouchListener;->this$0:Lmiui/view/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lmiui/view/ScreenView;Lmiui/view/ScreenView$SliderTouchListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/view/ScreenView$SliderTouchListener;-><init>(Lmiui/view/ScreenView;)V

    return-void
.end method


# virtual methods
.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 2340
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2341
    .local v0, "sliderWidth":I
    nop

    .line 2342
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-int/lit8 v2, v0, -0x1

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 2343
    .local v1, "x":F
    iget-object v2, p0, Lmiui/view/ScreenView$SliderTouchListener;->this$0:Lmiui/view/ScreenView;

    invoke-virtual {v2}, Lmiui/view/ScreenView;->getScreenCount()I

    move-result v2

    .line 2344
    .local v2, "screenCount":I
    int-to-float v3, v2

    mul-float/2addr v3, v1

    int-to-float v4, v0

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 2345
    .local v3, "pos":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_7a

    goto :goto_78

    .line 2353
    :pswitch_2d
    iget-object v4, p0, Lmiui/view/ScreenView$SliderTouchListener;->this$0:Lmiui/view/ScreenView;

    invoke-static {v4, v3}, Lmiui/view/ScreenView;->-$$Nest$msetCurrentScreenInner(Lmiui/view/ScreenView;I)V

    .line 2354
    iget-object v4, p0, Lmiui/view/ScreenView$SliderTouchListener;->this$0:Lmiui/view/ScreenView;

    iget v5, v4, Lmiui/view/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v5, v2

    int-to-float v5, v5

    mul-float/2addr v5, v1

    int-to-float v6, v0

    div-float/2addr v5, v6

    iget-object v6, p0, Lmiui/view/ScreenView$SliderTouchListener;->this$0:Lmiui/view/ScreenView;

    iget v6, v6, Lmiui/view/ScreenView;->mChildScreenWidth:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lmiui/view/ScreenView;->scrollTo(II)V

    .line 2356
    goto :goto_78

    .line 2360
    :pswitch_49
    iget-object v4, p0, Lmiui/view/ScreenView$SliderTouchListener;->this$0:Lmiui/view/ScreenView;

    invoke-virtual {v4, v3}, Lmiui/view/ScreenView;->snapToScreen(I)V

    .line 2361
    iget-object v4, p0, Lmiui/view/ScreenView$SliderTouchListener;->this$0:Lmiui/view/ScreenView;

    iget v5, v4, Lmiui/view/ScreenView;->mCurrentScreen:I

    iget-object v6, p0, Lmiui/view/ScreenView$SliderTouchListener;->this$0:Lmiui/view/ScreenView;

    invoke-static {v6}, Lmiui/view/ScreenView;->-$$Nest$fgetmNextScreen(Lmiui/view/ScreenView;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lmiui/view/ScreenView;->-$$Nest$mupdateSeekPoints(Lmiui/view/ScreenView;II)V

    goto :goto_78

    .line 2347
    :pswitch_5c
    iget-object v4, p0, Lmiui/view/ScreenView$SliderTouchListener;->this$0:Lmiui/view/ScreenView;

    invoke-static {v4}, Lmiui/view/ScreenView;->-$$Nest$fgetmScroller(Lmiui/view/ScreenView;)Landroid/widget/Scroller;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_71

    .line 2348
    iget-object v4, p0, Lmiui/view/ScreenView$SliderTouchListener;->this$0:Lmiui/view/ScreenView;

    invoke-static {v4}, Lmiui/view/ScreenView;->-$$Nest$fgetmScroller(Lmiui/view/ScreenView;)Landroid/widget/Scroller;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2350
    :cond_71
    iget-object v4, p0, Lmiui/view/ScreenView$SliderTouchListener;->this$0:Lmiui/view/ScreenView;

    const/4 v5, 0x3

    invoke-static {v4, p2, v5}, Lmiui/view/ScreenView;->-$$Nest$msetTouchState(Lmiui/view/ScreenView;Landroid/view/MotionEvent;I)V

    .line 2351
    nop

    .line 2365
    :goto_78
    const/4 v4, 0x1

    return v4

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_49
        :pswitch_2d
        :pswitch_49
    .end packed-switch
.end method
