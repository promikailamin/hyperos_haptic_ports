.class public final synthetic Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/BiometricScheduler;JLjava/util/function/Consumer;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iput-wide p2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda0;->f$1:J

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda0;->f$2:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda0;->f$1:J

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda0;->f$2:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->lambda$getCurrentClientIfMatches$0$com-android-server-biometrics-sensors-BiometricScheduler(JLjava/util/function/Consumer;)V

    return-void
.end method
