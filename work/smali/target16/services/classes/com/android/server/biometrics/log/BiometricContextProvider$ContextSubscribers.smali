.class public final Lcom/android/server/biometrics/log/BiometricContextProvider$ContextSubscribers;
.super Ljava/lang/Object;
.source "BiometricContextProvider.java"


# instance fields
.field public final mSubscribers:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$fxO1DpqAdu-TWnwsnK67C1mWWY4(Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/log/OperationContextExt;Landroid/util/Pair;)V
    .registers 5

    .line 292
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    .line 293
    new-instance v1, Lcom/android/server/biometrics/log/BiometricContextProvider$ContextSubscribers$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p1, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$ContextSubscribers$$ExternalSyntheticLambda1;-><init>(Landroid/util/Pair;Lcom/android/server/biometrics/log/OperationContextExt;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 296
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p0

    if-eqz p0, :cond_17

    .line 297
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 299
    :cond_17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$gtcruUNXlkN1yRGWtTM69-BAtXI(Landroid/util/Pair;Lcom/android/server/biometrics/log/OperationContextExt;Lcom/android/server/biometrics/log/BiometricContext;)V
    .registers 4

    .line 293
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Consumer;

    .line 294
    invoke-virtual {p1}, Lcom/android/server/biometrics/log/OperationContextExt;->isCrypto()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/android/server/biometrics/log/OperationContextExt;->update(Lcom/android/server/biometrics/log/BiometricContext;Z)Lcom/android/server/biometrics/log/OperationContextExt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/biometrics/log/OperationContextExt;->toAidlContext()Landroid/hardware/biometrics/common/OperationContext;

    move-result-object p1

    .line 293
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$ContextSubscribers;->mSubscribers:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/log/BiometricContextProvider-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$ContextSubscribers;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/biometrics/log/OperationContextExt;Ljava/util/function/Consumer;Landroid/os/Handler;)V
    .registers 5

    .line 283
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$ContextSubscribers;->mSubscribers:Ljava/util/Map;

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public notifySubscribers(Lcom/android/server/biometrics/log/BiometricContext;)V
    .registers 3

    .line 291
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$ContextSubscribers;->mSubscribers:Ljava/util/Map;

    new-instance v0, Lcom/android/server/biometrics/log/BiometricContextProvider$ContextSubscribers$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/log/BiometricContextProvider$ContextSubscribers$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/log/BiometricContext;)V

    invoke-interface {p0, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public remove(Lcom/android/server/biometrics/log/OperationContextExt;)V
    .registers 2

    .line 287
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$ContextSubscribers;->mSubscribers:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
