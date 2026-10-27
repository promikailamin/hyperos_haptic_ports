.class public final synthetic Lcom/android/server/power/FaceDownDetector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/FaceDownDetector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/FaceDownDetector;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/FaceDownDetector$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/FaceDownDetector;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/FaceDownDetector$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/FaceDownDetector;

    invoke-virtual {v0, p1}, Lcom/android/server/power/FaceDownDetector;->lambda$systemReady$1$com-android-server-power-FaceDownDetector(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
