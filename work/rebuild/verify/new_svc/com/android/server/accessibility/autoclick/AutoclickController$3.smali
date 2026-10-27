.class public Lcom/android/server/accessibility/autoclick/AutoclickController$3;
.super Ljava/lang/Object;
.source "AutoclickController.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field public mIsPointingDeviceConnected:Z

.field public mTemporaryHideAutoclickTypePanel:Z

.field public final synthetic this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoclick/AutoclickController;)V
    .registers 2

    .line 255
    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$3;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 257
    iput-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$3;->mIsPointingDeviceConnected:Z

    .line 261
    iput-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$3;->mTemporaryHideAutoclickTypePanel:Z

    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .registers 2

    .line 265
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickController$3;->onInputDeviceChanged(I)V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .registers 9

    .line 275
    iget-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$3;->mIsPointingDeviceConnected:Z

    const/4 v0, 0x0

    .line 276
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$3;->mIsPointingDeviceConnected:Z

    .line 277
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$3;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v1, v1, Lcom/android/server/accessibility/autoclick/AutoclickController;->mInputManagerWrapper:Lcom/android/server/accessibility/autoclick/AutoclickController$InputManagerWrapper;

    invoke-virtual {v1}, Lcom/android/server/accessibility/autoclick/AutoclickController$InputManagerWrapper;->getInputDeviceIds()[I

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_f
    const/4 v4, 0x1

    if-ge v3, v2, :cond_42

    aget v5, v1, v3

    .line 278
    iget-object v6, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$3;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v6, v6, Lcom/android/server/accessibility/autoclick/AutoclickController;->mInputManagerWrapper:Lcom/android/server/accessibility/autoclick/AutoclickController$InputManagerWrapper;

    invoke-virtual {v6, v5}, Lcom/android/server/accessibility/autoclick/AutoclickController$InputManagerWrapper;->getInputDevice(I)Lcom/android/server/accessibility/autoclick/AutoclickController$InputDeviceWrapper;

    move-result-object v5

    if-eqz v5, :cond_3f

    .line 279
    invoke-virtual {v5}, Lcom/android/server/accessibility/autoclick/AutoclickController$InputDeviceWrapper;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-virtual {v5}, Lcom/android/server/accessibility/autoclick/AutoclickController$InputDeviceWrapper;->isVirtual()Z

    move-result v6

    if-eqz v6, :cond_2b

    goto :goto_3f

    :cond_2b
    const/16 v6, 0x2002

    .line 282
    invoke-virtual {v5, v6}, Lcom/android/server/accessibility/autoclick/AutoclickController$InputDeviceWrapper;->supportsSource(I)Z

    move-result v6

    if-nez v6, :cond_3c

    const v6, 0x100008

    .line 283
    invoke-virtual {v5, v6}, Lcom/android/server/accessibility/autoclick/AutoclickController$InputDeviceWrapper;->supportsSource(I)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 284
    :cond_3c
    iput-boolean v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$3;->mIsPointingDeviceConnected:Z

    goto :goto_42

    :cond_3f
    :goto_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 290
    :cond_42
    :goto_42
    iget-boolean v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$3;->mIsPointingDeviceConnected:Z

    if-ne p1, v1, :cond_47

    goto :goto_6f

    :cond_47
    if-nez v1, :cond_5e

    .line 296
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$3;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object p1, p1, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickTypePanel:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

    if-eqz p1, :cond_6f

    .line 297
    iput-boolean v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$3;->mTemporaryHideAutoclickTypePanel:Z

    .line 298
    invoke-virtual {p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->hide()V

    .line 300
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$3;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    if-eqz p0, :cond_6f

    .line 301
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->hide()V

    return-void

    .line 307
    :cond_5e
    iget-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$3;->mTemporaryHideAutoclickTypePanel:Z

    if-eqz p1, :cond_6f

    if-eqz v1, :cond_6f

    .line 308
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$3;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object p1, p1, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickTypePanel:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

    if-eqz p1, :cond_6f

    .line 309
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$3;->mTemporaryHideAutoclickTypePanel:Z

    .line 310
    invoke-virtual {p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->show()V

    :cond_6f
    :goto_6f
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .registers 2

    .line 270
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickController$3;->onInputDeviceChanged(I)V

    return-void
.end method
