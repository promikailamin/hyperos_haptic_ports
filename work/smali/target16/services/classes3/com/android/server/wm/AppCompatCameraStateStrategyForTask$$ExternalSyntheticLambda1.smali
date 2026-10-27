.class public final synthetic Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/CameraAppInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/CameraAppInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/CameraAppInfo;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/CameraAppInfo;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {p0, p1}, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask;->$r8$lambda$ymPzVVsCuzCSHqhOaWKfZ3mlMKE(Lcom/android/server/wm/CameraAppInfo;Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method
