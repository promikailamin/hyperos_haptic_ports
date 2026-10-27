.class public final synthetic Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->$r8$lambda$bxiZufsrL-d-_9R1YsdvJPnGOVA(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)Lvendor/aospa/biometrics/face/ISenseService;

    move-result-object p0

    return-object p0
.end method
