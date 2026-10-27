.class final Landroid/view/Choreographer$CallbackRecord;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackRecord"
.end annotation


# instance fields
.field public greylist-max-o action:Ljava/lang/Object;

.field public greylist-max-o dueTime:J

.field public greylist-max-o next:Landroid/view/Choreographer$CallbackRecord;

.field public greylist-max-o token:Ljava/lang/Object;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/Choreographer-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/Choreographer$CallbackRecord;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-r run(J)V
    .registers 5

    .line 1627
    iget-object v0, p0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    invoke-static {}, Landroid/view/Choreographer;->-$$Nest$sfgetFRAME_CALLBACK_TOKEN()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_10

    .line 1628
    iget-object v0, p0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    check-cast v0, Landroid/view/Choreographer$FrameCallback;

    invoke-interface {v0, p1, p2}, Landroid/view/Choreographer$FrameCallback;->doFrame(J)V

    goto :goto_17

    .line 1630
    :cond_10
    iget-object p1, p0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1632
    :goto_17
    return-void
.end method

.method blacklist run(Landroid/view/Choreographer$FrameData;)V
    .registers 4

    .line 1635
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/Choreographer$FrameData;->setInCallback(Z)V

    .line 1636
    iget-object v0, p0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    invoke-static {}, Landroid/view/Choreographer;->-$$Nest$sfgetVSYNC_CALLBACK_TOKEN()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_14

    .line 1637
    iget-object v0, p0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    check-cast v0, Landroid/view/Choreographer$VsyncCallback;

    invoke-interface {v0, p1}, Landroid/view/Choreographer$VsyncCallback;->onVsync(Landroid/view/Choreographer$FrameData;)V

    goto :goto_1b

    .line 1639
    :cond_14
    invoke-virtual {p1}, Landroid/view/Choreographer$FrameData;->getFrameTimeNanos()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/view/Choreographer$CallbackRecord;->run(J)V

    .line 1641
    :goto_1b
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Choreographer$FrameData;->setInCallback(Z)V

    .line 1642
    return-void
.end method
