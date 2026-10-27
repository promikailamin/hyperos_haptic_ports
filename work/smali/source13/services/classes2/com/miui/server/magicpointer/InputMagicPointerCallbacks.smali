.class public Lcom/miui/server/magicpointer/InputMagicPointerCallbacks;
.super Ljava/lang/Object;
.source "InputMagicPointerCallbacks.java"

# interfaces
.implements Lcom/miui/server/magicpointer/MagicPointerCallbacks;


# instance fields
.field private mMagicPointerService:Lcom/android/server/wm/MiuiMagicPointerServiceStub;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MiuiMagicPointerServiceStub;)V
    .registers 2
    .param p1, "magicPointerService"    # Lcom/android/server/wm/MiuiMagicPointerServiceStub;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/miui/server/magicpointer/InputMagicPointerCallbacks;->mMagicPointerService:Lcom/android/server/wm/MiuiMagicPointerServiceStub;

    .line 11
    return-void
.end method


# virtual methods
.method public isMagicPointerEnabled()Z
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/miui/server/magicpointer/InputMagicPointerCallbacks;->mMagicPointerService:Lcom/android/server/wm/MiuiMagicPointerServiceStub;

    if-eqz v0, :cond_9

    .line 30
    invoke-interface {v0}, Lcom/android/server/wm/MiuiMagicPointerServiceStub;->isMagicPointerEnabled()Z

    move-result v0

    return v0

    .line 32
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public setMagicPointerVisibility(Z)V
    .registers 3
    .param p1, "visibility"    # Z

    .line 22
    iget-object v0, p0, Lcom/miui/server/magicpointer/InputMagicPointerCallbacks;->mMagicPointerService:Lcom/android/server/wm/MiuiMagicPointerServiceStub;

    if-eqz v0, :cond_7

    .line 23
    invoke-interface {v0, p1}, Lcom/android/server/wm/MiuiMagicPointerServiceStub;->setMagicPointerVisibility(Z)V

    .line 25
    :cond_7
    return-void
.end method

.method public updateMagicPointerPosition(FF)V
    .registers 4
    .param p1, "pointerX"    # F
    .param p2, "pointerY"    # F

    .line 15
    iget-object v0, p0, Lcom/miui/server/magicpointer/InputMagicPointerCallbacks;->mMagicPointerService:Lcom/android/server/wm/MiuiMagicPointerServiceStub;

    if-eqz v0, :cond_7

    .line 16
    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/MiuiMagicPointerServiceStub;->updatePointerPosition(FF)V

    .line 18
    :cond_7
    return-void
.end method
