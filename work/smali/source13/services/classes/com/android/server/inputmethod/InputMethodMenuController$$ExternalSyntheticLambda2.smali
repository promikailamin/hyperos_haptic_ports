.class public final synthetic Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodMenuController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodMenuController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodMenuController;->lambda$showInputMethodMenu$1$com-android-server-inputmethod-InputMethodMenuController(Landroid/content/DialogInterface;)V

    return-void
.end method
