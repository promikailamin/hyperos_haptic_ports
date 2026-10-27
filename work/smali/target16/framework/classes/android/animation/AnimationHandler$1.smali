.class Landroid/animation/AnimationHandler$1;
.super Ljava/lang/Object;
.source "AnimationHandler.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/animation/AnimationHandler;


# direct methods
.method constructor blacklist <init>(Landroid/animation/AnimationHandler;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 103
    iput-object p1, p0, Landroid/animation/AnimationHandler$1;->this$0:Landroid/animation/AnimationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist doFrame(J)V
    .registers 5

    .line 106
    iget-object p1, p0, Landroid/animation/AnimationHandler$1;->this$0:Landroid/animation/AnimationHandler;

    iget-object p2, p0, Landroid/animation/AnimationHandler$1;->this$0:Landroid/animation/AnimationHandler;

    invoke-static {p2}, Landroid/animation/AnimationHandler;->-$$Nest$mgetProvider(Landroid/animation/AnimationHandler;)Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object p2

    invoke-interface {p2}, Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;->getFrameTime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Landroid/animation/AnimationHandler;->-$$Nest$mdoAnimationFrame(Landroid/animation/AnimationHandler;J)V

    .line 107
    iget-object p1, p0, Landroid/animation/AnimationHandler$1;->this$0:Landroid/animation/AnimationHandler;

    invoke-static {p1}, Landroid/animation/AnimationHandler;->-$$Nest$fgetmAnimationCallbacks(Landroid/animation/AnimationHandler;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_24

    .line 108
    iget-object p1, p0, Landroid/animation/AnimationHandler$1;->this$0:Landroid/animation/AnimationHandler;

    invoke-static {p1}, Landroid/animation/AnimationHandler;->-$$Nest$mgetProvider(Landroid/animation/AnimationHandler;)Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 110
    :cond_24
    return-void
.end method
