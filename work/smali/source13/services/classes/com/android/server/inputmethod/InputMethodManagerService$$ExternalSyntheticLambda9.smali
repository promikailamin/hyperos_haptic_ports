.class public final synthetic Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    check-cast p1, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$maybeInitImeNavbarConfigLocked$0$com-android-server-inputmethod-InputMethodManagerService(Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;)V

    return-void
.end method
