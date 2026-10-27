.class public Lmiui/freedrag/MiuiFreeDragViewDragListener;
.super Ljava/lang/Object;
.source "MiuiFreeDragViewDragListener.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/freedrag/MiuiFreeDragViewDragListener$DelUriHandler;
    }
.end annotation


# static fields
.field private static final blacklist MSG_DEL_TARGET_URI:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "MiuiFreeDragViewDragListener"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDeferDelUri:Landroid/net/Uri;

.field private final blacklist mDelUriHandler:Lmiui/freedrag/MiuiFreeDragViewDragListener$DelUriHandler;

.field private final blacklist mFreeDragShadowBuilder:Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;

.field private blacklist mMoved:Z

.field private blacklist mStartAlpha:F

.field private blacklist mStartX:F

.field private blacklist mStartY:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lmiui/freedrag/MiuiFreeDragViewDragListener;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeferDelUri(Lmiui/freedrag/MiuiFreeDragViewDragListener;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener;->mDeferDelUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeferDelUri(Lmiui/freedrag/MiuiFreeDragViewDragListener;Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener;->mDeferDelUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/net/Uri;Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "freeDragShadowBuilder"    # Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lmiui/freedrag/MiuiFreeDragViewDragListener$DelUriHandler;

    invoke-direct {v0, p0}, Lmiui/freedrag/MiuiFreeDragViewDragListener$DelUriHandler;-><init>(Lmiui/freedrag/MiuiFreeDragViewDragListener;)V

    iput-object v0, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener;->mDelUriHandler:Lmiui/freedrag/MiuiFreeDragViewDragListener$DelUriHandler;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener;->mMoved:Z

    .line 29
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener;->mStartAlpha:F

    .line 32
    iput-object p1, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener;->mDeferDelUri:Landroid/net/Uri;

    .line 34
    iput-object p3, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener;->mFreeDragShadowBuilder:Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new MiuiFreeDragViewDragListener, uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiFreeDragViewDragListener"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method

.method private blacklist onMove(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener;->mMoved:Z

    .line 85
    iget-object v0, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener;->mFreeDragShadowBuilder:Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;

    const/16 v1, 0x99

    invoke-virtual {v0, v1}, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;->setAlpha(I)V

    .line 86
    iget-object v0, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener;->mFreeDragShadowBuilder:Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;

    invoke-virtual {p1, v0}, Landroid/view/View;->updateDragShadow(Landroid/view/View$DragShadowBuilder;)V

    .line 87
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onDrag$0$miui-freedrag-MiuiFreeDragViewDragListener(Landroid/view/View;Landroid/view/DragEvent;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dragEvent"    # Landroid/view/DragEvent;

    .line 50
    invoke-virtual {p0, p1, p2}, Lmiui/freedrag/MiuiFreeDragViewDragListener;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    return-void
.end method

.method public whitelist onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .line 42
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_9e

    .line 79
    :pswitch_8
    return v1

    .line 59
    :pswitch_9
    iget-boolean v0, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener;->mMoved:Z

    if-nez v0, :cond_16

    invoke-virtual {p1}, Landroid/view/View;->getDragToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 60
    invoke-direct {p0, p1}, Lmiui/freedrag/MiuiFreeDragViewDragListener;->onMove(Landroid/view/View;)V

    .line 62
    :cond_16
    return v1

    .line 65
    :pswitch_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received DragEvent.ACTION_DRAG_ENDED, uri="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener;->mDeferDelUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MiuiFreeDragViewDragListener"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener;->mDeferDelUri:Landroid/net/Uri;

    if-eqz v0, :cond_42

    .line 68
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 69
    .local v0, "msg":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 70
    iget-object v2, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener;->mDelUriHandler:Lmiui/freedrag/MiuiFreeDragViewDragListener$DelUriHandler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v0, v3, v4}, Lmiui/freedrag/MiuiFreeDragViewDragListener$DelUriHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 72
    .end local v0    # "msg":Landroid/os/Message;
    :cond_42
    iget v0, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener;->mStartAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 74
    sput-object v0, Landroid/view/ViewRootImpl;->mMiuiFreeDragEventConsumer:Ljava/util/function/Consumer;

    .line 75
    return v1

    .line 77
    :pswitch_4e
    const/4 v0, 0x0

    return v0

    .line 53
    :pswitch_50
    iget-boolean v0, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener;->mMoved:Z

    if-nez v0, :cond_78

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v0

    iget v2, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener;->mStartX:F

    sub-float/2addr v0, v2

    float-to-double v2, v0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v0

    iget v4, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener;->mStartY:F

    sub-float/2addr v0, v4

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    sget v0, Lmiui/freedrag/MiuiFreeDragConstants;->TOUCH_SLOP:F

    float-to-double v4, v0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_78

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getDragToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_78

    .line 55
    invoke-direct {p0, p1}, Lmiui/freedrag/MiuiFreeDragViewDragListener;->onMove(Landroid/view/View;)V

    .line 57
    :cond_78
    return v1

    .line 44
    :pswitch_79
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    iput v0, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener;->mStartAlpha:F

    .line 45
    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 46
    iget-boolean v0, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener;->mMoved:Z

    if-nez v0, :cond_95

    .line 47
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v0

    iput v0, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener;->mStartX:F

    .line 48
    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v0

    iput v0, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener;->mStartY:F

    .line 50
    :cond_95
    new-instance v0, Lmiui/freedrag/MiuiFreeDragViewDragListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lmiui/freedrag/MiuiFreeDragViewDragListener$$ExternalSyntheticLambda0;-><init>(Lmiui/freedrag/MiuiFreeDragViewDragListener;Landroid/view/View;)V

    sput-object v0, Landroid/view/ViewRootImpl;->mMiuiFreeDragEventConsumer:Ljava/util/function/Consumer;

    .line 51
    return v1

    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_79
        :pswitch_50
        :pswitch_4e
        :pswitch_17
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
