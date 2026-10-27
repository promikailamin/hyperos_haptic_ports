.class public Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;
.super Ljava/lang/Object;
.source "VirtualDeviceManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/VirtualDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VirtualDevice"
.end annotation


# instance fields
.field private final blacklist mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;


# direct methods
.method private constructor blacklist <init>(Landroid/companion/virtual/IVirtualDeviceManager;Landroid/content/Context;ILandroid/companion/virtual/VirtualDeviceParams;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 701
    new-instance v0, Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/companion/virtual/VirtualDeviceInternal;-><init>(Landroid/companion/virtual/IVirtualDeviceManager;Landroid/content/Context;ILandroid/companion/virtual/VirtualDeviceParams;)V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    .line 703
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/companion/virtual/IVirtualDeviceManager;Landroid/content/Context;ILandroid/companion/virtual/VirtualDeviceParams;Landroid/companion/virtual/VirtualDeviceManager-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;-><init>(Landroid/companion/virtual/IVirtualDeviceManager;Landroid/content/Context;ILandroid/companion/virtual/VirtualDeviceParams;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/companion/virtual/IVirtualDevice;)V
    .registers 4

    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 707
    new-instance v0, Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-direct {v0, p1, p2}, Landroid/companion/virtual/VirtualDeviceInternal;-><init>(Landroid/content/Context;Landroid/companion/virtual/IVirtualDevice;)V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    .line 708
    return-void
.end method


# virtual methods
.method public whitelist addActivityListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;)V
    .registers 4

    .line 1301
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1, p2}, Landroid/companion/virtual/VirtualDeviceInternal;->addActivityListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;)V

    .line 1302
    return-void
.end method

.method public whitelist addActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V
    .registers 3

    .line 976
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/virtual/ActivityPolicyExemption;

    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->addActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V

    .line 977
    return-void
.end method

.method public whitelist addActivityPolicyExemption(Landroid/content/ComponentName;)V
    .registers 3

    .line 930
    new-instance v0, Landroid/companion/virtual/ActivityPolicyExemption$Builder;

    invoke-direct {v0}, Landroid/companion/virtual/ActivityPolicyExemption$Builder;-><init>()V

    .line 931
    invoke-virtual {v0, p1}, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->setComponentName(Landroid/content/ComponentName;)Landroid/companion/virtual/ActivityPolicyExemption$Builder;

    move-result-object p1

    .line 932
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->build()Landroid/companion/virtual/ActivityPolicyExemption;

    move-result-object p1

    .line 930
    invoke-virtual {p0, p1}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->addActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V

    .line 933
    return-void
.end method

.method public whitelist addSoundEffectListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;)V
    .registers 4

    .line 1323
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1, p2}, Landroid/companion/virtual/VirtualDeviceInternal;->addSoundEffectListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;)V

    .line 1324
    return-void
.end method

.method public whitelist test-api close()V
    .registers 2

    .line 892
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceInternal;->close()V

    .line 893
    return-void
.end method

.method public whitelist createContext()Landroid/content/Context;
    .registers 2

    .line 731
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceInternal;->createContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createVirtualAudioDevice(Landroid/hardware/display/VirtualDisplay;Ljava/util/concurrent/Executor;Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;)Landroid/companion/virtual/audio/VirtualAudioDevice;
    .registers 5

    .line 1204
    const-string v0, "display must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1205
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualAudioDevice(Landroid/hardware/display/VirtualDisplay;Ljava/util/concurrent/Executor;Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;)Landroid/companion/virtual/audio/VirtualAudioDevice;

    move-result-object p1

    return-object p1
.end method

.method public whitelist createVirtualCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)Landroid/companion/virtual/camera/VirtualCamera;
    .registers 3

    .line 1234
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/virtual/camera/VirtualCameraConfig;

    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)Landroid/companion/virtual/camera/VirtualCamera;

    move-result-object p1

    return-object p1
.end method

