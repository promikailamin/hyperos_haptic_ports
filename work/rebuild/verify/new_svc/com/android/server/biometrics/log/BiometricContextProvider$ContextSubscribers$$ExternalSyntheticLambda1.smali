.class public final synthetic Lcom/android/server/biometrics/log/BiometricContextProvider$ContextSubscribers$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/util/Pair;

.field public final synthetic f$1:Lcom/android/server/biometrics/log/OperationContextExt;

.field public final synthetic f$2:Lcom/android/server/biometrics/log/BiometricContext;


# direct methods
.method public synthetic constructor <init>(Landroid/util/Pair;Lcom/android/server/biometrics/log/OperationContextExt;Lcom/android/server/biometrics/log/BiometricContext;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$ContextSubscribers$$ExternalSyntheticLambda1;->f$0:Landroid/util/Pair;

    iput-object p2, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$ContextSubscribers$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/biometrics/log/OperationContextExt;

    iput-object p3, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$ContextSubscribers$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/biometrics/log/BiometricContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$ContextSubscribers$$ExternalSyntheticLambda1;->f$0:Landroid/util/Pair;

    iget-object v1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$ContextSubscribers$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/biometrics/log/OperationContextExt;

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$ContextSubscribers$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/biometrics/log/BiometricContext;

    invoke-static {v0, v1, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$ContextSubscribers;->$r8$lambda$gtcruUNXlkN1yRGWtTM69-BAtXI(Landroid/util/Pair;Lcom/android/server/biometrics/log/OperationContextExt;Lcom/android/server/biometrics/log/BiometricContext;)V

    return-void
.end method
