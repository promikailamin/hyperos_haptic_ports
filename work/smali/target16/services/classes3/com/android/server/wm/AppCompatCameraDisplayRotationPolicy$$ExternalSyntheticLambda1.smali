.class public final synthetic Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;ILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;

    iput p2, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;

    iget v1, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy$$ExternalSyntheticLambda1;->f$1:I

    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->$r8$lambda$PSgdYEGE7v1gClAckJvT-gczTgs(Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;ILjava/lang/String;)V

    return-void
.end method
