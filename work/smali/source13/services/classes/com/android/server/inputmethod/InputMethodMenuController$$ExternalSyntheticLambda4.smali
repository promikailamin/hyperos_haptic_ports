.class public final synthetic Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

.field public final synthetic f$1:Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;

.field public final synthetic f$2:Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodMenuController;Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;

    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/inputmethod/InputMethodMenuController;->lambda$showInputMethodMenu$3$com-android-server-inputmethod-InputMethodMenuController(Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;Landroid/content/DialogInterface;I)V

    return-void
.end method