.method public whitelist createVirtualDisplay(IIILandroid/view/Surface;ILjava/util/concurrent/Executor;Landroid/hardware/display/VirtualDisplay$Callback;)Landroid/hardware/display/VirtualDisplay;
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualDevice_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 855
    new-instance v1, Landroid/hardware/display/VirtualDisplayConfig$Builder;

    invoke-direct {v1, v0, p1, p2, p3}, Landroid/hardware/display/VirtualDisplayConfig$Builder;-><init>(Ljava/lang/String;III)V

    .line 857
    invoke-virtual {v1, p5}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    move-result-object p1

    .line 858
    if-eqz p4, :cond_25

    .line 859
    invoke-virtual {p1, p4}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setSurface(Landroid/view/Surface;)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 861
    :cond_25
    iget-object p2, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->build()Landroid/hardware/display/VirtualDisplayConfig;

    move-result-object p1

    invoke-virtual {p2, p1, p6, p7}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Ljava/util/concurrent/Executor;Landroid/hardware/display/VirtualDisplay$Callback;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    return-object p1
.end method

.method public whitelist createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Ljava/util/concurrent/Executor;Landroid/hardware/display/VirtualDisplay$Callback;)Landroid/hardware/display/VirtualDisplay;
    .registers 5

    .line 883
    const-string v0, "config must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 884
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Ljava/util/concurrent/Executor;Landroid/hardware/display/VirtualDisplay$Callback;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    return-object p1
.end method

.method public whitelist createVirtualDpad(Landroid/hardware/input/VirtualDpadConfig;)Landroid/hardware/input/VirtualDpad;
    .registers 3

    .line 1026
    const-string v0, "config must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1027
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualDpad(Landroid/hardware/input/VirtualDpadConfig;)Landroid/hardware/input/VirtualDpad;

    move-result-object p1

    return-object p1
.end method

.method public whitelist createVirtualKeyboard(Landroid/hardware/display/VirtualDisplay;Ljava/lang/String;II)Landroid/hardware/input/VirtualKeyboard;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1055
    new-instance v0, Landroid/hardware/input/VirtualKeyboardConfig$Builder;

    invoke-direct {v0}, Landroid/hardware/input/VirtualKeyboardConfig$Builder;-><init>()V

    .line 1057
    invoke-virtual {v0, p3}, Landroid/hardware/input/VirtualKeyboardConfig$Builder;->setVendorId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object p3

    check-cast p3, Landroid/hardware/input/VirtualKeyboardConfig$Builder;

    .line 1058
    invoke-virtual {p3, p4}, Landroid/hardware/input/VirtualKeyboardConfig$Builder;->setProductId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object p3

    check-cast p3, Landroid/hardware/input/VirtualKeyboardConfig$Builder;

    .line 1059
    invoke-virtual {p3, p2}, Landroid/hardware/input/VirtualKeyboardConfig$Builder;->setInputDeviceName(Ljava/lang/String;)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object p2

    check-cast p2, Landroid/hardware/input/VirtualKeyboardConfig$Builder;

    .line 1060
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/hardware/input/VirtualKeyboardConfig$Builder;->setAssociatedDisplayId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/VirtualKeyboardConfig$Builder;

    .line 1061
    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig$Builder;->build()Landroid/hardware/input/VirtualKeyboardConfig;

    move-result-object p1

    .line 1062
    iget-object p2, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p2, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualKeyboard(Landroid/hardware/input/VirtualKeyboardConfig;)Landroid/hardware/input/VirtualKeyboard;

    move-result-object p1

    return-object p1
.end method

.method public whitelist createVirtualKeyboard(Landroid/hardware/input/VirtualKeyboardConfig;)Landroid/hardware/input/VirtualKeyboard;
    .registers 3

    .line 1037
    const-string v0, "config must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1038
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualKeyboard(Landroid/hardware/input/VirtualKeyboardConfig;)Landroid/hardware/input/VirtualKeyboard;

    move-result-object p1

    return-object p1
.end method

