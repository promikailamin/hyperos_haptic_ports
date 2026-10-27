.class public final synthetic Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/HandwritingModeController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/HandwritingModeController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/inputmethod/HandwritingModeController;

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-static {v0, p1}, Lcom/android/server/inputmethod/HandwritingModeController;->$r8$lambda$KpcswpYnoX8BR0b0UwQ_jhp9qE0(Lcom/android/server/inputmethod/HandwritingModeController;Landroid/view/InputEvent;)Z

    move-result p1

    return p1
.end method
