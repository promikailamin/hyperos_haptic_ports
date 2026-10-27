.class public abstract Lcom/android/server/AccessibilityManagerInternal;
.super Ljava/lang/Object;
.source "AccessibilityManagerInternal.java"


# static fields
.field private static final NOP:Lcom/android/server/AccessibilityManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Lcom/android/server/AccessibilityManagerInternal$1;

    invoke-direct {v0}, Lcom/android/server/AccessibilityManagerInternal$1;-><init>()V

    sput-object v0, Lcom/android/server/AccessibilityManagerInternal;->NOP:Lcom/android/server/AccessibilityManagerInternal;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/android/server/AccessibilityManagerInternal;
    .registers 2

    .line 81
    const-class v0, Lcom/android/server/AccessibilityManagerInternal;

    .line 82
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AccessibilityManagerInternal;

    .line 83
    .local v0, "instance":Lcom/android/server/AccessibilityManagerInternal;
    if-eqz v0, :cond_c

    move-object v1, v0

    goto :goto_e

    :cond_c
    sget-object v1, Lcom/android/server/AccessibilityManagerInternal;->NOP:Lcom/android/server/AccessibilityManagerInternal;

    :goto_e
    return-object v1
.end method


# virtual methods
.method public abstract bindInput()V
.end method

.method public abstract createImeSession(Landroid/util/ArraySet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setImeSessionEnabled(Landroid/util/SparseArray;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
.end method

.method public abstract unbindInput()V
.end method
