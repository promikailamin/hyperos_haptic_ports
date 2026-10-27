.class public Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public mSessionWeakRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/Session;)V
    .registers 3

    .line 6652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6653
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;->mSessionWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/server/autofill/ui/InlineFillUi;)Ljava/lang/Boolean;
    .registers 3

    .line 6658
    iget-object p0, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;->mSessionWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/Session;

    .line 6660
    const-string v0, "AugmentedAutofillInlineSuggestionsResponseCallback:"

    invoke-static {p0, v0}, Lcom/android/server/autofill/Session;->-$$Nest$smlogIfSessionNull(Lcom/android/server/autofill/Session;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 6661
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 6664
    :cond_13
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6665
    :try_start_16
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillInlineSessionController;->setInlineFillUiLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_22
    move-exception p0

    .line 6666
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 6647
    check-cast p1, Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;->apply(Lcom/android/server/autofill/ui/InlineFillUi;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
