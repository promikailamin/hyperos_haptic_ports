.class public interface abstract Landroid/widget/EditTextStub;
.super Ljava/lang/Object;
.source "EditTextStub.java"


# direct methods
.method public static blacklist newInstance()Landroid/widget/EditTextStub;
    .registers 1

    .line 16
    const-class v0, Landroid/widget/EditTextStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditTextStub;

    return-object v0
.end method


# virtual methods
.method public blacklist afterPerformAccessibilityActionClick(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "data"    # Landroid/os/Bundle;

    .line 29
    return-void
.end method

.method public blacklist init(Landroid/content/Context;Landroid/widget/EditText;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "editText"    # Landroid/widget/EditText;

    .line 21
    return-void
.end method

.method public blacklist needInterceptPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 24
    const/4 v0, 0x0

    return v0
.end method
