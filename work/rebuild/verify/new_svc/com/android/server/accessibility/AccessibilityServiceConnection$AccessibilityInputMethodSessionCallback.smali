.class public final Lcom/android/server/accessibility/AccessibilityServiceConnection$AccessibilityInputMethodSessionCallback;
.super Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback$Stub;
.source "AccessibilityServiceConnection.java"


# instance fields
.field public final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 118
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback$Stub;-><init>()V

    .line 119
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection$AccessibilityInputMethodSessionCallback;->mUserId:I

    return-void
.end method


# virtual methods
.method public sessionCreated(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;I)V
    .registers 8

    .line 125
    const-string v0, "ASC.sessionCreated"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 126
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 128
    :try_start_b
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v0

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection$AccessibilityInputMethodSessionCallback;->mUserId:I

    .line 129
    invoke-virtual {v0, p2, p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->onSessionForAccessibilityCreated(ILcom/android/internal/inputmethod/IAccessibilityInputMethodSession;I)V
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_1b

    .line 131
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 133
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1b
    move-exception p0

    .line 131
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 132
    throw p0
.end method
