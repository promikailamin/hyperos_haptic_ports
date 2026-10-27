.class public Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;
.super Ljava/lang/Object;
.source "ImeVisibilityStateComputer.java"


# instance fields
.field public mA11yRequestingNoSoftKeyboard:Z

.field public mImeHiddenByDisplayPolicy:Z

.field public mPendingA11yRequestingHideKeyboard:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmA11yRequestingNoSoftKeyboard(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mA11yRequestingNoSoftKeyboard:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmImeHiddenByDisplayPolicy(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mImeHiddenByDisplayPolicy:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingA11yRequestingHideKeyboard(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mPendingA11yRequestingHideKeyboard:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmPendingA11yRequestingHideKeyboard(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mPendingA11yRequestingHideKeyboard:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isA11yRequestNoSoftKeyboard()Z
    .registers 1

    .line 603
    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mA11yRequestingNoSoftKeyboard:Z

    return p0
.end method

.method public isImeHiddenByDisplayPolicy()Z
    .registers 1

    .line 589
    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mImeHiddenByDisplayPolicy:Z

    return p0
.end method

.method public setA11yRequestNoSoftKeyboard(I)V
    .registers 3

    and-int/lit8 p1, p1, 0x3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    move p1, v0

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 594
    :goto_8
    iput-boolean p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mA11yRequestingNoSoftKeyboard:Z

    if-eqz p1, :cond_e

    .line 597
    iput-boolean v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mPendingA11yRequestingHideKeyboard:Z

    :cond_e
    return-void
.end method

.method public setImeHiddenByDisplayPolicy(Z)V
    .registers 2

    .line 584
    iput-boolean p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mImeHiddenByDisplayPolicy:Z

    return-void
.end method
