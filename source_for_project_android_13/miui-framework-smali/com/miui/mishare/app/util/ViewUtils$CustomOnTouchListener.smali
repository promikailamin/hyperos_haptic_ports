.class Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/app/util/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomOnTouchListener"
.end annotation


# instance fields
.field private blacklist animator:Landroid/animation/ValueAnimator;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener;-><init>()V

    return-void
.end method

.method private blacklist animateDown(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 69
    iget-object v0, p0, Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 71
    :cond_f
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x3f666666    # 0.9f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener;->animator:Landroid/animation/ValueAnimator;

    .line 72
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 73
    iget-object v0, p0, Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 74
    iget-object v0, p0, Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener$2;-><init>(Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 83
    iget-object v0, p0, Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 84
    return-void
.end method

.method private blacklist animateUp(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 50
    iget-object v0, p0, Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 52
    :cond_f
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener;->animator:Landroid/animation/ValueAnimator;

    .line 53
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 54
    iget-object v0, p0, Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 55
    iget-object v0, p0, Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener$1;-><init>(Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 64
    iget-object v0, p0, Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 35
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    :pswitch_7
    goto :goto_10

    .line 42
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener;->animateUp(Landroid/view/View;)V

    goto :goto_10

    .line 37
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener;->animateDown(Landroid/view/View;)V

    .line 38
    nop

    .line 45
    :goto_10
    const/4 v0, 0x0

    return v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_c
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method
