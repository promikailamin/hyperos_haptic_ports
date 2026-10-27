.class public Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;
.super Ljava/lang/Object;
.source "InputManagerService.java"


# instance fields
.field public mouseScalingEnabled:Z

.field public pointerIconVisible:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4037
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->reset()V

    return-void
.end method


# virtual methods
.method public allDefaults()Z
    .registers 3

    .line 4041
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->mouseScalingEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    iget-boolean p0, p0, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    if-ne p0, v1, :cond_a

    return v1

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x1

    .line 4046
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->mouseScalingEnabled:Z

    .line 4047
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    return-void
.end method
