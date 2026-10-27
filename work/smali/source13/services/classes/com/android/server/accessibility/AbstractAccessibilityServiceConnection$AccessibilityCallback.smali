.class final Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$AccessibilityCallback;
.super Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback$Stub;
.source "AbstractAccessibilityServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AccessibilityCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2402
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$AccessibilityCallback-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$AccessibilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public sessionCreated(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;I)V
    .registers 8
    .param p1, "session"    # Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;
    .param p2, "id"    # I

    .line 2406
    const-wide/16 v0, 0x20

    const-string v2, "AACS.sessionCreated"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2407
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2409
    .local v2, "ident":J
    :try_start_b
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v4

    invoke-virtual {v4, p2, p1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->onSessionForAccessibilityCreated(ILcom/android/internal/inputmethod/IAccessibilityInputMethodSession;)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_1a

    .line 2411
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2412
    nop

    .line 2413
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2414
    return-void

    .line 2411
    :catchall_1a
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2412
    throw v0
.end method
