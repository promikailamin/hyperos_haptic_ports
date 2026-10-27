.class public interface abstract Landroid/view/HandWritingStub;
.super Ljava/lang/Object;
.source "HandWritingStub.java"


# static fields
.field public static final blacklist HAND_WRITING_KEYBOARD_TYPE_NORMAL:I = 0x1

.field public static final blacklist HAND_WRITING_KEYBOARD_TYPE_STYLUS:I = 0x2


# direct methods
.method public static blacklist newInstance()Landroid/view/HandWritingStub;
    .registers 1

    .line 17
    const-class v0, Landroid/view/HandWritingStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/HandWritingStub;

    return-object v0
.end method


# virtual methods
.method public blacklist getCurrentKeyboardType()I
    .registers 2

    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist handleBlackListSituation(Landroid/view/KeyEvent;)V
    .registers 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 34
    return-void
.end method

.method public blacklist isKeyboardTypeChanged()Z
    .registers 2

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist recordCustomToolType(Landroid/view/InputEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 32
    return-void
.end method

.method public blacklist refreshLastKeyboardType()V
    .registers 1

    .line 26
    return-void
.end method

.method public blacklist setCurrentKeyboardType(I)V
    .registers 2
    .param p1, "keyboardType"    # I

    .line 20
    return-void
.end method
