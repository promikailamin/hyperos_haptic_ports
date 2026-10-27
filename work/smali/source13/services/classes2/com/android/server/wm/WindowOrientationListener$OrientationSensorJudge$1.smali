.class Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->onSensorChanged(Landroid/hardware/SensorEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mCallbackId:I

.field final synthetic this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

.field final synthetic val$reportedRotation:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;I)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    .line 1222
    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    iput p2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->val$reportedRotation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1223
    invoke-static {p1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->-$$Nest$fgetmCurrentCallbackId(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->mCallbackId:I

    return-void
.end method

.method private finalizeRotationIfFresh(I)V
    .registers 5
    .param p1, "rotation"    # I

    .line 1236
    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->mCallbackId:I

    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    invoke-static {v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->-$$Nest$fgetmCurrentCallbackId(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;)I

    move-result v1

    if-ne v0, v1, :cond_21

    .line 1237
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    iget-object v0, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowOrientationListener;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    invoke-static {v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->-$$Nest$fgetmCancelRotationResolverRequest(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1238
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    invoke-static {v0, p1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->-$$Nest$mfinalizeRotation(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;I)V

    goto :goto_45

    .line 1240
    :cond_21
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->mCallbackId:I

    .line 1243
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    invoke-static {v2}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->-$$Nest$fgetmCurrentCallbackId(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1240
    const-string v1, "An outdated callback received [%s vs. %s]. Ignoring it."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowOrientationListener"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    :goto_45
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 3
    .param p1, "error"    # I

    .line 1231
    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->val$reportedRotation:I

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->finalizeRotationIfFresh(I)V

    .line 1232
    return-void
.end method

.method public onSuccess(I)V
    .registers 2
    .param p1, "result"    # I

    .line 1226
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->finalizeRotationIfFresh(I)V

    .line 1227
    return-void
.end method
