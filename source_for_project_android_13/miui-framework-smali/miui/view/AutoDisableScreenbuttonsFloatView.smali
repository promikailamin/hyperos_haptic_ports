.class public Lmiui/view/AutoDisableScreenbuttonsFloatView;
.super Landroid/widget/FrameLayout;
.source "AutoDisableScreenbuttonsFloatView.java"


# static fields
.field private static final blacklist DISMISS_DELAY_TIME:I = 0x1f40


# instance fields
.field private blacklist mDismissRunnable:Ljava/lang/Runnable;

.field private blacklist mIsShowing:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Lmiui/view/AutoDisableScreenbuttonsFloatView$1;

    invoke-direct {v0, p0}, Lmiui/view/AutoDisableScreenbuttonsFloatView$1;-><init>(Lmiui/view/AutoDisableScreenbuttonsFloatView;)V

    iput-object v0, p0, Lmiui/view/AutoDisableScreenbuttonsFloatView;->mDismissRunnable:Ljava/lang/Runnable;

    .line 30
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance v0, Lmiui/view/AutoDisableScreenbuttonsFloatView$1;

    invoke-direct {v0, p0}, Lmiui/view/AutoDisableScreenbuttonsFloatView$1;-><init>(Lmiui/view/AutoDisableScreenbuttonsFloatView;)V

    iput-object v0, p0, Lmiui/view/AutoDisableScreenbuttonsFloatView;->mDismissRunnable:Ljava/lang/Runnable;

    .line 34
    return-void
.end method

.method public static blacklist inflate(Landroid/content/Context;)Lmiui/view/AutoDisableScreenbuttonsFloatView;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 42
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x110c0009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/view/AutoDisableScreenbuttonsFloatView;

    return-object v0
.end method


# virtual methods
.method public blacklist dismiss()V
    .registers 3

    .line 68
    iget-boolean v0, p0, Lmiui/view/AutoDisableScreenbuttonsFloatView;->mIsShowing:Z

    if-nez v0, :cond_5

    .line 69
    return-void

    .line 71
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/AutoDisableScreenbuttonsFloatView;->mIsShowing:Z

    .line 72
    iget-object v0, p0, Lmiui/view/AutoDisableScreenbuttonsFloatView;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/view/AutoDisableScreenbuttonsFloatView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 73
    iget-object v0, p0, Lmiui/view/AutoDisableScreenbuttonsFloatView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 74
    return-void
.end method

.method protected whitelist onFinishInflate()V
    .registers 1

    .line 38
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 39
    return-void
.end method

.method public blacklist show()V
    .registers 6

    .line 48
    iget-boolean v0, p0, Lmiui/view/AutoDisableScreenbuttonsFloatView;->mIsShowing:Z

    if-eqz v0, :cond_5

    .line 49
    return-void

    .line 51
    :cond_5
    iget-object v0, p0, Lmiui/view/AutoDisableScreenbuttonsFloatView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 52
    .local v0, "wm":Landroid/view/WindowManager;
    if-nez v0, :cond_12

    .line 53
    return-void

    .line 54
    :cond_12
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7da

    invoke-direct {v1, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    .line 56
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 57
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 58
    const/16 v2, 0x108

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 59
    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 60
    const v2, 0x11100001

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 61
    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-object v2, p0, Lmiui/view/AutoDisableScreenbuttonsFloatView;->mDismissRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f40

    invoke-virtual {p0, v2, v3, v4}, Lmiui/view/AutoDisableScreenbuttonsFloatView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/view/AutoDisableScreenbuttonsFloatView;->mIsShowing:Z

    .line 65
    return-void
.end method
