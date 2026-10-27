.class public interface abstract Lcom/android/server/input/KeyboardCombinationManagerStub;
.super Ljava/lang/Object;
.source "KeyboardCombinationManagerStub.java"


# direct methods
.method public static get()Lcom/android/server/input/KeyboardCombinationManagerStub;
    .registers 1

    .line 12
    const-class v0, Lcom/android/server/input/KeyboardCombinationManagerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/KeyboardCombinationManagerStub;

    return-object v0
.end method


# virtual methods
.method public abstract init(Landroid/content/Context;)V
.end method

.method public interceptKey(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public isKeyConsumed(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 22
    const/4 v0, 0x0

    return v0
.end method
