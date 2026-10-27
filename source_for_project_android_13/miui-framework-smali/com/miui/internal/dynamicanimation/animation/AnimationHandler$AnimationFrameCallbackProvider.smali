.class abstract Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;
.super Ljava/lang/Object;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AnimationFrameCallbackProvider"
.end annotation


# instance fields
.field final blacklist mDispatcher:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;


# direct methods
.method constructor blacklist <init>(Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;)V
    .registers 2
    .param p1, "dispatcher"    # Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p1, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;->mDispatcher:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    .line 254
    return-void
.end method


# virtual methods
.method abstract blacklist postFrameCallback()V
.end method
