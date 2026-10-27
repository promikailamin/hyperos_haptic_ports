.class Lcom/android/server/AccessibilityManagerInternal$1;
.super Lcom/android/server/AccessibilityManagerInternal;
.source "AccessibilityManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AccessibilityManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/android/server/AccessibilityManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public bindInput()V
    .registers 1

    .line 64
    return-void
.end method

.method public createImeSession(Landroid/util/ArraySet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p1, "ignoreSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    return-void
.end method

.method public setImeSessionEnabled(Landroid/util/SparseArray;Z)V
    .registers 3
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;",
            ">;Z)V"
        }
    .end annotation

    .line 56
    .local p1, "sessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;>;"
    return-void
.end method

.method public startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 4
    .param p1, "remoteAccessibility"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "restarting"    # Z

    .line 73
    return-void
.end method

.method public unbindInput()V
    .registers 1

    .line 60
    return-void
.end method
