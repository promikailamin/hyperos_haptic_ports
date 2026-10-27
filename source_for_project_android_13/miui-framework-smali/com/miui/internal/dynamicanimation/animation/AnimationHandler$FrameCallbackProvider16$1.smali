.class Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16$1;
.super Ljava/lang/Object;
.source "AnimationHandler.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;-><init>(Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;


# direct methods
.method constructor blacklist <init>(Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;

    .line 200
    iput-object p1, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16$1;->this$0:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist doFrame(J)V
    .registers 4
    .param p1, "frameTimeNanos"    # J

    .line 203
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16$1;->this$0:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;

    iget-object v0, v0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;->mDispatcher:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    invoke-virtual {v0}, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;->dispatchAnimationFrame()V

    .line 204
    return-void
.end method
