.class public interface abstract Lcom/xiaomi/mirror/MirrorServiceStub;
.super Ljava/lang/Object;
.source "MirrorServiceStub.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MirrorServiceStub"


# direct methods
.method public static getInstance()Lcom/xiaomi/mirror/MirrorServiceStub;
    .registers 1

    .line 12
    const-class v0, Lcom/xiaomi/mirror/MirrorServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mirror/MirrorServiceStub;

    return-object v0
.end method


# virtual methods
.method public dragDropActiveLocked()Z
    .registers 2

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public getAllowGrant()Z
    .registers 2

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public isGrantAllowed(Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "targetPkg"    # Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public notifyPointerIconChanged(ILandroid/view/PointerIcon;)V
    .registers 3
    .param p1, "iconId"    # I
    .param p2, "customIcon"    # Landroid/view/PointerIcon;

    .line 38
    return-void
.end method

.method public sendDragStartedIfNeededLocked(Ljava/lang/Object;)V
    .registers 2
    .param p1, "windowState"    # Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public setAllowGrant(Z)V
    .registers 2
    .param p1, "allowGrant"    # Z

    .line 24
    return-void
.end method
