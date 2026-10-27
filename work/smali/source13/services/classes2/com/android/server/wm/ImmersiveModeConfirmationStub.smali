.class public interface abstract Lcom/android/server/wm/ImmersiveModeConfirmationStub;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmationStub.java"


# direct methods
.method public static get()Lcom/android/server/wm/ImmersiveModeConfirmationStub;
    .registers 1

    .line 9
    const-class v0, Lcom/android/server/wm/ImmersiveModeConfirmationStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ImmersiveModeConfirmationStub;

    return-object v0
.end method


# virtual methods
.method public disableImmersiveConfirmation(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
.end method

.method public reloadFromSetting(Landroid/content/Context;)Z
    .registers 3
    .param p1, "cxt"    # Landroid/content/Context;

    .line 12
    const/4 v0, 0x0

    return v0
.end method
