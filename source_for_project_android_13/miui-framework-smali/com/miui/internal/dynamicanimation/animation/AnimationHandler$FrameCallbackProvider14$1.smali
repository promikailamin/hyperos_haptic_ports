.class Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14$1;
.super Ljava/lang/Object;
.source "AnimationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;-><init>(Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;


# direct methods
.method constructor blacklist <init>(Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;

    .line 226
    iput-object p1, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14$1;->this$0:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 229
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14$1;->this$0:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;->mLastFrameTime:J

    .line 230
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14$1;->this$0:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;

    iget-object v0, v0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;->mDispatcher:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    invoke-virtual {v0}, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;->dispatchAnimationFrame()V

    .line 231
    return-void
.end method
