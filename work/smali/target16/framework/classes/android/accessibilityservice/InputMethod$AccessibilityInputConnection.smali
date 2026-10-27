.class public final Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;
.super Ljava/lang/Object;
.source "InputMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/InputMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AccessibilityInputConnection"
.end annotation


# instance fields
.field private final blacklist mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;


# direct methods
.method constructor blacklist <init>(Landroid/accessibilityservice/InputMethod;Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p2, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    .line 201
    return-void
.end method


# virtual methods
.method public whitelist clearMetaKeyStates(I)V
    .registers 3

    .line 483
    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    if-eqz v0, :cond_9

    .line 484
    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->clearMetaKeyStates(I)V

    .line 486
    :cond_9
    return-void
.end method

.method public whitelist commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .registers 5

    .line 236
    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    if-eqz v0, :cond_9

    .line 237
    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    .line 239
    :cond_9
    return-void
.end method

.method public whitelist deleteSurroundingText(II)V
    .registers 4

    .line 363
    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    if-eqz v0, :cond_9

    .line 364
    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->deleteSurroundingText(II)V

    .line 366
    :cond_9
    return-void
.end method

.method public whitelist getCursorCapsMode(I)I
    .registers 3

    .line 465
    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    if-eqz v0, :cond_b

    .line 466
    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->getCursorCapsMode(I)I

    move-result p1

    return p1

    .line 468
    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;
    .registers 5

    .line 306
    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    if-eqz v0, :cond_b

    .line 307
    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;

    move-result-object p1

    return-object p1

    .line 309
    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist performContextMenuAction(I)V
    .registers 3

    .line 431
    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    if-eqz v0, :cond_9

    .line 432
    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->performContextMenuAction(I)V

    .line 434
    :cond_9
    return-void
.end method

.method public whitelist performEditorAction(I)V
    .registers 3

    .line 417
    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    if-eqz v0, :cond_9

    .line 418
    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->performEditorAction(I)V

    .line 420
    :cond_9
    return-void
.end method

.method public whitelist sendKeyEvent(Landroid/view/KeyEvent;)V
    .registers 3

    .line 403
    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    if-eqz v0, :cond_9

    .line 404
    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)V

    .line 406
    :cond_9
    return-void
.end method

.method public whitelist setSelection(II)V
    .registers 4

    .line 265
    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    if-eqz v0, :cond_9

    .line 266
    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->setSelection(II)V

    .line 268
    :cond_9
    return-void
.end method
