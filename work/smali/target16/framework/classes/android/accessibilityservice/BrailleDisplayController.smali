.class public interface abstract Landroid/accessibilityservice/BrailleDisplayController;
.super Ljava/lang/Object;
.source "BrailleDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;
    }
.end annotation


# static fields
.field public static final blacklist TEST_BRAILLE_DISPLAY_BUS_BLUETOOTH:Ljava/lang/String; = "BUS_BLUETOOTH"

.field public static final blacklist TEST_BRAILLE_DISPLAY_DESCRIPTOR:Ljava/lang/String; = "DESCRIPTOR"

.field public static final blacklist TEST_BRAILLE_DISPLAY_HIDRAW_PATH:Ljava/lang/String; = "HIDRAW_PATH"

.field public static final blacklist TEST_BRAILLE_DISPLAY_NAME:Ljava/lang/String; = "NAME"

.field public static final blacklist TEST_BRAILLE_DISPLAY_UNIQUE_ID:Ljava/lang/String; = "UNIQUE_ID"


# direct methods
.method public static blacklist checkApiFlagIsEnabled()V
    .registers 2

    .line 58
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->brailleDisplayHid()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 61
    return-void

    .line 59
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flag BRAILLE_DISPLAY_HID not enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setTestBrailleDisplayData(Landroid/accessibilityservice/AccessibilityService;Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accessibilityservice/AccessibilityService;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 280
    invoke-static {}, Landroid/accessibilityservice/BrailleDisplayController;->checkApiFlagIsEnabled()V

    .line 281
    nop

    .line 282
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result p0

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object p0

    .line 283
    if-eqz p0, :cond_18

    .line 285
    :try_start_e
    invoke-interface {p0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setTestBrailleDisplayData(Ljava/util/List;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_12

    .line 288
    goto :goto_18

    .line 286
    :catch_12
    move-exception p0

    .line 287
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 290
    :cond_18
    :goto_18
    return-void
.end method


# virtual methods
.method public abstract whitelist connect(Landroid/bluetooth/BluetoothDevice;Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V
.end method

.method public abstract whitelist connect(Landroid/bluetooth/BluetoothDevice;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V
.end method

.method public abstract whitelist connect(Landroid/hardware/usb/UsbDevice;Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V
.end method

.method public abstract whitelist connect(Landroid/hardware/usb/UsbDevice;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V
.end method

.method public abstract whitelist disconnect()V
.end method

.method public abstract whitelist isConnected()Z
.end method

.method public abstract whitelist write([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
