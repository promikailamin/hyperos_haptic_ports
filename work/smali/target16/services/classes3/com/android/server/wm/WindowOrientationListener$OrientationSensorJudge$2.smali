.class public Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;)V
    .registers 2

    .line 1342
    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1346
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    iget-object v0, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-static {v0}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$fgetmLock(Lcom/android/server/wm/WindowOrientationListener;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1347
    :try_start_9
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->-$$Nest$fputmRotationEvaluationScheduled(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;Z)V

    .line 1348
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->evaluateRotationChangeLocked()I

    move-result v1

    .line 1349
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_20

    if-ltz v1, :cond_1f

    .line 1351
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowOrientationListener;->onProposedRotationChanged(I)V

    :cond_1f
    return-void

    :catchall_20
    move-exception p0

    .line 1349
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p0
.end method
