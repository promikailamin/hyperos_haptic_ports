.class public final synthetic Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodMenuController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodMenuController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/inputmethod/InputMethodMenuController;->lambda$showInputMethodMenu$2$com-android-server-inputmethod-InputMethodMenuController(Landroid/widget/CompoundButton;Z)V

    return-void
.end method