.method public whitelist createVirtualMouse(Landroid/hardware/display/VirtualDisplay;Ljava/lang/String;II)Landroid/hardware/input/VirtualMouse;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1090
    new-instance v0, Landroid/hardware/input/VirtualMouseConfig$Builder;

    invoke-direct {v0}, Landroid/hardware/input/VirtualMouseConfig$Builder;-><init>()V

    .line 1092
    invoke-virtual {v0, p3}, Landroid/hardware/input/VirtualMouseConfig$Builder;->setVendorId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object p3

    check-cast p3, Landroid/hardware/input/VirtualMouseConfig$Builder;

    .line 1093
    invoke-virtual {p3, p4}, Landroid/hardware/input/VirtualMouseConfig$Builder;->setProductId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object p3

    check-cast p3, Landroid/hardware/input/VirtualMouseConfig$Builder;

    .line 1094
    invoke-virtual {p3, p2}, Landroid/hardware/input/VirtualMouseConfig$Builder;->setInputDeviceName(Ljava/lang/String;)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object p2

    check-cast p2, Landroid/hardware/input/VirtualMouseConfig$Builder;

    .line 1095
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/hardware/input/VirtualMouseConfig$Builder;->setAssociatedDisplayId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/VirtualMouseConfig$Builder;

    .line 1096
    invoke-virtual {p1}, Landroid/hardware/input/VirtualMouseConfig$Builder;->build()Landroid/hardware/input/VirtualMouseConfig;

    move-result-object p1

    .line 1097
    iget-object p2, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p2, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualMouse(Landroid/hardware/input/VirtualMouseConfig;)Landroid/hardware/input/VirtualMouse;

    move-result-object p1

    return-object p1
.end method

.method public whitelist createVirtualMouse(Landroid/hardware/input/VirtualMouseConfig;)Landroid/hardware/input/VirtualMouse;
    .registers 3

    .line 1072
    const-string v0, "config must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1073
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualMouse(Landroid/hardware/input/VirtualMouseConfig;)Landroid/hardware/input/VirtualMouse;

    move-result-object p1

    return-object p1
.end method

.method public whitelist createVirtualNavigationTouchpad(Landroid/hardware/input/VirtualNavigationTouchpadConfig;)Landroid/hardware/input/VirtualNavigationTouchpad;
    .registers 3

    .line 1153
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualNavigationTouchpad(Landroid/hardware/input/VirtualNavigationTouchpadConfig;)Landroid/hardware/input/VirtualNavigationTouchpad;

    move-result-object p1

    return-object p1
.end method

.method public whitelist createVirtualRotaryEncoder(Landroid/hardware/input/VirtualRotaryEncoderConfig;)Landroid/hardware/input/VirtualRotaryEncoder;
    .registers 3

    .line 1176
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->virtualRotary()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1179
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualRotaryEncoder(Landroid/hardware/input/VirtualRotaryEncoderConfig;)Landroid/hardware/input/VirtualRotaryEncoder;

    move-result-object p1

    return-object p1

    .line 1177
    :cond_d
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Virtual rotary support not enabled"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist createVirtualStylus(Landroid/hardware/input/VirtualStylusConfig;)Landroid/hardware/input/VirtualStylus;
    .registers 3

    .line 1163
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualStylus(Landroid/hardware/input/VirtualStylusConfig;)Landroid/hardware/input/VirtualStylus;

    move-result-object p1

    return-object p1
.end method

.method public whitelist createVirtualTouchscreen(Landroid/hardware/display/VirtualDisplay;Ljava/lang/String;II)Landroid/hardware/input/VirtualTouchscreen;
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1127
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1128
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1129
    new-instance v1, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v0}, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;-><init>(II)V

    .line 1131
    invoke-virtual {v1, p3}, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;->setVendorId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object p3

    check-cast p3, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;

    .line 1132
    invoke-virtual {p3, p4}, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;->setProductId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object p3

    check-cast p3, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;

    .line 1133
    invoke-virtual {p3, p2}, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;->setInputDeviceName(Ljava/lang/String;)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object p2

    check-cast p2, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;

    .line 1134
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;->setAssociatedDisplayId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;

    .line 1135
    invoke-virtual {p1}, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;->build()Landroid/hardware/input/VirtualTouchscreenConfig;

    move-result-object p1

    .line 1136
    iget-object p2, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p2, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualTouchscreen(Landroid/hardware/input/VirtualTouchscreenConfig;)Landroid/hardware/input/VirtualTouchscreen;

    move-result-object p1

    return-object p1
.end method

