.class public final synthetic Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/inputmethod/ImeTracker$Token;

.field public final synthetic f$1:Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;

.field public final synthetic f$2:Landroid/os/IBinder;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/inputmethod/ImeTracker$Token;Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;Landroid/os/IBinder;Z)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;->f$0:Landroid/view/inputmethod/ImeTracker$Token;

    iput-object p2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;

    iput-object p3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;->f$2:Landroid/os/IBinder;

    iput-boolean p4, p0, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;->f$0:Landroid/view/inputmethod/ImeTracker$Token;

    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;

    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;->f$2:Landroid/os/IBinder;

    iget-boolean p0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;->f$3:Z

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->$r8$lambda$0bLR65BJCQP9gy7MdQKZ14IPtuU(Landroid/view/inputmethod/ImeTracker$Token;Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;Landroid/os/IBinder;Z)V

    return-void
.end method
