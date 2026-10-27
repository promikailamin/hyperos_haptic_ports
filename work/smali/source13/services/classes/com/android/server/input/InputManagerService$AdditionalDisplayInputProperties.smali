.class Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;
.super Ljava/lang/Object;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdditionalDisplayInputProperties"
.end annotation


# static fields
.field static final DEFAULT_POINTER_ACCELERATION:F = 3.0f

.field static final DEFAULT_POINTER_ICON_VISIBLE:Z = true


# instance fields
.field public pointerAcceleration:F

.field public pointerIconVisible:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .line 3949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3950
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->reset()V

    .line 3951
    return-void
.end method


# virtual methods
.method public allDefaults()Z
    .registers 3

    .line 3954
    iget v0, p0, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerAcceleration:F

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    if-ne v0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public reset()V
    .registers 2

    .line 3959
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerAcceleration:F

    .line 3960
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    .line 3961
    return-void
.end method
