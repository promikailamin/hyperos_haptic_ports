.class public final synthetic Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

.field public final synthetic f$1:Lcom/android/internal/inputmethod/IInputMethodClient;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

    iput-object p2, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda4;->f$1:Lcom/android/internal/inputmethod/IInputMethodClient;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda4;->f$1:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-static {v0, p0}, Lcom/android/server/inputmethod/ZeroJankProxy;->$r8$lambda$V0ZqpmDJQSHCFEus0JNa2UUMOY4(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;)V

    return-void
.end method
