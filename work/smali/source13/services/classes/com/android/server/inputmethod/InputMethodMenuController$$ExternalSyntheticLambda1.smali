.class public final synthetic Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodMenuController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodMenuController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodMenuController;->lambda$hideInputMethodMenuLocked$6$com-android-server-inputmethod-InputMethodMenuController()V

    return-void
.end method
