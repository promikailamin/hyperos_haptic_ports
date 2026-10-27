.class public Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final mCurrentValue:Landroid/view/autofill/AutofillValue;

.field public final mFocusedId:Landroid/view/autofill/AutofillId;

.field public final mIsAllowlisted:Z

.field public final mMode:I

.field public mSessionWeakRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;ZILandroid/view/autofill/AutofillValue;)V
    .registers 7

    .line 6627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6628
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->mSessionWeakRef:Ljava/lang/ref/WeakReference;

    .line 6629
    iput-object p2, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->mFocusedId:Landroid/view/autofill/AutofillId;

    .line 6630
    iput-boolean p3, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->mIsAllowlisted:Z

    .line 6631
    iput p4, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->mMode:I

    .line 6632
    iput-object p5, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    return-void
.end method


# virtual methods
.method public accept(Landroid/view/inputmethod/InlineSuggestionsRequest;)V
    .registers 9

    .line 6637
    iget-object v0, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->mSessionWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/autofill/Session;

    .line 6639
    const-string v0, "AugmentedAutofillInlineSuggestionRequestConsumer:"

    invoke-static {v1, v0}, Lcom/android/server/autofill/Session;->-$$Nest$smlogIfSessionNull(Lcom/android/server/autofill/Session;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 6642
    :cond_12
    iget-object v3, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->mFocusedId:Landroid/view/autofill/AutofillId;

    iget-boolean v4, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->mIsAllowlisted:Z

    iget v5, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->mMode:I

    iget-object v6, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/autofill/Session;->-$$Nest$monAugmentedAutofillInlineSuggestionAccept(Lcom/android/server/autofill/Session;Landroid/view/inputmethod/InlineSuggestionsRequest;Landroid/view/autofill/AutofillId;ZILandroid/view/autofill/AutofillValue;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 6613
    check-cast p1, Landroid/view/inputmethod/InlineSuggestionsRequest;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->accept(Landroid/view/inputmethod/InlineSuggestionsRequest;)V

    return-void
.end method
