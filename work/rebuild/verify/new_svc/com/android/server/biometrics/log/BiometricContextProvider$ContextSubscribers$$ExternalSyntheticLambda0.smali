.class public final synthetic Lcom/android/server/biometrics/log/BiometricContextProvider$ContextSubscribers$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/log/BiometricContext;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/log/BiometricContext;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$ContextSubscribers$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/log/BiometricContext;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$ContextSubscribers$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/log/BiometricContext;

    check-cast p1, Lcom/android/server/biometrics/log/OperationContextExt;

    check-cast p2, Landroid/util/Pair;

    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/log/BiometricContextProvider$ContextSubscribers;->$r8$lambda$fxO1DpqAdu-TWnwsnK67C1mWWY4(Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/log/OperationContextExt;Landroid/util/Pair;)V

    return-void
.end method