.method public whitelist createVirtualTouchscreen(Landroid/hardware/input/VirtualTouchscreenConfig;)Landroid/hardware/input/VirtualTouchscreen;
    .registers 3

    .line 1108
    const-string v0, "config must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1109
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualTouchscreen(Landroid/hardware/input/VirtualTouchscreenConfig;)Landroid/hardware/input/VirtualTouchscreen;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getDeviceId()I
    .registers 2

    .line 714
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceInternal;->getDeviceId()I

    move-result v0

    return v0
.end method

.method public whitelist getPersistentDeviceId()Ljava/lang/String;
    .registers 2

    .line 721
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceInternal;->getPersistentDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getVirtualSensorList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/companion/virtual/sensor/VirtualSensor;",
            ">;"
        }
    .end annotation

    .line 743
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceInternal;->getVirtualSensorList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist goToSleep()V
    .registers 2

    .line 762
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceInternal;->goToSleep()V

    .line 763
    return-void
.end method

.method public whitelist launchPendingIntent(ILandroid/app/PendingIntent;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 6

    .line 806
    const-string/jumbo v0, "pendingIntent must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 807
    const-string v0, "executor must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 808
    const-string/jumbo v0, "listener must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 809
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/companion/virtual/VirtualDeviceInternal;->launchPendingIntent(ILandroid/app/PendingIntent;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    .line 811
    return-void
.end method

.method public whitelist registerIntentInterceptor(Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;)V
    .registers 5

    .line 1351
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/companion/virtual/VirtualDeviceInternal;->registerIntentInterceptor(Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;)V

    .line 1353
    return-void
.end method

.method public whitelist removeActivityListener(Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;)V
    .registers 3

    .line 1311
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->removeActivityListener(Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;)V

    .line 1312
    return-void
.end method

.method public whitelist removeActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V
    .registers 3

    .line 991
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/virtual/ActivityPolicyExemption;

    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->removeActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V

    .line 992
    return-void
.end method

.method public whitelist removeActivityPolicyExemption(Landroid/content/ComponentName;)V
    .registers 3

    .line 952
    new-instance v0, Landroid/companion/virtual/ActivityPolicyExemption$Builder;

    invoke-direct {v0}, Landroid/companion/virtual/ActivityPolicyExemption$Builder;-><init>()V

    .line 953
    invoke-virtual {v0, p1}, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->setComponentName(Landroid/content/ComponentName;)Landroid/companion/virtual/ActivityPolicyExemption$Builder;

    move-result-object p1

    .line 954
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->build()Landroid/companion/virtual/ActivityPolicyExemption;

    move-result-object p1

    .line 952
    invoke-virtual {p0, p1}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->removeActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V

    .line 955
    return-void
.end method

.method public whitelist removeSoundEffectListener(Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;)V
    .registers 3

    .line 1333
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->removeSoundEffectListener(Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;)V

    .line 1334
    return-void
.end method

.method public whitelist setDevicePolicy(II)V
    .registers 4

    .line 910
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1, p2}, Landroid/companion/virtual/VirtualDeviceInternal;->setDevicePolicy(II)V

    .line 911
    return-void
.end method

.method public whitelist setDevicePolicy(III)V
    .registers 5

    .line 1016
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p3, p1, p2}, Landroid/companion/virtual/VirtualDeviceInternal;->setDevicePolicyForDisplay(III)V

    .line 1017
    return-void
.end method

.method public whitelist setDisplayImePolicy(II)V
    .registers 4

    .line 1261
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1, p2}, Landroid/companion/virtual/VirtualDeviceInternal;->setDisplayImePolicy(II)V

    .line 1262
    return-void
.end method

.method public blacklist setDisplayUiMode(II)V
    .registers 4

    .line 1285
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->deviceAwareUiMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1288
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1, p2}, Landroid/companion/virtual/VirtualDeviceInternal;->setDisplayUiMode(II)V

    .line 1289
    return-void

    .line 1286
    :cond_c
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Required flag is not enabled"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setShowPointerIcon(Z)V
    .registers 3

    .line 1247
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->setShowPointerIcon(Z)V

    .line 1248
    return-void
.end method

.method public whitelist unregisterIntentInterceptor(Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;)V
    .registers 3

    .line 1361
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->unregisterIntentInterceptor(Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;)V

    .line 1362
    return-void
.end method

.method public whitelist wakeUp()V
    .registers 2

    .line 780
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceInternal;->wakeUp()V

    .line 781
    return-void
.end method
