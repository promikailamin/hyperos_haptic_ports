.class public Lmiui/freedrag/MiuiFreeDragInputListener;
.super Ljava/lang/Object;
.source "MiuiFreeDragInputListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/freedrag/MiuiFreeDragInputListener$DragModeCallback;,
        Lmiui/freedrag/MiuiFreeDragInputListener$LongPressHandler;
    }
.end annotation


# static fields
.field private static final blacklist MSG_DRAG_LONG_PRESS:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "MiuiFreeDragInputListener"


# instance fields
.field private blacklist mDecorViewForLongClick:Landroid/view/View;

.field private blacklist mDecorViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDragModeCallback:Lmiui/freedrag/MiuiFreeDragInputListener$DragModeCallback;

.field private final blacklist mHandler:Lmiui/freedrag/MiuiFreeDragInputListener$LongPressHandler;

.field private blacklist mPoint:Landroid/graphics/PointF;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDecorViewForLongClick(Lmiui/freedrag/MiuiFreeDragInputListener;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lmiui/freedrag/MiuiFreeDragInputListener;->mDecorViewForLongClick:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDragModeCallback(Lmiui/freedrag/MiuiFreeDragInputListener;)Lmiui/freedrag/MiuiFreeDragInputListener$DragModeCallback;
    .registers 1

    iget-object p0, p0, Lmiui/freedrag/MiuiFreeDragInputListener;->mDragModeCallback:Lmiui/freedrag/MiuiFreeDragInputListener$DragModeCallback;

    return-object p0
.end method

.method public constructor blacklist <init>(Lmiui/freedrag/MiuiFreeDragInputListener$DragModeCallback;)V
    .registers 3
    .param p1, "callback"    # Lmiui/freedrag/MiuiFreeDragInputListener$DragModeCallback;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/freedrag/MiuiFreeDragInputListener;->mPoint:Landroid/graphics/PointF;

    .line 31
    iput-object p1, p0, Lmiui/freedrag/MiuiFreeDragInputListener;->mDragModeCallback:Lmiui/freedrag/MiuiFreeDragInputListener$DragModeCallback;

    .line 32
    new-instance v0, Lmiui/freedrag/MiuiFreeDragInputListener$LongPressHandler;

    invoke-direct {v0, p0}, Lmiui/freedrag/MiuiFreeDragInputListener$LongPressHandler;-><init>(Lmiui/freedrag/MiuiFreeDragInputListener;)V

    iput-object v0, p0, Lmiui/freedrag/MiuiFreeDragInputListener;->mHandler:Lmiui/freedrag/MiuiFreeDragInputListener$LongPressHandler;

    .line 33
    return-void
.end method

.method private blacklist cancelEvent()V
    .registers 3

    .line 91
    iget-object v0, p0, Lmiui/freedrag/MiuiFreeDragInputListener;->mHandler:Lmiui/freedrag/MiuiFreeDragInputListener$LongPressHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/freedrag/MiuiFreeDragInputListener$LongPressHandler;->removeMessages(I)V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/freedrag/MiuiFreeDragInputListener;->mDecorViewForLongClick:Landroid/view/View;

    .line 93
    iput-object v0, p0, Lmiui/freedrag/MiuiFreeDragInputListener;->mPoint:Landroid/graphics/PointF;

    .line 94
    return-void
.end method


# virtual methods
.method public blacklist dispatchTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rootView"    # Landroid/view/View;

    .line 36
    iget-object v0, p0, Lmiui/freedrag/MiuiFreeDragInputListener;->mDecorViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_14

    .line 38
    :cond_a
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/freedrag/MiuiFreeDragInputListener;->mDecorViewRef:Ljava/lang/ref/WeakReference;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/freedrag/MiuiFreeDragInputListener;->mPoint:Landroid/graphics/PointF;

    .line 41
    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_8e

    goto/16 :goto_8c

    .line 74
    :pswitch_1d
    invoke-direct {p0}, Lmiui/freedrag/MiuiFreeDragInputListener;->cancelEvent()V

    .line 75
    goto :goto_8c

    .line 61
    :pswitch_21
    iget-object v0, p0, Lmiui/freedrag/MiuiFreeDragInputListener;->mPoint:Landroid/graphics/PointF;

    if-eqz v0, :cond_8c

    .line 62
    nop

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lmiui/freedrag/MiuiFreeDragInputListener;->mPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lmiui/freedrag/MiuiFreeDragInputListener;->mPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    .line 62
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 64
    .local v0, "pointerMove":F
    sget v1, Lmiui/freedrag/MiuiFreeDragConstants;->TOUCH_SLOP:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_49

    .line 65
    invoke-direct {p0}, Lmiui/freedrag/MiuiFreeDragInputListener;->cancelEvent()V

    .line 66
    goto :goto_8c

    .line 68
    .end local v0    # "pointerMove":F
    :cond_49
    goto :goto_8c

    .line 80
    :pswitch_4a
    invoke-direct {p0}, Lmiui/freedrag/MiuiFreeDragInputListener;->cancelEvent()V

    .line 81
    goto :goto_8c

    .line 43
    :pswitch_4e
    invoke-virtual {p2}, Landroid/view/View;->getAttachedActivityInstance()Landroid/app/Activity;

    move-result-object v0

    .line 44
    .local v0, "attachedActivity":Landroid/app/Activity;
    if-eqz v0, :cond_8c

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eq p2, v1, :cond_5f

    .line 48
    goto :goto_8c

    .line 53
    :cond_5f
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lmiui/freedrag/MiuiFreeDragInputListener;->mPoint:Landroid/graphics/PointF;

    .line 54
    iget-object v1, p0, Lmiui/freedrag/MiuiFreeDragInputListener;->mDecorViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lmiui/freedrag/MiuiFreeDragInputListener;->mDecorViewForLongClick:Landroid/view/View;

    .line 55
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 56
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lmiui/freedrag/MiuiFreeDragInputListener;->mPoint:Landroid/graphics/PointF;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 57
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 58
    iget-object v2, p0, Lmiui/freedrag/MiuiFreeDragInputListener;->mHandler:Lmiui/freedrag/MiuiFreeDragInputListener$LongPressHandler;

    sget v3, Lmiui/freedrag/MiuiFreeDragConstants;->LONG_PRESS_MILLIS:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lmiui/freedrag/MiuiFreeDragInputListener$LongPressHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 59
    nop

    .line 85
    .end local v0    # "attachedActivity":Landroid/app/Activity;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_8c
    :goto_8c
    return-void

    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_4a
        :pswitch_21
        :pswitch_1d
    .end packed-switch
.end method
