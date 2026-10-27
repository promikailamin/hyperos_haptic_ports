.class public Lcom/android/server/accessibility/autoclick/AutoclickController$InputDeviceWrapper;
.super Ljava/lang/Object;
.source "AutoclickController.java"


# instance fields
.field public final mInputDevice:Landroid/view/InputDevice;


# direct methods
.method public constructor <init>(Landroid/view/InputDevice;)V
    .registers 2

    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 727
    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$InputDeviceWrapper;->mInputDevice:Landroid/view/InputDevice;

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .registers 1

    .line 731
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$InputDeviceWrapper;->mInputDevice:Landroid/view/InputDevice;

    invoke-virtual {p0}, Landroid/view/InputDevice;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public isVirtual()Z
    .registers 1

    .line 735
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$InputDeviceWrapper;->mInputDevice:Landroid/view/InputDevice;

    invoke-virtual {p0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result p0

    return p0
.end method

.method public supportsSource(I)Z
    .registers 2

    .line 739
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$InputDeviceWrapper;->mInputDevice:Landroid/view/InputDevice;

    invoke-virtual {p0, p1}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result p0

    return p0
.end method
