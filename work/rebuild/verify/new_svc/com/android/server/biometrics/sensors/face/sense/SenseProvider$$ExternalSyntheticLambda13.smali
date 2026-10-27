.class public final synthetic Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    check-cast p1, Lcom/android/server/biometrics/AuthenticationStatsCollector;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->$r8$lambda$L2oPTjfkuqbi8eKoWgpUFthclGA(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Lcom/android/server/biometrics/AuthenticationStatsCollector;)V

    return-void
.end method
