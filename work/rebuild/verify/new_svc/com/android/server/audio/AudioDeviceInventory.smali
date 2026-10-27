.class public Lcom/android/server/audio/AudioDeviceInventory;
.super Ljava/lang/Object;
.source "AudioDeviceInventory.java"


# static fields
.field public static final ALWAYS_RING_CATEGORIES:Ljava/util/Set;

.field public static final ALWAYS_RING_DEVICE_CANDIDATES:Ljava/util/Set;

.field public static final BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

.field public static final CAPTURE_PRESETS:[I

.field public static final DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;

.field public static final MAX_DEVICE_INVENTORY_ENTRIES:I


# instance fields
.field public final mAlwaysRingDeviceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mApmConnectedDevices:Ljava/util/ArrayList;

.field public final mAppliedPresetRoles:Landroid/util/ArrayMap;

.field public final mAppliedPresetRolesInt:Landroid/util/ArrayMap;

.field public final mAppliedStrategyRoles:Landroid/util/ArrayMap;

.field public final mAppliedStrategyRolesInt:Landroid/util/ArrayMap;

.field public final mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

.field public final mBluetoothDualModeEnabled:Z

.field public final mConnectedDevices:Ljava/util/LinkedHashMap;

.field public final mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

.field public final mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

.field public mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

.field public final mDeviceInventory:Ljava/util/LinkedHashMap;

.field public final mDeviceInventoryLock:Ljava/lang/Object;

.field public final mDevicesLock:Ljava/lang/Object;

.field public final mNonDefDevDispatchers:Landroid/os/RemoteCallbackList;

.field public final mNonDefaultDevices:Landroid/util/ArrayMap;

.field public final mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

.field public final mPreferredDevices:Landroid/util/ArrayMap;

.field public final mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;

.field public final mRoutesObservers:Landroid/os/RemoteCallbackList;

.field public final mStrategies:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$0Wu0DddoQ0DvExkD6QqdHwFT7N4(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/Pair;Ljava/util/List;)V
    .registers 6

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "preset: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " role:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " devices:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1elQBPINr3hZcbYnD-YoI9h1Eo8(Lcom/android/server/audio/AudioDeviceInventory;IILandroid/util/Pair;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$disconnectLeAudio$38(IILandroid/util/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3qr9rBJSnntGMIibQ9guvdVgf-k(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V
    .registers 6

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "strategy:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " device:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6lCpOc8DxK86fxNcYzOm03CaLo0(Lcom/android/server/audio/AudioDeviceInventory;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$isCurrentDeviceConnected$39(Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$7Ru-9dr9yi6cTykRb5FCHwwlb48(Lcom/android/server/audio/AudioDeviceInventory;IILjava/util/List;)I
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$clearDevicesRoleForStrategy$25(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$9NCHU4E9d_xSxwdbMdgODgyecZU(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .registers 4

    .line 2142
    iget v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/high16 v1, 0x8000000

    if-ne v0, v1, :cond_b

    .line 2143
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method public static synthetic $r8$lambda$E0g1-pT5DNYen2w7htgvVnbqdiM(Ljava/util/List;Landroid/media/AudioDeviceAttributes;)Z
    .registers 2

    .line 1879
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$Fj4RB4f-vyJVGmRzBjIeM7QkxY0(Lcom/android/server/audio/AdiDeviceState;Lcom/android/server/audio/AdiDeviceState;)Lcom/android/server/audio/AdiDeviceState;
    .registers 3

    .line 148
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->hasHeadTracker()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AdiDeviceState;->setHasHeadTracker(Z)V

    .line 149
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->isHeadTrackerEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AdiDeviceState;->setHeadTrackerEnabled(Z)V

    .line 150
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->isSAEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AdiDeviceState;->setSAEnabled(Z)V

    return-object p0
.end method

.method public static synthetic $r8$lambda$G3OWX1O7fDbzS9XHt7yOBL7U-EA(ILandroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .registers 4

    .line 2199
    iget v0, p2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    if-ne v0, p0, :cond_14

    .line 2200
    new-instance p0, Landroid/util/Pair;

    iget-object v0, p2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    iget p2, p2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    .line 2201
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2200
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_14
    return-void
.end method

.method public static synthetic $r8$lambda$IhJuzsRLkew6WeLADn4m4EcqYcg(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KilBp2uKyUFQmXixg5Lud5vHNZE(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/Pair;Ljava/util/List;)V
    .registers 6

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "strategy: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " role:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " devices:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M8Y_GTscMoYhbtX6sAeAgchIhNY(Lcom/android/server/audio/AudioDeviceInventory;IILjava/util/List;)I
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$setDevicesRoleForStrategy$23(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NGcpIyRmlGpMhFvy8CK7ZRM5syo(Lcom/android/server/audio/AudioDeviceInventory;IILjava/util/List;)I
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$addDevicesRoleForCapturePresetInt$16(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Ni-7vZ6LfHwRAgAae8hqI8JZ-sc(Lcom/android/server/audio/AudioDeviceInventory;IILjava/util/List;)I
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$addDevicesRoleForStrategy$21(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$OdrMd3MT6ZlRe1Jp8S9FY9k9jbQ(Lcom/android/server/audio/AudioDeviceInventory;Ljava/lang/Integer;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$reapplyExternalDevicesRoles$14(Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QQ2y-cFLpsalbjv_wnQ2dadr_a0(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/server/audio/AdiDeviceState;Lcom/android/server/audio/AdiDeviceState;)Lcom/android/server/audio/AdiDeviceState;
    .registers 5

    .line 227
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result v0

    .line 228
    invoke-virtual {p2}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result v1

    if-eq v0, v1, :cond_15

    .line 229
    invoke-virtual {p2}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AdiDeviceState;->setAudioDeviceCategory(I)V

    const/4 p2, 0x1

    .line 230
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_15
    return-object p1
.end method

.method public static synthetic $r8$lambda$QQrEKBO50Y59ImKNVdO-4QnMa7w(Lcom/android/server/audio/AudioDeviceInventory;IILjava/util/List;)I
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$setDevicesRoleForStrategy$24(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RnonzIPa8_5mRdWx-jdmhGeDDvg(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .registers 4

    .line 2126
    iget v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/high16 v1, -0x7ffe0000

    if-ne v0, v1, :cond_b

    .line 2127
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method public static synthetic $r8$lambda$V-FYlzcKt1aFH1CV_Djp7VfCfzk(Ljava/lang/Integer;)I
    .registers 1

    .line 3159
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VZrNAjreNSJ_VzC43TliU3phDdI(Lcom/android/server/audio/AudioDeviceInventory;IILjava/util/List;)I
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$setDevicesRoleForCapturePreset$18(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$WmaFiyuLvCqQClVdfDzP5w2wRyQ(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/Pair;Ljava/util/List;)V
    .registers 6

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "strategy: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " role:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " devices:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XxehrWeMU3Y-uL-bY5GB6XlK84A(Lcom/android/server/audio/AudioDeviceInventory;IILjava/util/List;)I
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$removeDevicesRoleForCapturePresetInt$17(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$aU_7GbpLfAxmss3qY1sQNzpyQN0(Lcom/android/server/audio/AudioDeviceInventory;IILjava/util/List;)I
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$setDevicesRoleForCapturePreset$19(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$auEAEqjN78tBuzajNRnJJkjX5qg(Lcom/android/server/audio/AudioDeviceInventory;ILjava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$disconnectHearingAid$36(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b6DmpzgIgcV9GiOgI4G0KMJJpCk(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .registers 5

    .line 829
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cbRc7PCkdQ1d1Dios-De8H9mY8A(Lcom/android/server/audio/AudioDeviceInventory;Ljava/lang/Integer;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$reapplyExternalDevicesRoles$12(Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eTIciBIrIBohyfHVo_SpWowlIFo(Lcom/android/server/audio/AudioDeviceInventory;IILjava/util/List;)I
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$removeDevicesRoleForStrategy$22(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$g-EU6ZuC_C0VxbNACbytAhOJKVI(Lcom/android/server/audio/AudioDeviceInventory;IILjava/util/List;)I
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$purgeDevicesRoles_l$28(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$h_z-NM9CPm1APoDUGWIGGnGojvc(Ljava/io/PrintWriter;Ljava/lang/Integer;)V
    .registers 4

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hwaS6w-leluJ0RhVjFvFwNTeleg(Lcom/android/server/audio/AudioDeviceInventory;ILjava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$disconnectA2dp$32(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kD-2oVR0646zwr9QgXHELH-31e4(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/Pair;Ljava/util/List;)V
    .registers 6

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "preset: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " role:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " devices:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kzao3eyMm5COSl8jNw-irWsdGW4(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V
    .registers 6

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "strategy:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " device:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lADSeRxuJ2VLR7M7dTO-RWjMjzE(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V
    .registers 6

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "capturePreset:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " devices:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m-vQweYsAh1uFfl7PoA3ZchqbQI(Landroid/media/AudioDeviceAttributes;Landroid/media/AudioDeviceInfo;)Z
    .registers 3

    .line 1937
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getInternalType()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1938
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$npd0RnVVySh6v54qvNpaXxxZ4VI(Lcom/android/server/audio/AudioDeviceInventory;IILjava/util/List;)I
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$clearDevicesRoleForCapturePreset$20(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qD8_bNI9bgu6sSmWEb9sxfMasCs(Lcom/android/server/audio/AudioDeviceInventory;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$disconnectA2dpSink$34(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q_o3SyyCekiSrCL5hOcPO8gfRCI(Landroid/media/AudioDeviceAttributes;Landroid/media/AudioDeviceInfo;)Z
    .registers 2

    .line 1936
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getInternalType()I

    move-result p1

    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result p0

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$rw7tW8O4zEAiTEwIXf5VCCJzRTM(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .registers 4

    .line 2103
    iget v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_b

    .line 2104
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method public static synthetic $r8$lambda$u-8GH9DcPTZOZ9Aa2Zd9hNaoCwg(Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;I)Z
    .registers 2

    .line 1367
    iget p0, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$vDJjZx3YLThQhD2bB-1H8i8-VOo(Lcom/android/server/audio/AudioDeviceInventory;Ljava/lang/Integer;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$reapplyExternalDevicesRoles$13(Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w0mhWBgDP8f1DzVhlvU3GbZmOlg(Lcom/android/server/audio/AudioDeviceInventory;IILjava/util/List;)I
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$purgeDevicesRoles_l$27(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 6

    const v0, 0x8000

    .line 117
    invoke-static {}, Lcom/android/server/audio/AdiDeviceState;->getPeristedMaxSize()I

    move-result v1

    div-int/2addr v0, v1

    sput v0, Lcom/android/server/audio/AudioDeviceInventory;->MAX_DEVICE_INVENTORY_ENTRIES:I

    .line 597
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioDeviceInventory;->ALWAYS_RING_DEVICE_CANDIDATES:Ljava/util/Set;

    .line 598
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/high16 v1, 0x20000000

    .line 599
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 601
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioDeviceInventory;->ALWAYS_RING_CATEGORIES:Ljava/util/Set;

    const/4 v2, 0x3

    .line 602
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    .line 603
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1284
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioDeviceInventory;->DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;

    .line 1285
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x8

    .line 1286
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v4, 0x20000

    .line 1287
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1288
    sget-object v5, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_USB_SET:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x7

    .line 2362
    new-array v0, v0, [I

    fill-array-data v0, :array_a6

    sput-object v0, Lcom/android/server/audio/AudioDeviceInventory;->CAPTURE_PRESETS:[I

    .line 2934
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioDeviceInventory;->BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

    .line 2935
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2936
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x400

    .line 2937
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x800

    .line 2938
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2939
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x8000000

    .line 2940
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2941
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v1, 0x20000002

    .line 2942
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2943
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2944
    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2945
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_BLE_SET:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void

    nop

    :array_a6
    .array-data 4
        0x1
        0x5
        0x6
        0x7
        0x9
        0xa
        0x7cf
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioSystemAdapter;Ljava/util/List;)V
    .registers 6

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    .line 504
    new-instance v0, Lcom/android/server/audio/AudioDeviceInventory$1;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioDeviceInventory$1;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 578
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAlwaysRingDeviceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 616
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Ljava/util/ArrayList;

    .line 619
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    .line 624
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefaultDevices:Landroid/util/ArrayMap;

    .line 629
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;

    .line 640
    new-instance v0, Landroid/media/AudioRoutesInfo;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 641
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    .line 645
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    .line 649
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefDevDispatchers:Landroid/os/RemoteCallbackList;

    .line 653
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    .line 1737
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRoles:Landroid/util/ArrayMap;

    .line 1739
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRolesInt:Landroid/util/ArrayMap;

    .line 1749
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRoles:Landroid/util/ArrayMap;

    .line 1751
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRolesInt:Landroid/util/ArrayMap;

    .line 673
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 674
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 675
    const-string p1, "Audio product strategies must not be null"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mStrategies:Ljava/util/List;

    .line 677
    const-string/jumbo p1, "persist.bluetooth.enable_dual_mode_audio"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mBluetoothDualModeEnabled:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;Ljava/util/List;)V
    .registers 4

    .line 660
    invoke-static {}, Lcom/android/server/audio/AudioSystemAdapter;->getDefaultAdapter()Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/audio/AudioDeviceInventory;-><init>(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioSystemAdapter;Ljava/util/List;)V

    return-void
.end method

.method public static devicesListEqual(Ljava/util/List;Ljava/util/List;)Z
    .registers 6

    .line 1824
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    return v2

    .line 1828
    :cond_c
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 1830
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    .line 1831
    invoke-virtual {v0, v3}, Landroid/media/AudioDeviceAttributes;->equalTypeAddress(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_10

    :cond_33
    return v2

    :cond_34
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addAudioDeviceInInventoryIfNeeded(ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 9

    .line 170
    invoke-static {p1}, Landroid/media/AudioSystem;->isBluetoothOutDevice(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 173
    :cond_7
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_a
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/AudioDeviceInventory;->findBtDeviceStateForAddress(Ljava/lang/String;I)Lcom/android/server/audio/AdiDeviceState;

    move-result-object v1

    const v2, 0x20000002

    if-nez v1, :cond_1e

    if-eqz p3, :cond_1e

    if-eq p1, v2, :cond_1e

    .line 177
    invoke-virtual {p0, p3, p1}, Lcom/android/server/audio/AudioDeviceInventory;->findBtDeviceStateForAddress(Ljava/lang/String;I)Lcom/android/server/audio/AdiDeviceState;

    move-result-object v1

    goto :goto_1e

    :catchall_1c
    move-exception p0

    goto :goto_6e

    :cond_1e
    :goto_1e
    if-eqz v1, :cond_41

    .line 183
    invoke-virtual {v1}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result p2

    if-eq p2, p4, :cond_3a

    if-nez p5, :cond_2a

    if-eqz p4, :cond_3a

    :cond_2a
    if-eq p1, v2, :cond_3a

    .line 186
    invoke-virtual {v1, p4}, Lcom/android/server/audio/AdiDeviceState;->setAudioDeviceCategory(I)V

    .line 187
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postUpdatedAdiDeviceState(Lcom/android/server/audio/AdiDeviceState;Z)V

    .line 188
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->postPersistAudioDeviceSettings()V

    .line 190
    :cond_3a
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postSynchronizeAdiDevicesInInventory(Lcom/android/server/audio/AdiDeviceState;)V

    .line 191
    monitor-exit v0

    return-void

    .line 193
    :cond_41
    new-instance p3, Lcom/android/server/audio/AdiDeviceState;

    invoke-static {p1}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result p5

    invoke-direct {p3, p5, p1, p2}, Lcom/android/server/audio/AdiDeviceState;-><init>(IILjava/lang/String;)V

    .line 195
    invoke-virtual {p3, p4}, Lcom/android/server/audio/AdiDeviceState;->setAudioDeviceCategory(I)V

    .line 197
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {p3}, Lcom/android/server/audio/AdiDeviceState;->getDeviceId()Landroid/util/Pair;

    move-result-object p4

    invoke-virtual {p2, p4, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->checkDeviceInventorySize_l()V

    if-eq p1, v2, :cond_67

    .line 201
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 p2, 0x1

    invoke-virtual {p1, p3, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postUpdatedAdiDeviceState(Lcom/android/server/audio/AdiDeviceState;Z)V

    .line 202
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->postPersistAudioDeviceSettings()V

    goto :goto_6c

    .line 204
    :cond_67
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, p3}, Lcom/android/server/audio/AudioDeviceBroker;->postSynchronizeAdiDevicesInInventory(Lcom/android/server/audio/AdiDeviceState;)V

    .line 206
    :goto_6c
    monitor-exit v0

    return-void

    :goto_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_a .. :try_end_6f} :catchall_1c

    throw p0
.end method

.method public addAudioDeviceWithCategoryInInventoryIfNeeded(Ljava/lang/String;I)V
    .registers 15

    .line 246
    const-string v3, ""

    const/4 v5, 0x1

    const/high16 v1, 0x20000000

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceInventory;->addAudioDeviceInInventoryIfNeeded(ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 248
    const-string v9, ""

    const/4 v11, 0x1

    const/16 v7, 0x80

    move-object v6, v0

    move-object v8, v2

    move v10, v4

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/audio/AudioDeviceInventory;->addAudioDeviceInInventoryIfNeeded(ILjava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public final addDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;IILjava/util/List;)I
    .registers 10

    .line 1762
    monitor-enter p1

    .line 1763
    :try_start_1
    new-instance p0, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1764
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1765
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1767
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1768
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1769
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_28
    :goto_28
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 1770
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 1771
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :catchall_3e
    move-exception p0

    goto :goto_5a

    .line 1775
    :cond_40
    invoke-interface {v1, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1777
    :cond_43
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_4c

    const/4 p0, 0x0

    .line 1778
    monitor-exit p1

    return p0

    .line 1780
    :cond_4c
    invoke-interface {p2, p3, p4, v1}, Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;->deviceRoleAction(IILjava/util/List;)I

    move-result p2

    if-nez p2, :cond_58

    .line 1782
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1783
    invoke-virtual {p1, p0, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1785
    :cond_58
    monitor-exit p1

    return p2

    .line 1786
    :goto_5a
    monitor-exit p1
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_3e

    throw p0
.end method

.method public final addDevicesRoleForCapturePresetInt(IILjava/util/List;)I
    .registers 10

    .line 1653
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRolesInt:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceInventory;->addDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public final addDevicesRoleForStrategy(IILjava/util/List;Z)I
    .registers 11

    if-eqz p4, :cond_6

    .line 1696
    iget-object p4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRolesInt:Landroid/util/ArrayMap;

    :goto_4
    move-object v1, p4

    goto :goto_9

    :cond_6
    iget-object p4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRoles:Landroid/util/ArrayMap;

    goto :goto_4

    :goto_9
    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceInventory;->addDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public addOrUpdateAudioDeviceCategoryInInventory(Lcom/android/server/audio/AdiDeviceState;Z)V
    .registers 9

    .line 216
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getInternalDeviceType()I

    move-result v0

    const v1, 0x20000002

    if-ne v0, v1, :cond_a

    goto :goto_47

    .line 219
    :cond_a
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 220
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 221
    :try_start_13
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->updateAudioDeviceCategory()Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v3, 0x1

    .line 222
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_20

    :catchall_1e
    move-exception p0

    goto :goto_48

    .line 225
    :cond_20
    :goto_20
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getDeviceId()Landroid/util/Pair;

    move-result-object v4

    new-instance v5, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda6;

    invoke-direct {v5, v0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda6;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v3, v4, p1, v5}, Ljava/util/LinkedHashMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/audio/AdiDeviceState;

    .line 234
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->checkDeviceInventorySize_l()V

    .line 235
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_13 .. :try_end_35} :catchall_1e

    .line 236
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 237
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postUpdatedAdiDeviceState(Lcom/android/server/audio/AdiDeviceState;Z)V

    :cond_40
    if-eqz p2, :cond_47

    .line 240
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postSynchronizeAdiDevicesInInventory(Lcom/android/server/audio/AdiDeviceState;)V

    :cond_47
    :goto_47
    return-void

    .line 235
    :goto_48
    :try_start_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_1e

    throw p0
.end method

.method public addOrUpdateDeviceSAStateInInventory(Lcom/android/server/audio/AdiDeviceState;Z)V
    .registers 7

    .line 145
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getDeviceId()Landroid/util/Pair;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda8;

    invoke-direct {v3}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v1, v2, p1, v3}, Ljava/util/LinkedHashMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 153
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->checkDeviceInventorySize_l()V

    .line 154
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1d

    if-eqz p2, :cond_1c

    .line 156
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postSynchronizeAdiDevicesInInventory(Lcom/android/server/audio/AdiDeviceState;)V

    :cond_1c
    return-void

    :catchall_1d
    move-exception p0

    .line 154
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public applyConnectedDevicesRoles()V
    .registers 2

    .line 2479
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2480
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->applyConnectedDevicesRoles_l()V

    .line 2481
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final applyConnectedDevicesRoles_l()V
    .registers 19

    move-object/from16 v0, p0

    .line 2375
    iget-boolean v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mBluetoothDualModeEnabled:Z

    if-nez v1, :cond_8

    goto/16 :goto_22b

    .line 2378
    :cond_8
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_BLE_SET:Ljava/util/Set;

    .line 2379
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object v1

    .line 2380
    sget-object v2, Landroid/media/AudioSystem;->DEVICE_IN_ALL_BLE_SET:Ljava/util/Set;

    .line 2381
    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object v2

    .line 2382
    sget-object v3, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    .line 2383
    invoke-virtual {v0, v3}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object v3

    .line 2384
    sget-object v4, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    .line 2385
    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object v4

    .line 2386
    sget-object v5, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SCO_SET:Ljava/util/Set;

    .line 2387
    invoke-virtual {v0, v5}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object v5

    const/4 v7, 0x1

    if-eqz v1, :cond_31

    .line 2388
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->isOutputOnlyModeEnabled()Z

    move-result v8

    if-eqz v8, :cond_31

    move v8, v7

    goto :goto_32

    :cond_31
    const/4 v8, 0x0

    :goto_32
    if-eqz v1, :cond_3a

    .line 2389
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->isDuplexModeEnabled()Z

    move-result v9

    if-nez v9, :cond_42

    :cond_3a
    if-eqz v2, :cond_44

    .line 2390
    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->isDuplexModeEnabled()Z

    move-result v9

    if-eqz v9, :cond_44

    :cond_42
    move v9, v7

    goto :goto_45

    :cond_44
    const/4 v9, 0x0

    .line 2392
    :goto_45
    iget-object v10, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v11, v10, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    const/4 v12, 0x0

    if-nez v11, :cond_4d

    goto :goto_62

    .line 2393
    :cond_4d
    invoke-virtual {v10}, Lcom/android/server/audio/AudioDeviceBroker;->isInCommunication()Z

    move-result v10

    if-eqz v10, :cond_62

    iget-object v10, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v10, v10, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    if-eqz v10, :cond_62

    .line 2395
    new-instance v12, Landroid/media/AudioDeviceAttributes;

    iget-object v10, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v10, v10, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    invoke-direct {v12, v10}, Landroid/media/AudioDeviceAttributes;-><init>(Landroid/media/AudioDeviceInfo;)V

    .line 2398
    :cond_62
    :goto_62
    sget-boolean v10, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    const-string v11, "AS.AudioDeviceInventory"

    if-eqz v10, :cond_ac

    .line 2399
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "applyConnectedDevicesRoles_l\n - leOutDevice: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n - leInDevice: "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n - a2dpDevice: "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n - scoOutDevice: "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n - scoInDevice: "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n - disableA2dp: "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", disableSco: "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    :cond_ac
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b6
    :goto_b6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 2409
    iget v3, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v3}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    move-result v3

    if-nez v3, :cond_cb

    goto :goto_b6

    .line 2412
    :cond_cb
    new-instance v3, Landroid/media/AudioDeviceAttributes;

    iget v4, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    iget-object v5, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v10}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2414
    sget-boolean v4, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v4, :cond_ee

    .line 2415
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  + checking Device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    :cond_ee
    invoke-virtual {v3, v12}, Landroid/media/AudioDeviceAttributes;->equalTypeAddress(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f5

    goto :goto_b6

    .line 2421
    :cond_f5
    iget v4, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v4}, Landroid/media/AudioSystem;->isBluetoothOutDevice(I)Z

    move-result v4

    const-string v5, ", disable: "

    const/4 v10, 0x2

    if-eqz v4, :cond_1b7

    .line 2422
    iget-object v4, v0, Lcom/android/server/audio/AudioDeviceInventory;->mStrategies:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_106
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1b7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 2424
    invoke-virtual {v13}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result v14

    iget-object v15, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget v15, v15, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    if-ne v14, v15, :cond_13c

    .line 2425
    iget v14, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v14}, Landroid/media/AudioSystem;->isBluetoothScoDevice(I)Z

    move-result v14

    if-eqz v14, :cond_12e

    if-nez v9, :cond_12c

    .line 2426
    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->isDuplexModeEnabled()Z

    move-result v14

    if-nez v14, :cond_16b

    :cond_12c
    :goto_12c
    move v14, v7

    goto :goto_16c

    .line 2427
    :cond_12e
    iget v14, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v14}, Landroid/media/AudioSystem;->isBluetoothLeDevice(I)Z

    move-result v14

    if-eqz v14, :cond_16b

    .line 2428
    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->isDuplexModeEnabled()Z

    move-result v14

    :goto_13a
    xor-int/2addr v14, v7

    goto :goto_16c

    .line 2431
    :cond_13c
    iget v14, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v14}, Landroid/media/AudioSystem;->isBluetoothA2dpOutDevice(I)Z

    move-result v14

    if-eqz v14, :cond_14d

    if-nez v8, :cond_12c

    .line 2432
    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->isOutputOnlyModeEnabled()Z

    move-result v14

    if-nez v14, :cond_16b

    goto :goto_12c

    .line 2433
    :cond_14d
    iget v14, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v14}, Landroid/media/AudioSystem;->isBluetoothScoDevice(I)Z

    move-result v14

    if-eqz v14, :cond_15e

    if-nez v9, :cond_12c

    .line 2434
    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->isOutputOnlyModeEnabled()Z

    move-result v14

    if-nez v14, :cond_16b

    goto :goto_12c

    .line 2435
    :cond_15e
    iget v14, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v14}, Landroid/media/AudioSystem;->isBluetoothLeDevice(I)Z

    move-result v14

    if-eqz v14, :cond_16b

    .line 2436
    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->isOutputOnlyModeEnabled()Z

    move-result v14

    goto :goto_13a

    :cond_16b
    const/4 v14, 0x0

    .line 2439
    :goto_16c
    sget-boolean v15, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v15, :cond_191

    .line 2440
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x0

    const-string v6, "     - strategy: "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_193

    :cond_191
    const/16 v16, 0x0

    :goto_193
    if-eqz v14, :cond_1a6

    .line 2444
    invoke-virtual {v13}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result v6

    new-array v13, v7, [Landroid/media/AudioDeviceAttributes;

    aput-object v3, v13, v16

    .line 2446
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 2444
    invoke-virtual {v0, v6, v10, v13, v7}, Lcom/android/server/audio/AudioDeviceInventory;->addDevicesRoleForStrategy(IILjava/util/List;Z)I

    goto/16 :goto_106

    .line 2448
    :cond_1a6
    invoke-virtual {v13}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result v6

    new-array v13, v7, [Landroid/media/AudioDeviceAttributes;

    aput-object v3, v13, v16

    .line 2450
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 2448
    invoke-virtual {v0, v6, v10, v13, v7}, Lcom/android/server/audio/AudioDeviceInventory;->removeDevicesRoleForStrategy(IILjava/util/List;Z)I

    goto/16 :goto_106

    :cond_1b7
    const/16 v16, 0x0

    .line 2454
    iget v4, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v4}, Landroid/media/AudioSystem;->isBluetoothInDevice(I)Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 2455
    sget-object v4, Lcom/android/server/audio/AudioDeviceInventory;->CAPTURE_PRESETS:[I

    array-length v6, v4

    move/from16 v13, v16

    :goto_1c6
    if-ge v13, v6, :cond_b6

    aget v14, v4, v13

    .line 2457
    iget v15, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v15}, Landroid/media/AudioSystem;->isBluetoothScoDevice(I)Z

    move-result v15

    if-eqz v15, :cond_1dc

    if-nez v9, :cond_1da

    .line 2458
    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->isDuplexModeEnabled()Z

    move-result v15

    if-nez v15, :cond_1ea

    :cond_1da
    move v15, v7

    goto :goto_1ec

    .line 2459
    :cond_1dc
    iget v15, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v15}, Landroid/media/AudioSystem;->isBluetoothLeDevice(I)Z

    move-result v15

    if-eqz v15, :cond_1ea

    .line 2460
    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->isDuplexModeEnabled()Z

    move-result v15

    xor-int/2addr v15, v7

    goto :goto_1ec

    :cond_1ea
    move/from16 v15, v16

    .line 2462
    :goto_1ec
    sget-boolean v17, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v17, :cond_20a

    .line 2463
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      - capturePreset: "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20a
    if-eqz v15, :cond_21a

    const/4 v7, 0x1

    .line 2467
    new-array v10, v7, [Landroid/media/AudioDeviceAttributes;

    aput-object v3, v10, v16

    .line 2468
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v15, 0x2

    .line 2467
    invoke-virtual {v0, v14, v15, v10}, Lcom/android/server/audio/AudioDeviceInventory;->addDevicesRoleForCapturePresetInt(IILjava/util/List;)I

    goto :goto_227

    :cond_21a
    const/4 v7, 0x1

    const/4 v15, 0x2

    .line 2470
    new-array v10, v7, [Landroid/media/AudioDeviceAttributes;

    aput-object v3, v10, v16

    .line 2471
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 2470
    invoke-virtual {v0, v14, v15, v10}, Lcom/android/server/audio/AudioDeviceInventory;->removeDevicesRoleForCapturePresetInt(IILjava/util/List;)I

    :goto_227
    add-int/lit8 v13, v13, 0x1

    move v10, v15

    goto :goto_1c6

    :cond_22b
    :goto_22b
    return-void
.end method

.method public final checkDeviceInventorySize_l()V
    .registers 3

    .line 327
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    sget v1, Lcom/android/server/audio/AudioDeviceInventory;->MAX_DEVICE_INVENTORY_ENTRIES:I

    if-le v0, v1, :cond_20

    .line 329
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    .line 330
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 331
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 332
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 333
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :cond_20
    return-void
.end method

.method public checkProfileIsConnected(I)I
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_29

    const/4 v0, 0x2

    if-eq p1, v0, :cond_20

    const/16 v0, 0x16

    if-eq p1, v0, :cond_f

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_f

    goto :goto_3a

    .line 2500
    :cond_f
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_BLE_SET:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object v0

    if-nez v0, :cond_3c

    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_BLE_SET:Ljava/util/Set;

    .line 2502
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object p0

    if-eqz p0, :cond_3a

    goto :goto_3c

    .line 2494
    :cond_20
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object p0

    if-eqz p0, :cond_3a

    goto :goto_3c

    .line 2488
    :cond_29
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object v0

    if-nez v0, :cond_3c

    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SCO_SET:Ljava/util/Set;

    .line 2489
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object p0

    if-eqz p0, :cond_3a

    goto :goto_3c

    :cond_3a
    :goto_3a
    const/4 p0, 0x0

    return p0

    :cond_3c
    :goto_3c
    return p1
.end method

.method public final checkSendBecomingNoisyIntentInt(III)I
    .registers 12

    const/4 v0, 0x0

    .line 2962
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2954
    new-instance v2, Landroid/media/MediaMetrics$Item;

    const-string v3, "audio.device.checkSendBecomingNoisyIntentInt"

    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 2956
    invoke-static {p1}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    sget-object v3, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    const/4 v4, 0x1

    if-ne p2, v4, :cond_1e

    .line 2959
    const-string v4, "connected"

    goto :goto_20

    :cond_1e
    const-string v4, "disconnected"

    .line 2957
    :goto_20
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    .line 2960
    const-string v3, "AS.AudioDeviceInventory"

    if-eqz p2, :cond_47

    .line 2961
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "not sending NOISY: state="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    sget-object p0, Landroid/media/MediaMetrics$Property;->DELAY_MS:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v2, p0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return v0

    .line 2965
    :cond_47
    sget-object p2, Lcom/android/server/audio/AudioDeviceInventory;->BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7e

    .line 2966
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "not sending NOISY: device=0x"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not in set "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2968
    sget-object p0, Landroid/media/MediaMetrics$Property;->DELAY_MS:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v2, p0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return v0

    .line 2972
    :cond_7e
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 2973
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8d
    :goto_8d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 2974
    iget v6, v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v6}, Landroid/media/AudioSystem;->isInputDevice(I)Z

    move-result v6

    if-nez v6, :cond_8d

    sget-object v6, Lcom/android/server/audio/AudioDeviceInventory;->BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

    iget v7, v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 2975
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8d

    .line 2976
    iget v6, v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2977
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NOISY: adding 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    :cond_d3
    const/4 v4, 0x3

    if-nez p3, :cond_f4

    .line 2981
    iget-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->getDeviceForStream(I)I

    move-result p3

    .line 2982
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NOISY: musicDevice changing from NONE to 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2983
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2982
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2989
    :cond_f4
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioDeviceBroker;->isInCommunication()Z

    move-result v5

    .line 2990
    invoke-static {p2, p1}, Landroid/media/AudioSystem;->isSingleAudioDeviceType(Ljava/util/Set;I)Z

    move-result p2

    .line 2991
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v6}, Lcom/android/server/audio/AudioDeviceBroker;->hasMediaDynamicPolicy()Z

    move-result v6

    if-eq p1, p3, :cond_108

    if-eqz v5, :cond_143

    :cond_108
    if-eqz p2, :cond_143

    if-nez v6, :cond_143

    const v7, 0x8000

    if-eq p3, v7, :cond_143

    .line 2996
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p1, v4, v0}, Lcom/android/server/audio/AudioSystemAdapter;->isStreamActive(II)Z

    move-result p1

    if-nez p1, :cond_13b

    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 2997
    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->hasAudioFocusUsers()Z

    move-result p1

    if-nez p1, :cond_13b

    .line 3000
    sget-object p0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance p1, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string p2, "dropping ACTION_AUDIO_BECOMING_NOISY"

    invoke-direct {p1, p2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 3001
    invoke-virtual {p1, v3}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p1

    .line 3000
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 3002
    sget-object p0, Landroid/media/MediaMetrics$Property;->DELAY_MS:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v2, p0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return v0

    .line 3005
    :cond_13b
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastBecomingNoisy()V

    const/16 v0, 0x3e8

    goto :goto_180

    .line 3008
    :cond_143
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "not sending NOISY: device:0x"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " musicDevice:0x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3009
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " inComm:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mediaPolicy:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " singleDevice:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3008
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    :goto_180
    sget-object p0, Landroid/media/MediaMetrics$Property;->DELAY_MS:Landroid/media/MediaMetrics$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p0, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return v0
.end method

.method public clearDeviceInventory()V
    .registers 2

    .line 497
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 498
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    .line 499
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final clearDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;II)I
    .registers 7

    .line 1893
    monitor-enter p1

    .line 1894
    :try_start_1
    new-instance p0, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1895
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 p0, -0x2

    .line 1897
    monitor-exit p1

    return p0

    :catchall_17
    move-exception p0

    goto :goto_25

    :cond_19
    const/4 v0, 0x0

    .line 1899
    invoke-interface {p2, p3, p4, v0}, Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;->deviceRoleAction(IILjava/util/List;)I

    move-result p2

    if-nez p2, :cond_23

    .line 1901
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1903
    :cond_23
    monitor-exit p1

    return p2

    .line 1904
    :goto_25
    monitor-exit p1
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_17

    throw p0
.end method

.method public final clearDevicesRoleForCapturePreset(II)I
    .registers 5

    .line 1678
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRoles:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->clearDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;II)I

    move-result p0

    return p0
.end method

.method public final clearDevicesRoleForStrategy(IIZ)I
    .registers 5

    if-eqz p3, :cond_5

    .line 1723
    iget-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRolesInt:Landroid/util/ArrayMap;

    goto :goto_7

    :cond_5
    iget-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRoles:Landroid/util/ArrayMap;

    :goto_7
    new-instance v0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->clearDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;II)I

    move-result p0

    return p0
.end method

.method public final clearPreferredDevicesForCapturePreset(I)I
    .registers 3

    const/4 v0, 0x1

    .line 1646
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->clearDevicesRoleForCapturePreset(II)I

    move-result p0

    return p0
.end method

.method public clearPreferredDevicesForCapturePresetAndSave(I)I
    .registers 5

    .line 1633
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1634
    :try_start_3
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_19

    .line 1635
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->clearPreferredDevicesForCapturePreset(I)I

    move-result v2

    if-nez v2, :cond_13

    .line 1637
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->saveClearPreferredDevicesForCapturePreset(I)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_11

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_1d

    :cond_13
    :goto_13
    if-eqz v1, :cond_1b

    .line 1640
    :try_start_15
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V

    goto :goto_1b

    :catchall_19
    move-exception p0

    goto :goto_28

    :cond_1b
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_19

    return v2

    :goto_1d
    if-eqz v1, :cond_27

    .line 1634
    :try_start_1f
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_27

    :catchall_23
    move-exception p1

    :try_start_24
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_27
    :goto_27
    throw p0

    .line 1641
    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_19

    throw p0
.end method

.method public final configureHdmiPlugIntent(Landroid/content/Intent;I)V
    .registers 12

    .line 3127
    const-string p0, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3128
    const-string p0, "android.media.extra.AUDIO_PLUG_STATE"

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p0, 0x1

    if-eq p2, p0, :cond_f

    goto/16 :goto_bd

    .line 3132
    :cond_f
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3133
    new-array v0, p0, [I

    .line 3134
    invoke-static {p2, v0}, Landroid/media/AudioSystem;->listAudioPorts(Ljava/util/ArrayList;[I)I

    move-result v0

    if-eqz v0, :cond_39

    .line 3136
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "listAudioPorts error "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in configureHdmiPlugIntent"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AS.AudioDeviceInventory"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3139
    :cond_39
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_3f
    if-ge v2, v0, :cond_bd

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/media/AudioPort;

    .line 3140
    instance-of v4, v3, Landroid/media/AudioDevicePort;

    if-nez v4, :cond_4e

    goto :goto_3f

    .line 3143
    :cond_4e
    check-cast v3, Landroid/media/AudioDevicePort;

    .line 3144
    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    const/16 v5, 0x400

    if-eq v4, v5, :cond_6a

    .line 3145
    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    const/high16 v5, 0x40000

    if-eq v4, v5, :cond_6a

    .line 3146
    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    const v5, 0x40001

    if-eq v4, v5, :cond_6a

    goto :goto_3f

    .line 3150
    :cond_6a
    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioFormat;->filterPublicFormats([I)[I

    move-result-object v4

    .line 3151
    array-length v5, v4

    if-lez v5, :cond_a2

    .line 3152
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3153
    array-length v6, v4

    move v7, v1

    :goto_7c
    if-ge v7, v6, :cond_8c

    aget v8, v4, v7

    if-eqz v8, :cond_89

    .line 3156
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_89
    add-int/lit8 v7, v7, 0x1

    goto :goto_7c

    .line 3159
    :cond_8c
    invoke-virtual {v5}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda10;

    invoke-direct {v5}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v4

    .line 3160
    const-string v5, "android.media.extra.ENCODINGS"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 3164
    :cond_a2
    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v3

    array-length v4, v3

    move v5, v1

    move v6, v5

    :goto_a9
    if-ge v5, v4, :cond_b7

    aget v7, v3, v5

    .line 3165
    invoke-static {v7}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v7

    if-le v7, v6, :cond_b4

    move v6, v7

    :cond_b4
    add-int/lit8 v5, v5, 0x1

    goto :goto_a9

    .line 3170
    :cond_b7
    const-string v3, "android.media.extra.MAX_CHANNEL_COUNT"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3f

    :cond_bd
    :goto_bd
    return-void
.end method

.method public final disconnectA2dp()V
    .registers 6

    .line 2099
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2100
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 2102
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda33;

    invoke-direct {v3, v1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda33;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 2107
    new-instance v2, Landroid/media/MediaMetrics$Item;

    const-string v3, "audio.device.disconnectA2dp"

    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string v4, "disconnectA2dp"

    .line 2108
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    .line 2109
    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 2110
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_44

    const/16 v2, 0x80

    const/4 v3, 0x0

    .line 2111
    invoke-virtual {p0, v2, v3, v3}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v2

    .line 2114
    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda34;

    invoke-direct {v3, p0, v2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda34;-><init>(Lcom/android/server/audio/AudioDeviceInventory;I)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_44

    :catchall_42
    move-exception p0

    goto :goto_46

    .line 2118
    :cond_44
    :goto_44
    monitor-exit v0

    return-void

    :goto_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_42

    throw p0
.end method

.method public final disconnectA2dpSink()V
    .registers 6

    .line 2122
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2123
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 2125
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda36;

    invoke-direct {v3, v1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda36;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 2130
    new-instance v2, Landroid/media/MediaMetrics$Item;

    const-string v3, "audio.device.disconnectA2dpSink"

    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string v4, "disconnectA2dpSink"

    .line 2131
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    .line 2132
    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 2133
    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda37;

    invoke-direct {v2, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda37;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 2134
    monitor-exit v0

    return-void

    :catchall_36
    move-exception p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public final disconnectHeadset()V
    .registers 5

    .line 2229
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2230
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 2231
    iget v2, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v2}, Landroid/media/AudioSystem;->isBluetoothScoDevice(I)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v1, 0x1

    goto :goto_27

    :catchall_24
    move-exception p0

    goto :goto_31

    :cond_26
    move v1, v3

    .line 2238
    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_24

    if-eqz v1, :cond_30

    .line 2240
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/server/audio/AudioDeviceBroker;->onSetBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;Z)V

    :cond_30
    return-void

    .line 2238
    :goto_31
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_24

    throw p0
.end method

.method public final disconnectHearingAid()V
    .registers 6

    .line 2138
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2139
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 2141
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda40;

    invoke-direct {v3, v1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda40;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 2146
    new-instance v2, Landroid/media/MediaMetrics$Item;

    const-string v3, "audio.device.disconnectHearingAid"

    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string v4, "disconnectHearingAid"

    .line 2147
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    .line 2148
    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 2149
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_44

    const/high16 v2, 0x8000000

    const/4 v3, 0x0

    .line 2150
    invoke-virtual {p0, v2, v3, v3}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v2

    .line 2152
    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda41;

    invoke-direct {v3, p0, v2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda41;-><init>(Lcom/android/server/audio/AudioDeviceInventory;I)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_44

    :catchall_42
    move-exception p0

    goto :goto_46

    .line 2156
    :cond_44
    :goto_44
    monitor-exit v0

    return-void

    :goto_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_42

    throw p0
.end method

.method public disconnectLeAudio(I)V
    .registers 7

    const/high16 v0, 0x20000000

    if-eq p1, v0, :cond_20

    const v0, 0x20000002

    if-eq p1, v0, :cond_20

    .line 2191
    const-string p0, "AS.AudioDeviceInventory"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectLeAudio: Can\'t disconnect not LE Audio device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2195
    :cond_20
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2196
    :try_start_23
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 2198
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda31;

    invoke-direct {v3, p1, v1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda31;-><init>(ILandroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 2204
    new-instance v2, Landroid/media/MediaMetrics$Item;

    const-string v3, "audio.device.disconnectLeAudio"

    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string v4, "disconnectLeAudio"

    .line 2205
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    .line 2206
    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 2207
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_62

    const/4 v2, 0x0

    .line 2208
    invoke-virtual {p0, p1, v2, v2}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v2

    .line 2211
    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda32;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda32;-><init>(Lcom/android/server/audio/AudioDeviceInventory;II)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_62

    :catchall_60
    move-exception p0

    goto :goto_64

    .line 2215
    :cond_62
    :goto_62
    monitor-exit v0

    return-void

    :goto_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_23 .. :try_end_65} :catchall_60

    throw p0
.end method

.method public disconnectLeAudioBroadcast()V
    .registers 2

    const v0, 0x20000002

    .line 2223
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectLeAudio(I)V

    return-void
.end method

.method public disconnectLeAudioUnicast()V
    .registers 2

    const/high16 v0, 0x20000000

    .line 2219
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectLeAudio(I)V

    return-void
.end method

.method public final dispatchDevicesRoleForCapturePreset(IILjava/util/List;)V
    .registers 9

    .line 3210
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_36

    .line 3213
    :try_start_9
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_20

    .line 3214
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, p3}, Lcom/android/server/audio/AudioDeviceBroker;->anonymizeAudioDeviceAttributesListUnchecked(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    goto :goto_20

    :catch_1e
    move-exception v2

    goto :goto_2c

    .line 3216
    :cond_20
    :goto_20
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/ICapturePresetDevicesRoleDispatcher;

    invoke-interface {v2, p1, p2, p3}, Landroid/media/ICapturePresetDevicesRoleDispatcher;->dispatchDevicesRoleChanged(IILjava/util/List;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_2b} :catch_1e

    goto :goto_33

    .line 3219
    :goto_2c
    const-string v3, "AS.AudioDeviceInventory"

    const-string v4, "dispatchDevicesRoleForCapturePreset "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3222
    :cond_36
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final dispatchNonDefaultDevice(ILjava/util/List;)V
    .registers 8

    .line 3193
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_36

    .line 3196
    :try_start_9
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_20

    .line 3197
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, p2}, Lcom/android/server/audio/AudioDeviceBroker;->anonymizeAudioDeviceAttributesListUnchecked(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_20

    :catch_1e
    move-exception v2

    goto :goto_2c

    .line 3199
    :cond_20
    :goto_20
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/IStrategyNonDefaultDevicesDispatcher;

    invoke-interface {v2, p1, p2}, Landroid/media/IStrategyNonDefaultDevicesDispatcher;->dispatchNonDefDevicesChanged(ILjava/util/List;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_2b} :catch_1e

    goto :goto_33

    .line 3202
    :goto_2c
    const-string v3, "AS.AudioDeviceInventory"

    const-string v4, "dispatchNonDefaultDevice "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3205
    :cond_36
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final dispatchPreferredDevice(ILjava/util/List;)V
    .registers 8

    .line 3176
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_36

    .line 3179
    :try_start_9
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_20

    .line 3180
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, p2}, Lcom/android/server/audio/AudioDeviceBroker;->anonymizeAudioDeviceAttributesListUnchecked(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_20

    :catch_1e
    move-exception v2

    goto :goto_2c

    .line 3182
    :cond_20
    :goto_20
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/IStrategyPreferredDevicesDispatcher;

    invoke-interface {v2, p1, p2}, Landroid/media/IStrategyPreferredDevicesDispatcher;->dispatchPrefDevicesChanged(ILjava/util/List;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_2b} :catch_1e

    goto :goto_33

    .line 3185
    :goto_2c
    const-string v3, "AS.AudioDeviceInventory"

    const-string v4, "dispatchPreferredDevice "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3188
    :cond_36
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "BECOMING_NOISY_INTENT_DEVICES_SET="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 819
    sget-object v0, Lcom/android/server/audio/AudioDeviceInventory;->BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda12;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Preferred devices for strategy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 822
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda13;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda13;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Non-default devices for strategy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefaultDevices:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Connected devices:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 828
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda15;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda15;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "APM Connected device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 831
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda16;

    invoke-direct {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda16;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Preferred devices for capture preset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 834
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda17;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda17;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Applied devices roles for strategies (from API):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 838
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRoles:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda18;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda18;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Applied devices roles for strategies (internal):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 842
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRolesInt:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda19;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda19;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Applied devices roles for presets (from API):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 846
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRoles:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda20;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda20;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Applied devices roles for presets (internal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 850
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRolesInt:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda21;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda21;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 853
    const-string p2, "\ndevices:\n"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 854
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    monitor-enter p2

    .line 855
    :try_start_166
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_170
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_198

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AdiDeviceState;

    .line 856
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_170

    :catchall_196
    move-exception p0

    goto :goto_19a

    .line 858
    :cond_198
    monitor-exit p2

    return-void

    :goto_19a
    monitor-exit p2
    :try_end_19b
    .catchall {:try_start_166 .. :try_end_19b} :catchall_196

    throw p0
.end method

.method public findBtDeviceStateForAddress(Ljava/lang/String;I)Lcom/android/server/audio/AdiDeviceState;
    .registers 8

    .line 446
    invoke-static {p2}, Landroid/media/AudioSystem;->isBluetoothA2dpOutDevice(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 447
    sget-object p2, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    goto :goto_2c

    .line 448
    :cond_a
    invoke-static {p2}, Landroid/media/AudioSystem;->isBluetoothLeOutDevice(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 449
    sget-object p2, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_BLE_SET:Ljava/util/Set;

    goto :goto_2c

    .line 450
    :cond_13
    invoke-static {p2}, Landroid/media/AudioSystem;->isBluetoothScoOutDevice(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 451
    sget-object p2, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    goto :goto_2c

    :cond_1c
    const/high16 v0, 0x8000000

    if-ne p2, v0, :cond_56

    .line 453
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 454
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 458
    :goto_2c
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 459
    :try_start_2f
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_33
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 460
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AdiDeviceState;

    if-eqz v2, :cond_33

    .line 463
    monitor-exit v0

    return-object v2

    :catchall_50
    move-exception p0

    goto :goto_54

    .line 466
    :cond_52
    monitor-exit v0

    return-object v1

    :goto_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_2f .. :try_end_55} :catchall_50

    throw p0

    :cond_56
    return-object v1
.end method

.method public findDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;I)Lcom/android/server/audio/AdiDeviceState;
    .registers 8

    .line 482
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    move-result v0

    .line 483
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 484
    :try_start_b
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AdiDeviceState;

    .line 485
    invoke-virtual {v2}, Lcom/android/server/audio/AdiDeviceState;->getDeviceType()I

    move-result v3

    if-ne v3, p2, :cond_15

    if-eqz v0, :cond_3a

    .line 486
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 487
    invoke-virtual {v2}, Lcom/android/server/audio/AdiDeviceState;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    .line 486
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_3a

    :catchall_38
    move-exception p0

    goto :goto_3f

    .line 488
    :cond_3a
    :goto_3a
    monitor-exit v1

    return-object v2

    .line 491
    :cond_3c
    monitor-exit v1

    const/4 p0, 0x0

    return-object p0

    :goto_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_b .. :try_end_40} :catchall_38

    throw p0
.end method

.method public getAndUpdateBtAdiDeviceStateCategoryForAddress(Ljava/lang/String;)I
    .registers 6

    const/high16 v0, 0x20000000

    .line 256
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->findBtDeviceStateForAddress(Ljava/lang/String;I)Lcom/android/server/audio/AdiDeviceState;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    .line 258
    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->addOrUpdateAudioDeviceCategoryInInventory(Lcom/android/server/audio/AdiDeviceState;Z)V

    .line 259
    invoke-virtual {v0}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result v0

    move v2, v0

    move v0, v1

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    move v2, v0

    :goto_15
    const/16 v3, 0x80

    .line 263
    invoke-virtual {p0, p1, v3}, Lcom/android/server/audio/AudioDeviceInventory;->findBtDeviceStateForAddress(Ljava/lang/String;I)Lcom/android/server/audio/AdiDeviceState;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 265
    invoke-virtual {p0, v3, v1}, Lcom/android/server/audio/AudioDeviceInventory;->addOrUpdateAudioDeviceCategoryInInventory(Lcom/android/server/audio/AdiDeviceState;Z)V

    .line 266
    invoke-virtual {v3}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result p0

    if-eqz v0, :cond_3e

    if-eq p0, v2, :cond_3e

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found different audio device category for A2DP and BLE profiles with address "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AS.AudioDeviceInventory"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    return p0

    :cond_3f
    return v2
.end method

.method public final getConnectedDevicesOfTypes(Ljava/util/Set;)Ljava/util/List;
    .registers 6

    .line 2758
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2759
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2760
    :try_start_8
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 2761
    iget v3, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2762
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :catchall_2e
    move-exception p0

    goto :goto_32

    .line 2765
    :cond_30
    monitor-exit v1

    return-object v0

    :goto_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_2e

    throw p0
.end method

.method public getCurAudioRoutes()Landroid/media/AudioRoutesInfo;
    .registers 1

    .line 2263
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    return-object p0
.end method

.method public getDeviceIdentityAddresses(Landroid/media/AudioDeviceAttributes;)Ljava/util/List;
    .registers 5

    .line 3226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3227
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v1

    .line 3228
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 3227
    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3229
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3230
    :try_start_14
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    if-eqz p0, :cond_45

    .line 3232
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceIdentityAddress:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2e

    .line 3233
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceIdentityAddress:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :catchall_2c
    move-exception p0

    goto :goto_47

    .line 3235
    :cond_2e
    :goto_2e
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerIdentityDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_45

    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerIdentityDeviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceIdentityAddress:Ljava/lang/String;

    .line 3236
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_45

    .line 3237
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerIdentityDeviceAddress:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3240
    :cond_45
    monitor-exit v1

    return-object v0

    :goto_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_14 .. :try_end_48} :catchall_2c

    throw p0
.end method

.method public getDeviceOfType(I)Landroid/media/AudioDeviceAttributes;
    .registers 4

    .line 2770
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object p0

    if-nez p0, :cond_14

    const/4 p0, 0x0

    return-object p0

    .line 2771
    :cond_14
    new-instance p1, Landroid/media/AudioDeviceAttributes;

    iget v0, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p0}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public getDeviceSettings()Ljava/lang/String;
    .registers 5

    .line 3246
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3247
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    .line 3249
    new-instance v2, Ljava/lang/StringBuilder;

    .line 3250
    invoke-static {}, Lcom/android/server/audio/AdiDeviceState;->getPeristedMaxSize()I

    move-result v3

    mul-int/2addr v1, v3

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3252
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 3253
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 3254
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AdiDeviceState;

    invoke-virtual {v1}, Lcom/android/server/audio/AdiDeviceState;->toPersistableString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    :catchall_31
    move-exception p0

    goto :goto_53

    .line 3256
    :cond_33
    :goto_33
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 3257
    const-string/jumbo v1, "|"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3258
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AdiDeviceState;

    invoke-virtual {v1}, Lcom/android/server/audio/AdiDeviceState;->toPersistableString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 3260
    :cond_4d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 3261
    :goto_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_31

    throw p0
.end method

.method public getFirstConnectedDeviceAttributesOfTypes(Ljava/util/Set;)Landroid/media/AudioDeviceAttributes;
    .registers 4

    .line 2749
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 2750
    :cond_8
    new-instance p1, Landroid/media/AudioDeviceAttributes;

    iget v0, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p0}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .registers 2

    .line 2741
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->getConnectedDevicesOfTypes(Ljava/util/Set;)Ljava/util/List;

    move-result-object p0

    .line 2742
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    return-object p0
.end method

.method public getImmutableDeviceInventory()Ljava/util/Collection;
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 135
    monitor-exit v0

    return-object v1

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public getPreferredDevicesForStrategy(I)Ljava/util/List;
    .registers 6

    .line 1531
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1532
    :try_start_3
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_2f

    .line 1533
    :try_start_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1535
    new-instance v2, Landroid/util/Pair;

    .line 1536
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1537
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRoles:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_35

    .line 1539
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_33

    if-eqz v1, :cond_31

    .line 1551
    :goto_2b
    :try_start_2b
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V

    goto :goto_31

    :catchall_2f
    move-exception p0

    goto :goto_43

    :cond_31
    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_2f

    return-object p0

    :catchall_33
    move-exception p0

    goto :goto_38

    :cond_35
    if-eqz v1, :cond_31

    goto :goto_2b

    :goto_38
    if-eqz v1, :cond_42

    .line 1532
    :try_start_3a
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_42

    :catchall_3e
    move-exception p1

    :try_start_3f
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_42
    :goto_42
    throw p0

    .line 1552
    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_2f

    throw p0
.end method

.method public handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZZLandroid/bluetooth/BluetoothDevice;Z)Z
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v6, p2

    move/from16 v2, p5

    .line 1988
    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v8

    .line 1989
    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v10

    .line 1990
    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1991
    sget-boolean v3, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v3, :cond_57

    .line 1992
    const-string v4, "AS.AudioDeviceInventory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleDeviceConnection("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " dev:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1993
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " address:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " name:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", deviceSwitch: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1992
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    :cond_57
    new-instance v4, Landroid/media/MediaMetrics$Item;

    const-string v5, "audio.device.handleDeviceConnection"

    invoke-direct {v4, v5}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    .line 1997
    invoke-virtual {v4, v5, v10}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v4

    sget-object v5, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 1998
    invoke-static {v8}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v4

    sget-object v5, Landroid/media/MediaMetrics$Property;->MODE:Landroid/media/MediaMetrics$Key;

    if-eqz v6, :cond_75

    .line 2000
    const-string v7, "connect"

    goto :goto_77

    :cond_75
    const-string v7, "disconnect"

    .line 1999
    :goto_77
    invoke-virtual {v4, v5, v7}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v4

    sget-object v5, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    .line 2001
    invoke-virtual {v4, v5, v9}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v13

    .line 2005
    iget-object v14, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v14

    .line 2006
    :try_start_84
    invoke-static {v8, v10}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_a4

    .line 2008
    const-string v5, "AS.AudioDeviceInventory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deviceKey:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4

    :catchall_a1
    move-exception v0

    goto/16 :goto_289

    .line 2010
    :cond_a4
    :goto_a4
    iget-object v5, v0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    const/4 v7, 0x0

    if-eqz v5, :cond_b1

    const/4 v11, 0x1

    goto :goto_b2

    :cond_b1
    move v11, v7

    :goto_b2
    if-eqz v3, :cond_d5

    .line 2013
    const-string v3, "AS.AudioDeviceInventory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x1

    const-string v15, "deviceInfo:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " is(already)Connected:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d7

    :cond_d5
    const/16 v16, 0x1

    :goto_d7
    if-ne v6, v11, :cond_115

    .line 2018
    const-string v0, "AS.AudioDeviceInventory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDeviceConnection() deviceInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_f2

    .line 2019
    const-string v2, ""

    goto :goto_f4

    :cond_f2
    const-string v2, "dis"

    :goto_f4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2018
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    sget-object v0, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    if-eqz v6, :cond_10a

    .line 2021
    const-string v1, "connect"

    goto :goto_10c

    :cond_10a
    const-string v1, "disconnect"

    .line 2020
    :goto_10c
    invoke-virtual {v13, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 2021
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 2022
    monitor-exit v14

    return v16

    :cond_115
    if-eqz v6, :cond_1d4

    if-nez v11, :cond_1d4

    if-eqz p3, :cond_11f

    move v2, v7

    :goto_11c
    move/from16 v3, v16

    goto :goto_124

    .line 2029
    :cond_11f
    invoke-virtual {v0, v1, v7, v7}, Lcom/android/server/audio/AudioDeviceInventory;->setApmDeviceConnectionAvailable(Landroid/media/AudioDeviceAttributes;IZ)I

    move-result v2

    goto :goto_11c

    :goto_124
    if-ne v2, v3, :cond_18d

    .line 2033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "not connecting device 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " due to command error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2035
    sget-object v1, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v13, v1, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    const-string v3, "disconnected"

    .line 2036
    invoke-virtual {v0, v1, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 2037
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 2038
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APM failed to make available device 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2039
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AS.AudioDeviceInventory"

    const/4 v3, 0x1

    .line 2041
    invoke-virtual {v1, v3, v2}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v1

    .line 2038
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 2042
    monitor-exit v14

    return v7

    :cond_18d
    const/16 v3, 0x400

    if-eq v8, v3, :cond_19a

    const/high16 v3, 0x40000

    if-eq v8, v3, :cond_19a

    const v3, 0x40001

    if-ne v8, v3, :cond_19c

    :cond_19a
    move v3, v7

    goto :goto_1a3

    .line 2052
    :cond_19c
    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-direct {v1, v8, v9, v10}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move v15, v7

    goto :goto_1b2

    .line 2049
    :goto_1a3
    new-instance v7, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 2050
    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getAudioProfiles()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getAudioDescriptors()Ljava/util/List;

    move-result-object v12

    move v15, v3

    invoke-direct/range {v7 .. v12}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    move-object v1, v7

    .line 2054
    :goto_1b2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "device 0x"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/audio/AudioDeviceInventory;->trackDeviceApmAvailable(ILcom/android/server/audio/AudioDeviceInventory$DeviceInfo;Ljava/lang/String;)V

    if-nez v2, :cond_1d1

    .line 2056
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, v8}, Lcom/android/server/audio/AudioDeviceBroker;->postAccessoryPlugMediaUnmute(I)V

    :cond_1d1
    const/16 v16, 0x1

    goto :goto_1e7

    :cond_1d4
    move v15, v7

    if-nez v6, :cond_1e5

    if-eqz v11, :cond_1e5

    .line 2060
    iget-object v3, v0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v3, v1, v15, v15, v2}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;IIZ)I

    const/4 v3, 0x1

    .line 2064
    invoke-virtual {v0, v4, v3}, Lcom/android/server/audio/AudioDeviceInventory;->removeTrackedConnectedDevice(Ljava/lang/String;Z)V

    move/from16 v16, v3

    goto :goto_1e7

    :cond_1e5
    move/from16 v16, v15

    :goto_1e7
    if-eqz v16, :cond_256

    .line 2068
    invoke-static {v8}, Landroid/media/AudioSystem;->isBluetoothScoDevice(I)Z

    move-result v1

    if-eqz v1, :cond_24a

    if-eqz v6, :cond_1f4

    move-object/from16 v1, p4

    goto :goto_1f5

    :cond_1f4
    const/4 v1, 0x0

    .line 2069
    :goto_1f5
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->updateBluetoothPreferredModes_l(Landroid/bluetooth/BluetoothDevice;)V

    if-nez v6, :cond_1fe

    .line 2071
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceInventory;->purgeDevicesRoles_l()V

    goto :goto_20a

    .line 2073
    :cond_1fe
    const-string v3, ""

    .line 2074
    invoke-static {v10}, Lcom/android/server/audio/BtHelper;->getBtDeviceCategory(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    move v1, v8

    move-object v2, v10

    .line 2073
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceInventory;->addAudioDeviceInInventoryIfNeeded(ILjava/lang/String;Ljava/lang/String;IZ)V

    :goto_20a
    if-eqz v6, :cond_20f

    .line 2079
    const-string v0, " now available"

    goto :goto_211

    .line 2080
    :cond_20f
    const-string v0, " made unavailable"

    .line 2081
    :goto_211
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCO "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2082
    invoke-static {v8}, Landroid/media/AudioSystem;->isInputDevice(I)Z

    move-result v4

    if-eqz v4, :cond_229

    const-string/jumbo v4, "source"

    goto :goto_22c

    :cond_229
    const-string/jumbo v4, "sink"

    :goto_22c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " device addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v0, "AS.AudioDeviceInventory"

    .line 2085
    invoke-virtual {v2, v15, v0}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v0

    .line 2081
    invoke-virtual {v1, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 2087
    :cond_24a
    sget-object v0, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    const-string v1, "connected"

    invoke-virtual {v13, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    goto :goto_287

    .line 2089
    :cond_256
    const-string v0, "AS.AudioDeviceInventory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDeviceConnection() failed, deviceKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", deviceSpec="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", connect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    sget-object v0, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    const-string v1, "disconnected"

    invoke-virtual {v13, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 2093
    :goto_287
    monitor-exit v14

    return v16

    :goto_289
    monitor-exit v14
    :try_end_28a
    .catchall {:try_start_84 .. :try_end_28a} :catchall_a1

    throw v0
.end method

.method public isA2dpDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4

    const/16 v0, 0x80

    .line 3414
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    .line 3413
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->getConnectedDevicesOfTypes(Ljava/util/Set;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 3415
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_30
    const/4 p0, 0x0

    return p0
.end method

.method public isBluetoothAudioDeviceCategoryFixed(Ljava/lang/String;)Z
    .registers 3

    const/high16 v0, 0x20000000

    .line 278
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->findBtDeviceStateForAddress(Ljava/lang/String;I)Lcom/android/server/audio/AdiDeviceState;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 280
    invoke-virtual {v0}, Lcom/android/server/audio/AdiDeviceState;->isBtDeviceCategoryFixed()Z

    move-result p0

    return p0

    :cond_d
    const/16 v0, 0x80

    .line 283
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->findBtDeviceStateForAddress(Ljava/lang/String;I)Lcom/android/server/audio/AdiDeviceState;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 285
    invoke-virtual {p0}, Lcom/android/server/audio/AdiDeviceState;->isBtDeviceCategoryFixed()Z

    move-result p0

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public final isCurrentDeviceConnected()Z
    .registers 3

    .line 2923
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public isDeviceConnected(Landroid/media/AudioDeviceAttributes;)Z
    .registers 3

    .line 1968
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v0

    .line 1969
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 1968
    invoke-static {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1970
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1971
    :try_start_f
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    monitor-exit v0

    return p0

    :catchall_1c
    move-exception p0

    .line 1972
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public isHearingAidConnected()Z
    .registers 2

    const/high16 v0, 0x8000000

    .line 2734
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    .line 2733
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$addDevicesRoleForCapturePresetInt$16(IILjava/util/List;)I
    .registers 4

    .line 1654
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioSystemAdapter;->addDevicesRoleForCapturePreset(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$addDevicesRoleForStrategy$21(IILjava/util/List;)I
    .registers 4

    .line 1698
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioSystemAdapter;->setDevicesRoleForStrategy(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$clearDevicesRoleForCapturePreset$20(IILjava/util/List;)I
    .registers 4

    .line 1679
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioSystemAdapter;->clearDevicesRoleForCapturePreset(II)I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$clearDevicesRoleForStrategy$25(IILjava/util/List;)I
    .registers 4

    .line 1725
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioSystemAdapter;->clearDevicesRoleForStrategy(II)I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$disconnectA2dp$32(ILjava/lang/String;)V
    .registers 3

    .line 2115
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V

    return-void
.end method

.method public final synthetic lambda$disconnectA2dpSink$34(Ljava/lang/String;)V
    .registers 2

    .line 2133
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$disconnectHearingAid$36(ILjava/lang/String;)V
    .registers 3

    .line 2153
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeHearingAidDeviceUnavailableLater(Ljava/lang/String;I)V

    return-void
.end method

.method public final synthetic lambda$disconnectLeAudio$38(IILandroid/util/Pair;)V
    .registers 5

    .line 2212
    iget-object v0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, v0, p1, p3, p2}, Lcom/android/server/audio/AudioDeviceInventory;->makeLeAudioDeviceUnavailableLater(Ljava/lang/String;III)V

    return-void
.end method

.method public final synthetic lambda$isCurrentDeviceConnected$39(Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)Z
    .registers 2

    .line 2924
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object p0, p0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$purgeDevicesRoles_l$27(IILjava/util/List;)I
    .registers 4

    .line 1910
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioSystemAdapter;->removeDevicesRoleForStrategy(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$purgeDevicesRoles_l$28(IILjava/util/List;)I
    .registers 4

    .line 1912
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioSystemAdapter;->removeDevicesRoleForCapturePreset(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$reapplyExternalDevicesRoles$12(Ljava/lang/Integer;Ljava/util/List;)V
    .registers 3

    .line 961
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setPreferredDevicesForStrategy(ILjava/util/List;)I

    return-void
.end method

.method public final synthetic lambda$reapplyExternalDevicesRoles$13(Ljava/lang/Integer;Ljava/util/List;)V
    .registers 5

    .line 964
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/server/audio/AudioDeviceInventory;->addDevicesRoleForStrategy(IILjava/util/List;Z)I

    return-void
.end method

.method public final synthetic lambda$reapplyExternalDevicesRoles$14(Ljava/lang/Integer;Ljava/util/List;)V
    .registers 4

    .line 969
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    .line 968
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setDevicesRoleForCapturePreset(IILjava/util/List;)I

    return-void
.end method

.method public final synthetic lambda$removeDevicesRoleForCapturePresetInt$17(IILjava/util/List;)I
    .registers 4

    .line 1662
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioSystemAdapter;->removeDevicesRoleForCapturePreset(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$removeDevicesRoleForStrategy$22(IILjava/util/List;)I
    .registers 4

    .line 1707
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioSystemAdapter;->removeDevicesRoleForStrategy(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$setDevicesRoleForCapturePreset$18(IILjava/util/List;)I
    .registers 4

    .line 1670
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioSystemAdapter;->setDevicesRoleForCapturePreset(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$setDevicesRoleForCapturePreset$19(IILjava/util/List;)I
    .registers 4

    .line 1672
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioSystemAdapter;->clearDevicesRoleForCapturePreset(II)I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$setDevicesRoleForStrategy$23(IILjava/util/List;)I
    .registers 4

    .line 1716
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioSystemAdapter;->setDevicesRoleForStrategy(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$setDevicesRoleForStrategy$24(IILjava/util/List;)I
    .registers 4

    .line 1718
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioSystemAdapter;->clearDevicesRoleForStrategy(II)I

    move-result p0

    return p0
.end method

.method public final makeA2dpDeviceAvailable(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;ILjava/lang/String;)V
    .registers 13

    .line 2323
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 2324
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    .line 2328
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v7, 0x1

    invoke-virtual {v1, v7, v7, p3}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(ZZLjava/lang/String;)V

    .line 2331
    new-instance p3, Landroid/media/AudioDeviceAttributes;

    const/16 v8, 0x80

    invoke-direct {p3, v8, v3, v0}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2333
    invoke-virtual {p0, p3, p2, v1}, Lcom/android/server/audio/AudioDeviceInventory;->setApmDeviceConnectionAvailable(Landroid/media/AudioDeviceAttributes;IZ)I

    move-result p3

    if-ne p3, v7, :cond_4e

    .line 2336
    sget-object p0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance p1, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "APM failed to make available A2DP device addr="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2338
    invoke-static {v3}, Landroid/media/Utils;->anonymizeBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " error="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string p2, "AS.AudioDeviceInventory"

    .line 2339
    invoke-virtual {p1, v7, p2}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p1

    .line 2336
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return-void

    .line 2344
    :cond_4e
    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    iget-object v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2345
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getIdentityAddress()Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x80

    move v6, p2

    move-object v4, v3

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object p2, v3

    move-object v3, v4

    .line 2346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A2DP sink device addr="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/media/Utils;->anonymizeBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2347
    invoke-virtual {p0, p3, v1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->trackDeviceApmAvailable(ILcom/android/server/audio/AudioDeviceInventory$DeviceInfo;Ljava/lang/String;)V

    .line 2351
    iget-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p3, v7}, Lcom/android/server/audio/AudioDeviceBroker;->clearA2dpSuspended(Z)V

    .line 2353
    iget-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p3, v8}, Lcom/android/server/audio/AudioDeviceBroker;->postAccessoryPlugMediaUnmute(I)V

    .line 2354
    invoke-virtual {p0, p2, v7}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    .line 2356
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->updateBluetoothPreferredModes_l(Landroid/bluetooth/BluetoothDevice;)V

    .line 2359
    invoke-static {v3}, Lcom/android/server/audio/BtHelper;->getBtDeviceCategory(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    const/16 v2, 0x80

    .line 2358
    const-string v4, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceInventory;->addAudioDeviceInInventoryIfNeeded(ILjava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public final makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V
    .registers 6

    .line 2606
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v1, 0x1

    const-string/jumbo v2, "makeA2dpDeviceUnavailableLater"

    invoke-virtual {v0, v1, v1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->setA2dpSuspended(ZZLjava/lang/String;)V

    const/16 v0, 0x80

    .line 2610
    invoke-static {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2611
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    .line 2612
    iget v1, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    goto :goto_1e

    :cond_1d
    move v1, v2

    .line 2615
    :goto_1e
    invoke-virtual {p0, v0, v2}, Lcom/android/server/audio/AudioDeviceInventory;->removeTrackedConnectedDevice(Ljava/lang/String;Z)V

    .line 2617
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->setA2dpTimeout(Ljava/lang/String;II)V

    return-void
.end method

.method public final makeA2dpDeviceUnavailableNow(Ljava/lang/String;IZ)V
    .registers 11

    .line 2563
    new-instance v0, Landroid/media/MediaMetrics$Item;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio.device.a2dp."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->ENCODING:Landroid/media/MediaMetrics$Key;

    .line 2564
    invoke-static {p2}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v2, "makeA2dpDeviceUnavailableNow"

    .line 2565
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    if-nez p1, :cond_37

    .line 2568
    sget-object p0, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string p1, "address null"

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    :cond_37
    const/16 v1, 0x80

    .line 2572
    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2574
    new-instance v3, Landroid/media/AudioDeviceAttributes;

    invoke-direct {v3, v1, p1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    .line 2576
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioDeviceBroker;->clearAvrcpAbsoluteVolumeSupported(Landroid/media/AudioDeviceAttributes;)V

    .line 2577
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, p2, p3}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;IIZ)I

    move-result p2

    const/4 v1, 0x1

    .line 2580
    invoke-virtual {p0, v2, v1}, Lcom/android/server/audio/AudioDeviceInventory;->removeTrackedConnectedDevice(Ljava/lang/String;Z)V

    .line 2582
    const-string v2, "AS.AudioDeviceInventory"

    if-eqz p2, :cond_82

    .line 2583
    sget-object p3, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v3, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APM failed to make unavailable A2DP device addr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2585
    invoke-static {p1}, Landroid/media/Utils;->anonymizeBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " error="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 2586
    invoke-virtual {v3, v1, v2}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p1

    .line 2583
    invoke-virtual {p3, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    goto :goto_ad

    .line 2589
    :cond_82
    sget-object p2, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v3, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A2DP device addr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2590
    invoke-static {p1}, Landroid/media/Utils;->anonymizeBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " made unavailable, deviceSwitch: "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 2592
    invoke-virtual {v3, v4, v2}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p1

    .line 2589
    invoke-virtual {p2, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    :goto_ad
    const/4 p1, 0x0

    .line 2596
    invoke-virtual {p0, p1, v1}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    .line 2597
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 2598
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->updateBluetoothPreferredModes_l(Landroid/bluetooth/BluetoothDevice;)V

    .line 2599
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->purgeDevicesRoles_l()V

    return-void
.end method

.method public final makeA2dpSrcAvailable(Ljava/lang/String;)V
    .registers 7

    .line 2623
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    const/high16 v1, -0x7ffe0000

    invoke-direct {v0, v1, p1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x0

    .line 2625
    invoke-virtual {p0, v0, v2, v2}, Lcom/android/server/audio/AudioDeviceInventory;->setApmDeviceConnectionAvailable(Landroid/media/AudioDeviceAttributes;IZ)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3d

    .line 2628
    sget-object p0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APM failed to make available A2DP source device addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2630
    invoke-static {p1}, Landroid/media/Utils;->anonymizeBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " error="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string p1, "AS.AudioDeviceInventory"

    .line 2631
    invoke-virtual {v1, v2, p1}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p1

    .line 2628
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return-void

    .line 2636
    :cond_3d
    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    const-string v3, ""

    invoke-direct {v2, v1, v3, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A2DP source device addr="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/media/Utils;->anonymizeBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2638
    invoke-virtual {p0, v0, v2, p1}, Lcom/android/server/audio/AudioDeviceInventory;->trackDeviceApmAvailable(ILcom/android/server/audio/AudioDeviceInventory$DeviceInfo;Ljava/lang/String;)V

    return-void
.end method

.method public final makeA2dpSrcUnavailable(Ljava/lang/String;)V
    .registers 6

    .line 2644
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    const/high16 v1, -0x7ffe0000

    invoke-direct {v0, v1, p1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    .line 2646
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v3, v3}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;IIZ)I

    .line 2651
    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 2650
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->removeTrackedConnectedDevice(Ljava/lang/String;Z)V

    return-void
.end method

.method public final makeHearingAidDeviceAvailable(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 15

    .line 2658
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/high16 v1, 0x8000000

    invoke-virtual {v0, p3, v1}, Lcom/android/server/audio/AudioDeviceBroker;->getVolumeForDeviceIgnoreMute(II)I

    move-result v0

    .line 2660
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, v0, p3}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidVolumeIndex(II)V

    .line 2662
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p4}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(ZZLjava/lang/String;)V

    .line 2664
    new-instance p4, Landroid/media/AudioDeviceAttributes;

    invoke-direct {p4, v1, p1, p2}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2666
    invoke-virtual {p0, p4, v3, v3}, Lcom/android/server/audio/AudioDeviceInventory;->setApmDeviceConnectionAvailable(Landroid/media/AudioDeviceAttributes;IZ)I

    move-result p4

    if-ne p4, v2, :cond_40

    .line 2669
    sget-object p0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "APM failed to make available HearingAid addr="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " error="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AS.AudioDeviceInventory"

    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/utils/EventLogger;->enqueueAndSlog(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 2677
    :cond_40
    new-instance v0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-direct {v0, v1, p2, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2678
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HearingAid addr="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2679
    invoke-virtual {p0, p4, v0, v2}, Lcom/android/server/audio/AudioDeviceInventory;->trackDeviceApmAvailable(ILcom/android/server/audio/AudioDeviceInventory$DeviceInfo;Ljava/lang/String;)V

    .line 2681
    iget-object p4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p4, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postAccessoryPlugMediaUnmute(I)V

    .line 2682
    iget-object p4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v0, "makeHearingAidDeviceAvailable"

    invoke-virtual {p4, p3, v1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->postApplyVolumeOnDevice(IILjava/lang/String;)V

    .line 2684
    invoke-virtual {p0, p2, v3}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    .line 2686
    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->getBtDeviceCategory(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    const/high16 v5, 0x8000000

    .line 2685
    const-string v7, ""

    move-object v4, p0

    move-object v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/audio/AudioDeviceInventory;->addAudioDeviceInInventoryIfNeeded(ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 2687
    new-instance p0, Landroid/media/MediaMetrics$Item;

    const-string p1, "audio.device.makeHearingAidDeviceAvailable"

    invoke-direct {p0, p1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object p1, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    if-eqz v6, :cond_84

    move-object p4, v6

    goto :goto_86

    .line 2688
    :cond_84
    const-string p4, ""

    :goto_86
    invoke-virtual {p0, p1, p4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p1, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 2690
    invoke-static {v1}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object p4

    .line 2689
    invoke-virtual {p0, p1, p4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p1, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    .line 2691
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p1, Landroid/media/MediaMetrics$Property;->STREAM_TYPE:Landroid/media/MediaMetrics$Key;

    .line 2693
    invoke-static {p3}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object p2

    .line 2692
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 2694
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void
.end method

.method public final makeHearingAidDeviceUnavailableLater(Ljava/lang/String;I)V
    .registers 5

    const/high16 v0, 0x8000000

    .line 2721
    invoke-static {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->removeTrackedConnectedDevice(Ljava/lang/String;Z)V

    .line 2724
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->setHearingAidTimeout(Ljava/lang/String;I)V

    return-void
.end method

.method public final makeHearingAidDeviceUnavailableNow(Ljava/lang/String;Z)V
    .registers 7

    .line 2699
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    const/high16 v1, 0x8000000

    invoke-direct {v0, v1, p1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    .line 2701
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v3, p2}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;IIZ)I

    .line 2706
    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    .line 2705
    invoke-virtual {p0, p2, v0}, Lcom/android/server/audio/AudioDeviceInventory;->removeTrackedConnectedDevice(Ljava/lang/String;Z)V

    const/4 p2, 0x0

    .line 2709
    invoke-virtual {p0, p2, v3}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    .line 2710
    new-instance p0, Landroid/media/MediaMetrics$Item;

    const-string p2, "audio.device.makeHearingAidDeviceUnavailableNow"

    invoke-direct {p0, p2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object p2, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    if-eqz p1, :cond_25

    goto :goto_27

    .line 2711
    :cond_25
    const-string p1, ""

    :goto_27
    invoke-virtual {p0, p2, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p1, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 2713
    invoke-static {v1}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object p2

    .line 2712
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 2714
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void
.end method

.method public final makeLeAudioDeviceAvailable(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;IILjava/lang/String;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    .line 2779
    iget v1, v6, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mVolume:I

    const/4 v8, -0x1

    if-ne v1, v8, :cond_d

    move v9, v8

    goto :goto_10

    :cond_d
    mul-int/lit8 v1, v1, 0xa

    move v9, v1

    .line 2780
    :goto_10
    iget v11, v6, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    if-eqz v11, :cond_103

    .line 2783
    iget-object v1, v6, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v13

    .line 2784
    iget-object v1, v6, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    .line 2787
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v3, v6, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v4, v6, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 2788
    invoke-virtual {v2, v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->getLeAudioDeviceGroupId(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v2

    .line 2791
    const-string v3, ""

    const/4 v4, 0x1

    if-eq v2, v8, :cond_64

    .line 2792
    iget-object v5, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget v10, v6, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 2793
    invoke-virtual {v5, v2, v10}, Lcom/android/server/audio/AudioDeviceBroker;->getLeAudioGroupAddresses(II)Ljava/util/List;

    move-result-object v5

    .line 2794
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-lt v10, v4, :cond_64

    .line 2795
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_41
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_64

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    .line 2796
    iget-object v12, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_41

    .line 2797
    iget-object v5, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 2798
    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    move-object/from16 v17, v5

    move-object/from16 v18, v10

    goto :goto_68

    :cond_64
    move-object/from16 v17, v3

    move-object/from16 v18, v17

    :goto_68
    const v5, 0x20000002

    if-ne v11, v5, :cond_75

    .line 2805
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 2806
    const-string v1, "Broadcast"

    :cond_75
    move-object v12, v1

    .line 2812
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v3, 0x0

    move-object/from16 v5, p4

    invoke-virtual {v1, v4, v3, v5}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(ZZLjava/lang/String;)V

    .line 2814
    new-instance v1, Landroid/media/AudioDeviceAttributes;

    invoke-direct {v1, v11, v13, v12}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move/from16 v15, p3

    .line 2815
    invoke-virtual {v0, v1, v15, v3}, Lcom/android/server/audio/AudioDeviceInventory;->setApmDeviceConnectionAvailable(Landroid/media/AudioDeviceAttributes;IZ)I

    move-result v1

    if-ne v1, v4, :cond_ac

    .line 2817
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APM failed to make available LE Audio device addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioDeviceInventory"

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/utils/EventLogger;->enqueueAndSlog(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 2824
    :cond_ac
    new-instance v10, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    iget-object v5, v6, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2826
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getIdentityAddress()Ljava/lang/String;

    move-result-object v14

    move/from16 v16, v2

    invoke-direct/range {v10 .. v18}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 2828
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LE Audio "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2829
    invoke-static {v11}, Landroid/media/AudioSystem;->isInputDevice(I)Z

    move-result v5

    if-eqz v5, :cond_cd

    const-string/jumbo v5, "source"

    goto :goto_d0

    :cond_cd
    const-string/jumbo v5, "sink"

    :goto_d0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " device addr="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2830
    invoke-static {v13}, Landroid/media/Utils;->anonymizeBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2831
    invoke-virtual {v0, v1, v10, v2}, Lcom/android/server/audio/AudioDeviceInventory;->trackDeviceApmAvailable(ILcom/android/server/audio/AudioDeviceInventory$DeviceInfo;Ljava/lang/String;)V

    .line 2834
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, v4}, Lcom/android/server/audio/AudioDeviceBroker;->clearLeAudioSuspended(Z)V

    .line 2835
    iget-boolean v1, v6, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    if-eqz v1, :cond_f7

    .line 2836
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, v11}, Lcom/android/server/audio/AudioDeviceBroker;->postAccessoryPlugMediaUnmute(I)V

    .line 2837
    invoke-virtual {v0, v12, v3}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    .line 2840
    :cond_f7
    invoke-static {v13}, Lcom/android/server/audio/BtHelper;->getBtDeviceCategory(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    move v1, v11

    move-object v2, v13

    move-object/from16 v3, v17

    .line 2839
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceInventory;->addAudioDeviceInInventoryIfNeeded(ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 2843
    :cond_103
    iget-boolean v1, v6, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    if-eqz v1, :cond_125

    if-ne v7, v8, :cond_10a

    return-void

    :cond_10a
    if-ne v9, v8, :cond_112

    .line 2850
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, v7, v11}, Lcom/android/server/audio/AudioDeviceBroker;->getVolumeForDeviceIgnoreMute(II)I

    move-result v9

    .line 2852
    :cond_112
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, v7}, Lcom/android/server/audio/AudioDeviceBroker;->getMaxVssVolumeForStream(I)I

    move-result v1

    .line 2853
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, v9, v1, v7}, Lcom/android/server/audio/AudioDeviceBroker;->postSetLeAudioVolumeIndex(III)V

    .line 2854
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v2, "makeLeAudioDeviceAvailable"

    invoke-virtual {v1, v7, v11, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postApplyVolumeOnDevice(IILjava/lang/String;)V

    .line 2857
    :cond_125
    iget-object v1, v6, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->updateBluetoothPreferredModes_l(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public final makeLeAudioDeviceUnavailableLater(Ljava/lang/String;III)V
    .registers 8

    .line 2899
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v1, 0x1

    const-string/jumbo v2, "makeLeAudioDeviceUnavailableLater"

    invoke-virtual {v0, v1, v1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->setLeAudioSuspended(ZZLjava/lang/String;)V

    .line 2902
    invoke-static {p2, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->removeTrackedConnectedDevice(Ljava/lang/String;Z)V

    .line 2905
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioDeviceBroker;->setLeAudioTimeout(Ljava/lang/String;III)V

    return-void
.end method

.method public final makeLeAudioDeviceUnavailableNow(Ljava/lang/String;IIZ)V
    .registers 13

    const/4 v0, 0x0

    if-eqz p2, :cond_91

    .line 2865
    new-instance v1, Landroid/media/AudioDeviceAttributes;

    invoke-direct {v1, p2, p1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    .line 2866
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v2, v1, v0, p3, p4}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;IIZ)I

    move-result p3

    .line 2870
    invoke-static {p2, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/audio/AudioDeviceInventory;->removeTrackedConnectedDevice(Ljava/lang/String;Z)V

    .line 2873
    const-string v1, "AS.AudioDeviceInventory"

    const-string/jumbo v3, "sink"

    const-string/jumbo v4, "source"

    if-eqz p3, :cond_57

    .line 2874
    sget-object p4, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v5, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "APM failed to make unavailable LE Audio "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2876
    invoke-static {p2}, Landroid/media/AudioSystem;->isInputDevice(I)Z

    move-result p2

    if-eqz p2, :cond_35

    move-object v3, v4

    :cond_35
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " device addr="

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " error="

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 2878
    invoke-virtual {v5, v2, v1}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p1

    .line 2874
    invoke-virtual {p4, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    goto :goto_91

    .line 2881
    :cond_57
    sget-object p3, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LE Audio "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2882
    invoke-static {p2}, Landroid/media/AudioSystem;->isInputDevice(I)Z

    move-result p2

    if-eqz p2, :cond_6c

    move-object v3, v4

    :cond_6c
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "device addr="

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2883
    invoke-static {p1}, Landroid/media/Utils;->anonymizeBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " made unavailable, deviceSwitch: "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 2885
    invoke-virtual {v2, v0, v1}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p1

    .line 2881
    invoke-virtual {p3, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    :cond_91
    :goto_91
    const/4 p1, 0x0

    .line 2889
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    .line 2890
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->updateBluetoothPreferredModes_l(Landroid/bluetooth/BluetoothDevice;)V

    .line 2891
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->purgeDevicesRoles_l()V

    return-void
.end method

.method public onBluetoothDeviceConfigChange(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;IZI)I
    .registers 19

    move/from16 v1, p2

    .line 1102
    new-instance v2, Landroid/media/MediaMetrics$Item;

    const-string v3, "audio.device.onBluetoothDeviceConfigChange"

    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 1104
    invoke-static/range {p4 .. p4}, Lcom/android/server/audio/BtHelper;->deviceEventToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    .line 1107
    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v4, 0x0

    if-nez v3, :cond_24

    .line 1109
    sget-object p0, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string v0, "btDevice null"

    invoke-virtual {v2, p0, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return v4

    .line 1112
    :cond_24
    sget-boolean v5, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v5, :cond_3f

    .line 1113
    const-string v5, "AS.AudioDeviceInventory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onBluetoothDeviceConfigChange btDevice="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_3f
    iget v5, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mVolume:I

    .line 1117
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 1118
    invoke-static {v6}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4d

    .line 1119
    const-string v6, ""

    .line 1121
    :cond_4d
    sget-object v7, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v8, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onBluetoothDeviceConfigChange addr="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " event="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    invoke-static/range {p4 .. p4}, Lcom/android/server/audio/BtHelper;->deviceEventToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1121
    invoke-virtual {v7, v8}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1125
    iget v8, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    iget-boolean v9, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    invoke-static {v8, v9, v3}, Lcom/android/server/audio/BtHelper;->getTypeFromProfile(IZLandroid/bluetooth/BluetoothDevice;)I

    move-result v8

    .line 1129
    iget-object v9, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1130
    :try_start_80
    iget-object v10, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget v11, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    invoke-virtual {v10, v3, v11}, Lcom/android/server/audio/AudioDeviceBroker;->hasScheduledA2dpConnection(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v10

    if-eqz v10, :cond_ab

    .line 1131
    new-instance p0, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string v0, "A2dp config change ignored (scheduled connection change)"

    invoke-direct {p0, v0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v0, "AS.AudioDeviceInventory"

    .line 1133
    invoke-virtual {p0, v4, v0}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 1131
    invoke-virtual {v7, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1134
    sget-object p0, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string v0, "A2dp config change ignored"

    invoke-virtual {v2, p0, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 1135
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1136
    monitor-exit v9

    return v4

    :catchall_a7
    move-exception v0

    move-object p0, v0

    goto/16 :goto_18e

    .line 1138
    :cond_ab
    invoke-static {v8, v6}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1139
    iget-object v10, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    if-nez v10, :cond_ce

    .line 1141
    const-string p0, "AS.AudioDeviceInventory"

    const-string v0, "invalid null DeviceInfo in onBluetoothDeviceConfigChange"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    sget-object p0, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v0, "null DeviceInfo"

    invoke-virtual {v2, p0, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1143
    monitor-exit v9

    return v4

    .line 1146
    :cond_ce
    sget-object v11, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v2, v11, v6}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v11

    sget-object v12, Landroid/media/MediaMetrics$Property;->ENCODING:Landroid/media/MediaMetrics$Key;

    .line 1147
    invoke-static {v1}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v11

    sget-object v12, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    .line 1148
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v12, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v5

    sget-object v11, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    iget-object v12, v10, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    .line 1149
    invoke-virtual {v5, v11, v12}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    if-nez p4, :cond_17a

    .line 1152
    iget v5, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    const/4 v11, 0x2

    if-eq v5, v11, :cond_fe

    const/16 v11, 0x16

    if-eq v5, v11, :cond_fe

    const/16 v11, 0x1a

    if-ne v5, v11, :cond_172

    :cond_fe
    if-eqz p3, :cond_172

    .line 1156
    iput v1, v10, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    .line 1157
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v8, v10}, Ljava/util/LinkedHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    iget v8, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    .line 1160
    invoke-static {v3}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v10

    .line 1158
    invoke-virtual {v5, v8, v6, v10, v1}, Lcom/android/server/audio/AudioSystemAdapter;->handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_143

    .line 1162
    new-instance v5, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "APM handleDeviceConfigChange failed for device addr="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " codec="

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    invoke-static {v1}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "AS.AudioDeviceInventory"

    const/4 v6, 0x1

    .line 1166
    invoke-virtual {v5, v6, v1}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v1

    .line 1162
    invoke-virtual {v7, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    move v1, v4

    goto :goto_174

    .line 1172
    :cond_143
    new-instance v5, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "APM handleDeviceConfigChange success for device addr="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " codec="

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    invoke-static {v1}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "AS.AudioDeviceInventory"

    .line 1176
    invoke-virtual {v5, v4, v1}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v1

    .line 1172
    invoke-virtual {v7, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    const/16 v1, 0x1f4

    move v6, v4

    goto :goto_174

    :cond_172
    move v1, v4

    move v6, v1

    :goto_174
    if-nez p3, :cond_17c

    .line 1182
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioDeviceInventory;->updateBluetoothPreferredModes_l(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_17c

    :cond_17a
    move v1, v4

    move v6, v1

    .line 1185
    :cond_17c
    :goto_17c
    monitor-exit v9
    :try_end_17d
    .catchall {:try_start_80 .. :try_end_17d} :catchall_a7

    if-eqz v6, :cond_18a

    .line 1187
    new-instance v3, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    invoke-direct {v3, p1, v4}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;-><init>(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;I)V

    const-string/jumbo v0, "onBluetoothDeviceConfigChange"

    invoke-virtual {p0, v3, v0}, Lcom/android/server/audio/AudioDeviceInventory;->setBluetoothActiveDevice(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;Ljava/lang/String;)I

    .line 1191
    :cond_18a
    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    return v1

    .line 1185
    :goto_18e
    :try_start_18e
    monitor-exit v9
    :try_end_18f
    .catchall {:try_start_18e .. :try_end_18f} :catchall_a7

    throw p0
.end method

.method public onBtProfileDisconnected(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_46

    const/4 v0, 0x2

    if-eq p1, v0, :cond_42

    const/16 v0, 0xb

    if-eq p1, v0, :cond_3e

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_3a

    const/16 v0, 0x15

    if-eq p1, v0, :cond_36

    const/16 v0, 0x16

    if-eq p1, v0, :cond_32

    .line 2182
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onBtProfileDisconnected: Not a valid profile to disconnect "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2183
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2182
    const-string p1, "AS.AudioDeviceInventory"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2175
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectLeAudioUnicast()V

    return-void

    .line 2172
    :cond_36
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectHearingAid()V

    return-void

    .line 2178
    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectLeAudioBroadcast()V

    return-void

    .line 2169
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectA2dpSink()V

    return-void

    .line 2166
    :cond_42
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectA2dp()V

    return-void

    .line 2163
    :cond_46
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectHeadset()V

    return-void
.end method

.method public onMakeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V
    .registers 5

    .line 1196
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1197
    :try_start_4
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;IZ)V

    .line 1198
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public onMakeHearingAidDeviceUnavailableNow(Ljava/lang/String;)V
    .registers 4

    .line 1208
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1209
    :try_start_4
    invoke-virtual {p0, p1, v1}, Lcom/android/server/audio/AudioDeviceInventory;->makeHearingAidDeviceUnavailableNow(Ljava/lang/String;Z)V

    .line 1210
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public onMakeLeAudioDeviceUnavailableNow(Ljava/lang/String;II)V
    .registers 6

    .line 1202
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1203
    :try_start_4
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/audio/AudioDeviceInventory;->makeLeAudioDeviceUnavailableNow(Ljava/lang/String;IIZ)V

    .line 1204
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public onReportNewRoutes()V
    .registers 6

    .line 1259
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    if-lez v0, :cond_44

    .line 1261
    new-instance v1, Landroid/media/MediaMetrics$Item;

    const-string v2, "audio.device.onReportNewRoutes"

    invoke-direct {v1, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/media/MediaMetrics$Property;->OBSERVERS:Landroid/media/MediaMetrics$Key;

    .line 1262
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    .line 1263
    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1265
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v1

    .line 1266
    :try_start_1f
    new-instance v2, Landroid/media/AudioRoutesInfo;

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v2, v3}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 1267
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_41

    :goto_27
    if-lez v0, :cond_44

    add-int/lit8 v0, v0, -0x1

    .line 1270
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/media/IAudioRoutesObserver;

    .line 1272
    :try_start_33
    invoke-interface {v1, v2}, Landroid/media/IAudioRoutesObserver;->dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_27

    :catch_37
    move-exception v1

    .line 1274
    const-string v3, "AS.AudioDeviceInventory"

    const-string/jumbo v4, "onReportNewRoutes"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    :catchall_41
    move-exception p0

    .line 1267
    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p0

    .line 1278
    :cond_44
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1279
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->postObserveDevicesForAllStreams()V

    return-void
.end method

.method public onRestoreDevices()Z
    .registers 16

    .line 873
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 874
    :try_start_3
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    const-string v2, "AudioDeviceInventory.onRestoreDevices"

    const-string v3, "AS.AudioDeviceInventory"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Lcom/android/server/utils/EventLogger;->enqueueAndSlog(Ljava/lang/String;ILjava/lang/String;)V

    .line 877
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 891
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 892
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_e5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 893
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    iget v7, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    iget-object v8, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/audio/AudioSystemAdapter;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v6

    const/16 v7, 0x64

    if-ne v6, v7, :cond_42

    .line 895
    monitor-exit v1

    return v4

    :catchall_3e
    move-exception v0

    move-object p0, v0

    goto/16 :goto_126

    :cond_42
    if-ne v6, v5, :cond_6b

    .line 899
    sget-object v5, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onRestoreDevices device already connected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AS.AudioDeviceInventory"

    .line 899
    invoke-virtual {v5, v6, v4, v7}, Lcom/android/server/utils/EventLogger;->enqueueAndSlog(Ljava/lang/String;ILjava/lang/String;)V

    .line 902
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 906
    :cond_6b
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance v8, Landroid/media/AudioDeviceAttributes;

    .line 907
    iget v9, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v9}, Landroid/media/AudioSystem;->isInputDevice(I)Z

    move-result v9

    if-eqz v9, :cond_79

    move v9, v5

    goto :goto_7a

    :cond_79
    const/4 v9, 0x2

    .line 909
    :goto_7a
    iget-object v10, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    iget v11, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    iget-object v12, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    iget-object v13, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mAudioProfiles:Ljava/util/List;

    iget-object v14, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mAudioDescriptors:Ljava/util/List;

    invoke-direct/range {v8 .. v14}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    iget v9, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    .line 906
    invoke-virtual {v6, v8, v5, v9, v4}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;IIZ)I

    move-result v6

    if-ne v6, v7, :cond_91

    .line 918
    monitor-exit v1

    return v4

    :cond_91
    if-nez v6, :cond_bb

    .line 922
    sget-object v5, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onRestoreDevices device successfully reconnected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AS.AudioDeviceInventory"

    .line 922
    invoke-virtual {v5, v6, v4, v7}, Lcom/android/server/utils/EventLogger;->enqueueAndSlog(Ljava/lang/String;ILjava/lang/String;)V

    .line 925
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_21

    .line 929
    :cond_bb
    sget-object v7, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onRestoreDevices device failed to reconnect: res:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "device:"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "AS.AudioDeviceInventory"

    .line 929
    invoke-virtual {v7, v6, v5, v8}, Lcom/android/server/utils/EventLogger;->enqueueAndSlog(Ljava/lang/String;ILjava/lang/String;)V

    .line 933
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_21

    .line 936
    :cond_e5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v4

    :cond_ea
    :goto_ea
    if-ge v3, v2, :cond_10c

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v3, v3, 0x1

    check-cast v6, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 937
    iget-object v7, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 938
    iget v6, v6, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v6}, Landroid/media/AudioSystem;->isBluetoothScoDevice(I)Z

    move-result v6

    if-eqz v6, :cond_ea

    .line 939
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v4}, Lcom/android/server/audio/AudioDeviceBroker;->onSetBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_ea

    .line 942
    :cond_10c
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->updateAlwaysRingDeviceConnected()V

    .line 944
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRolesInt:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 945
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRolesInt:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 946
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->applyConnectedDevicesRoles_l()V

    .line 949
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioDeviceBroker;->setWaitingForDeviceRestore(Z)V

    .line 950
    monitor-exit v1
    :try_end_122
    .catchall {:try_start_3 .. :try_end_122} :catchall_3e

    .line 952
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->reapplyExternalDevicesRoles()V

    return v5

    .line 950
    :goto_126
    :try_start_126
    monitor-exit v1
    :try_end_127
    .catchall {:try_start_126 .. :try_end_127} :catchall_3e

    throw p0
.end method

.method public onSetBtActiveDevice(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;II)V
    .registers 13

    .line 981
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_43

    .line 982
    const-string v0, "AS.AudioDeviceInventory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSetBtActiveDevice btDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 984
    invoke-static {v2}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    .line 985
    invoke-static {v2}, Landroid/bluetooth/BluetoothProfile;->getConnectionStateName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isDeviceSwitch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsDeviceSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 982
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :cond_43
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 989
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 990
    const-string v0, ""

    .line 993
    :cond_51
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BT connected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " codec="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    invoke-static {p2}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 993
    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 996
    new-instance v1, Landroid/media/MediaMetrics$Item;

    const-string v2, "audio.device.onSetBtActiveDevice"

    invoke-direct {v1, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/media/MediaMetrics$Property;->STATUS:Landroid/media/MediaMetrics$Key;

    iget v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 997
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    iget v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    .line 999
    invoke-static {v3}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v3

    .line 998
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    .line 1000
    invoke-virtual {v1, v2, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->ENCODING:Landroid/media/MediaMetrics$Key;

    .line 1002
    invoke-static {p2}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    move-result-object v3

    .line 1001
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v3, "onSetBtActiveDevice"

    .line 1003
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->STREAM_TYPE:Landroid/media/MediaMetrics$Key;

    .line 1005
    invoke-static {p3}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v3

    .line 1004
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    .line 1007
    iget v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_c4

    .line 1008
    const-string v3, "connected"

    goto :goto_c6

    :cond_c4
    const-string v3, "disconnected"

    .line 1006
    :goto_c6
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    .line 1009
    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1011
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1012
    :try_start_d0
    iget v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    invoke-static {v2, v0}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1013
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_e4

    move v6, v5

    goto :goto_e5

    :cond_e4
    move v6, v3

    :goto_e5
    if-eqz v6, :cond_f0

    .line 1017
    iget v7, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    if-eq v7, v4, :cond_f0

    move v7, v5

    goto :goto_f1

    :catchall_ed
    move-exception p0

    goto/16 :goto_1a9

    :cond_f0
    move v7, v3

    :goto_f1
    if-nez v6, :cond_f9

    .line 1019
    iget v6, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    if-ne v6, v4, :cond_f9

    move v6, v5

    goto :goto_fa

    :cond_f9
    move v6, v3

    .line 1022
    :goto_fa
    iget v8, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    if-eq v8, v5, :cond_18b

    if-eq v8, v4, :cond_167

    const/16 v3, 0xb

    if-eq v8, v3, :cond_15b

    const/16 v3, 0x1a

    if-eq v8, v3, :cond_146

    const/16 v3, 0x15

    if-eq v8, v3, :cond_12e

    const/16 v3, 0x16

    if-ne v8, v3, :cond_111

    goto :goto_146

    .line 1074
    :cond_111
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid profile "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 1075
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12e
    if-eqz v7, :cond_137

    .line 1047
    iget-boolean p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsDeviceSwitch:Z

    invoke-virtual {p0, v0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeHearingAidDeviceUnavailableNow(Ljava/lang/String;Z)V

    goto/16 :goto_1a7

    :cond_137
    if-eqz v6, :cond_1a7

    .line 1049
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onSetBtActiveDevice"

    invoke-virtual {p0, v0, p1, p3, p2}, Lcom/android/server/audio/AudioDeviceInventory;->makeHearingAidDeviceAvailable(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1a7

    :cond_146
    :goto_146
    if-eqz v7, :cond_152

    .line 1056
    iget p2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    iget p3, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    iget-boolean p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsDeviceSwitch:Z

    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeLeAudioDeviceUnavailableNow(Ljava/lang/String;IIZ)V

    goto :goto_1a7

    :cond_152
    if-eqz v6, :cond_1a7

    .line 1060
    const-string/jumbo v0, "onSetBtActiveDevice"

    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/android/server/audio/AudioDeviceInventory;->makeLeAudioDeviceAvailable(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;IILjava/lang/String;)V

    goto :goto_1a7

    :cond_15b
    if-eqz v7, :cond_161

    .line 1025
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    goto :goto_1a7

    :cond_161
    if-eqz v6, :cond_1a7

    .line 1027
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpSrcAvailable(Ljava/lang/String;)V

    goto :goto_1a7

    :cond_167
    if-eqz v7, :cond_171

    .line 1032
    iget p2, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    iget-boolean p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsDeviceSwitch:Z

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;IZ)V

    goto :goto_1a7

    :cond_171
    if-eqz v6, :cond_1a7

    .line 1036
    iget p3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mVolume:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_184

    .line 1037
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    mul-int/lit8 p3, p3, 0xa

    iget v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    const-string/jumbo v4, "onSetBtActiveDevice"

    invoke-virtual {v2, v0, p3, v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    .line 1042
    :cond_184
    const-string/jumbo p3, "onSetBtActiveDevice"

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceAvailable(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;ILjava/lang/String;)V

    goto :goto_1a7

    .line 1065
    :cond_18b
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p2}, Lcom/android/server/audio/AudioDeviceBroker;->isScoManagedByAudio()Z

    move-result p2

    if-eqz p2, :cond_1a7

    if-eqz v7, :cond_19e

    .line 1067
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-boolean p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsDeviceSwitch:Z

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/AudioDeviceBroker;->onSetBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_1a7

    :cond_19e
    if-eqz v6, :cond_1a7

    .line 1069
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/audio/AudioDeviceBroker;->onSetBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 1077
    :cond_1a7
    :goto_1a7
    monitor-exit v1

    return-void

    :goto_1a9
    monitor-exit v1
    :try_end_1aa
    .catchall {:try_start_d0 .. :try_end_1aa} :catchall_ed

    throw p0
.end method

.method public onSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;)V
    .registers 15

    .line 1293
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v0

    .line 1295
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;

    invoke-direct {v2, p1}, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;-><init>(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;)V

    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1297
    new-instance v1, Landroid/media/MediaMetrics$Item;

    const-string v2, "audio.device.onSetWiredDeviceConnectionState"

    invoke-direct {v1, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    .line 1299
    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 1301
    invoke-static {v0}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v3

    .line 1300
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    .line 1303
    iget v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    if-nez v3, :cond_36

    .line 1304
    const-string v3, "disconnected"

    goto :goto_38

    :cond_36
    const-string v3, "connected"

    .line 1302
    :goto_38
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    .line 1306
    iget v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    const/4 v3, 0x0

    if-nez v2, :cond_6e

    sget-object v2, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_USB_SET:Ljava/util/Set;

    iget-object v4, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    .line 1308
    invoke-virtual {v4}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1307
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    const/4 v2, 0x2

    .line 1309
    invoke-static {v2}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_5a
    if-ge v5, v4, :cond_6e

    aget-object v6, v2, v5

    .line 1311
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getInternalType()I

    move-result v7

    iget-object v8, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v8}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v8

    if-ne v7, v8, :cond_6b

    goto :goto_6f

    :cond_6b
    add-int/lit8 v5, v5, 0x1

    goto :goto_5a

    :cond_6e
    const/4 v6, 0x0

    .line 1317
    :goto_6f
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1318
    :try_start_72
    iget v4, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    const/4 v5, 0x1

    if-nez v4, :cond_90

    sget-object v4, Lcom/android/server/audio/AudioDeviceInventory;->DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;

    .line 1319
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_90

    .line 1320
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v7, "onSetWiredDeviceConnectionState state DISCONNECTED"

    invoke-virtual {v4, v5, v3, v7}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(ZZLjava/lang/String;)V

    goto :goto_90

    :catchall_8c
    move-exception v0

    move-object p0, v0

    goto/16 :goto_132

    .line 1324
    :cond_90
    :goto_90
    iget-object v8, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    iget v4, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    if-ne v4, v5, :cond_98

    move v9, v5

    goto :goto_99

    :cond_98
    move v9, v3

    :goto_99
    iget-boolean v10, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mForTest:Z

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/audio/AudioDeviceInventory;->handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZZLandroid/bluetooth/BluetoothDevice;Z)Z

    move-result p0

    if-nez p0, :cond_b1

    .line 1328
    sget-object p0, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string p1, "change of connection state failed"

    invoke-virtual {v1, p0, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 1329
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1330
    monitor-exit v2

    return-void

    .line 1332
    :cond_b1
    iget p0, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    if-eqz p0, :cond_d0

    .line 1333
    sget-object p0, Lcom/android/server/audio/AudioDeviceInventory;->DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c9

    .line 1334
    iget-object p0, v7, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v4, "onSetWiredDeviceConnectionState state not DISCONNECTED"

    invoke-virtual {p0, v3, v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(ZZLjava/lang/String;)V

    .line 1337
    :cond_c9
    iget-object p0, v7, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/audio/AudioDeviceBroker;->checkMusicActive(ILjava/lang/String;)V

    :cond_d0
    const/16 p0, 0x400

    if-ne v0, p0, :cond_dd

    .line 1340
    iget-object p0, v7, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    iget-object v4, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->checkVolumeCecOnHdmiConnection(ILjava/lang/String;)V

    .line 1342
    :cond_dd
    iget p0, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    if-nez p0, :cond_117

    sget-object p0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_USB_SET:Ljava/util/Set;

    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    .line 1344
    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1343
    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_117

    if-eqz v6, :cond_fb

    .line 1346
    iget-object p0, v7, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, v6}, Lcom/android/server/audio/AudioDeviceBroker;->dispatchPreferredMixerAttributesChangedCausedByDeviceRemoved(Landroid/media/AudioDeviceInfo;)V

    goto :goto_117

    .line 1349
    :cond_fb
    const-string p0, "AS.AudioDeviceInventory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Didn\'t find AudioDeviceInfo to notify preferred mixer attributes change for type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    .line 1350
    invoke-virtual {v4}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1349
    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    :cond_117
    :goto_117
    iget p0, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    .line 1354
    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v4}, Landroid/media/AudioDeviceAttributes;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1353
    invoke-virtual {v7, v0, p0, v3, v4}, Lcom/android/server/audio/AudioDeviceInventory;->sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V

    .line 1355
    iget p0, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    invoke-virtual {v7, v0, p0}, Lcom/android/server/audio/AudioDeviceInventory;->updateAudioRoutes(II)V

    .line 1356
    monitor-exit v2
    :try_end_12e
    .catchall {:try_start_72 .. :try_end_12e} :catchall_8c

    .line 1357
    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    .line 1356
    :goto_132
    :try_start_132
    monitor-exit v2
    :try_end_133
    .catchall {:try_start_132 .. :try_end_133} :catchall_8c

    throw p0
.end method

.method public onSynchronizeAdiDeviceInInventory_l(Lcom/android/server/audio/AdiDeviceState;)V
    .registers 3

    .line 319
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->synchronizeBleDeviceInInventory(Lcom/android/server/audio/AdiDeviceState;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 320
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->synchronizeDeviceProfilesInInventory(Lcom/android/server/audio/AdiDeviceState;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_e

    :cond_d
    return-void

    .line 321
    :cond_e
    :goto_e
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->postPersistAudioDeviceSettings()V

    return-void
.end method

.method public onSynchronizeAdiDevicesInInventory(Lcom/android/server/audio/AdiDeviceState;)V
    .registers 5

    .line 299
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 300
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_2b

    if-eqz p1, :cond_e

    .line 302
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->onSynchronizeAdiDeviceInInventory_l(Lcom/android/server/audio/AdiDeviceState;)V

    goto :goto_28

    :catchall_c
    move-exception p0

    goto :goto_2d

    .line 304
    :cond_e
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AdiDeviceState;

    .line 305
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioDeviceInventory;->onSynchronizeAdiDeviceInInventory_l(Lcom/android/server/audio/AdiDeviceState;)V

    goto :goto_18

    .line 308
    :cond_28
    :goto_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_c

    .line 309
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception p0

    goto :goto_2f

    .line 308
    :goto_2d
    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_c

    :try_start_2e
    throw p0

    .line 309
    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_2b

    throw p0
.end method

.method public onToggleHdmi()V
    .registers 13

    const/high16 v0, 0x40000

    const v1, 0x40001

    const/16 v2, 0x400

    .line 1361
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    .line 1364
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1365
    :try_start_e
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 1366
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v4

    new-instance v5, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda35;

    invoke-direct {v5, v3}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda35;-><init>(Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V

    invoke-interface {v4, v5}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1369
    new-instance v4, Landroid/media/MediaMetrics$Item;

    const-string v5, "audio.device.onToggleHdmi"

    invoke-direct {v4, v5}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    iget v6, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 1371
    invoke-static {v6}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v6

    .line 1370
    invoke-virtual {v4, v5, v6}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v4

    .line 1372
    new-instance v5, Landroid/media/AudioDeviceAttributes;

    iget v6, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 1374
    invoke-static {v6}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v7

    iget-object v8, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    iget-object v9, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    iget-object v10, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mAudioProfiles:Ljava/util/List;

    iget-object v11, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mAudioDescriptors:Ljava/util/List;

    const/4 v6, 0x2

    invoke-direct/range {v5 .. v11}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1378
    const-string/jumbo v3, "onToggleHdmi"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, v3}, Lcom/android/server/audio/AudioDeviceInventory;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)I

    .line 1380
    const-string/jumbo v3, "onToggleHdmi"

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6, v3}, Lcom/android/server/audio/AudioDeviceInventory;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)I

    .line 1382
    invoke-virtual {v4}, Landroid/media/MediaMetrics$Item;->record()Z

    goto :goto_18

    :catchall_6c
    move-exception v0

    move-object p0, v0

    goto :goto_71

    .line 1385
    :cond_6f
    monitor-exit v1

    return-void

    :goto_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_e .. :try_end_72} :catchall_6c

    throw p0
.end method

.method public onUpdateLeAudioGroupAddresses(I)V
    .registers 10

    .line 1223
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1225
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1226
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 1227
    iget v4, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mGroupId:I

    if-ne v4, p1, :cond_12

    .line 1228
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 1229
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/16 v4, 0x16

    invoke-virtual {v1, p1, v4}, Lcom/android/server/audio/AudioDeviceBroker;->getLeAudioGroupAddresses(II)Ljava/util/List;

    move-result-object v1

    goto :goto_34

    :catchall_31
    move-exception p0

    goto/16 :goto_b6

    .line 1232
    :cond_34
    :goto_34
    iget-object v4, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerDeviceAddress:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 1233
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_42
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_84

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 1234
    iget-object v6, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_42

    .line 1235
    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerDeviceAddress:Ljava/lang/String;

    .line 1236
    iget-object v4, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerIdentityDeviceAddress:Ljava/lang/String;

    goto :goto_84

    .line 1240
    :cond_6d
    new-instance v4, Landroid/util/Pair;

    iget-object v5, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerDeviceAddress:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerIdentityDeviceAddress:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_84

    .line 1242
    const-string v4, ""

    iput-object v4, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerDeviceAddress:Ljava/lang/String;

    .line 1243
    const-string v4, ""

    iput-object v4, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerIdentityDeviceAddress:Ljava/lang/String;

    .line 1245
    :cond_84
    :goto_84
    iget-object v4, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceIdentityAddress:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1246
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_92
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 1247
    iget-object v6, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_92

    .line 1248
    iget-object v4, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceIdentityAddress:Ljava/lang/String;

    goto/16 :goto_12

    .line 1255
    :cond_b4
    monitor-exit v0

    return-void

    :goto_b6
    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_3 .. :try_end_b7} :catchall_31

    throw p0
.end method

.method public final purgeDevicesRoles_l()V
    .registers 3

    .line 1909
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRolesInt:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->purgeRoles(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;)V

    .line 1911
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRolesInt:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->purgeRoles(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;)V

    .line 1913
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->reapplyExternalDevicesRoles()V

    return-void
.end method

.method public final purgeRoles(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;)V
    .registers 11

    .line 1920
    monitor-enter p1

    const/4 p0, 0x3

    .line 1921
    :try_start_2
    invoke-static {p0}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p0

    .line 1925
    invoke-virtual {p1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1927
    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 1929
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1930
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1931
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1932
    :cond_2a
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 1933
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    .line 1935
    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda38;

    invoke-direct {v5, v3}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda38;-><init>(Landroid/media/AudioDeviceAttributes;)V

    .line 1936
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda39;

    invoke-direct {v5, v3}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda39;-><init>(Landroid/media/AudioDeviceAttributes;)V

    .line 1937
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 1939
    invoke-interface {v4}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    .line 1940
    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioDeviceInfo;

    if-nez v4, :cond_2a

    .line 1943
    sget-boolean v4, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v4, :cond_8f

    .line 1944
    const-string v4, "AS.AudioDeviceInventory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "purgeRoles() removing device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", for strategy: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " and role: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    :catchall_8d
    move-exception p0

    goto :goto_c4

    .line 1948
    :cond_8f
    :goto_8f
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/media/AudioDeviceAttributes;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {p2, v4, v5, v3}, Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;->deviceRoleAction(IILjava/util/List;)I

    .line 1949
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_2a

    .line 1952
    :cond_b1
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1953
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_e

    .line 1956
    :cond_c2
    monitor-exit p1

    return-void

    :goto_c4
    monitor-exit p1
    :try_end_c5
    .catchall {:try_start_2 .. :try_end_c5} :catchall_8d

    throw p0
.end method

.method public reapplyExternalDevicesRoles()V
    .registers 4

    .line 957
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 958
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRoles:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 959
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRoles:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 960
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda28;

    invoke-direct {v2, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 963
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefaultDevices:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda29;

    invoke-direct {v2, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda29;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 967
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda30;

    invoke-direct {v2, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda30;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 971
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public registerCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;Z)V
    .registers 3

    .line 1685
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    return-void
.end method

.method public registerStrategyNonDefaultDevicesDispatcher(Landroid/media/IStrategyNonDefaultDevicesDispatcher;Z)V
    .registers 3

    .line 1604
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    return-void
.end method

.method public registerStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;Z)V
    .registers 3

    .line 1594
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    return-void
.end method

.method public removeDeviceAsNonDefaultForStrategyAndSave(ILandroid/media/AudioDeviceAttributes;)I
    .registers 8

    .line 1576
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1577
    :try_start_3
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_23

    .line 1578
    :try_start_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1579
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 1580
    invoke-virtual {p0, p1, v3, v2, v4}, Lcom/android/server/audio/AudioDeviceInventory;->removeDevicesRoleForStrategy(IILjava/util/List;Z)I

    move-result v2

    if-nez v2, :cond_1d

    .line 1584
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->saveRemoveDeviceAsNonDefault(ILandroid/media/AudioDeviceAttributes;)V
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1b

    goto :goto_1d

    :catchall_1b
    move-exception p0

    goto :goto_27

    :cond_1d
    :goto_1d
    if-eqz v1, :cond_25

    .line 1586
    :try_start_1f
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V

    goto :goto_25

    :catchall_23
    move-exception p0

    goto :goto_32

    .line 1587
    :cond_25
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_23

    return v2

    :goto_27
    if-eqz v1, :cond_31

    .line 1577
    :try_start_29
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_31

    :catchall_2d
    move-exception p1

    :try_start_2e
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_31
    :goto_31
    throw p0

    .line 1587
    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_23

    throw p0
.end method

.method public final removeDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;IILjava/util/List;)I
    .registers 10

    .line 1793
    monitor-enter p1

    .line 1794
    :try_start_1
    new-instance p0, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1795
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 p0, -0x2

    .line 1797
    monitor-exit p1

    return p0

    :catchall_17
    move-exception p0

    goto :goto_5f

    .line 1799
    :cond_19
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1800
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1801
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_28
    :goto_28
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 1802
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1803
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 1806
    :cond_3e
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_47

    const/4 p0, 0x0

    .line 1807
    monitor-exit p1

    return p0

    .line 1809
    :cond_47
    invoke-interface {p2, p3, p4, v1}, Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;->deviceRoleAction(IILjava/util/List;)I

    move-result p2

    if-nez p2, :cond_5d

    .line 1811
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1812
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_5a

    .line 1813
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    .line 1815
    :cond_5a
    invoke-virtual {p1, p0, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1818
    :cond_5d
    :goto_5d
    monitor-exit p1

    return p2

    .line 1819
    :goto_5f
    monitor-exit p1
    :try_end_60
    .catchall {:try_start_1 .. :try_end_60} :catchall_17

    throw p0
.end method

.method public final removeDevicesRoleForCapturePresetInt(IILjava/util/List;)I
    .registers 10

    .line 1661
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRolesInt:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda27;

    invoke-direct {v2, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceInventory;->removeDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public final removeDevicesRoleForStrategy(IILjava/util/List;Z)I
    .registers 11

    if-eqz p4, :cond_6

    .line 1705
    iget-object p4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRolesInt:Landroid/util/ArrayMap;

    :goto_4
    move-object v1, p4

    goto :goto_9

    :cond_6
    iget-object p4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRoles:Landroid/util/ArrayMap;

    goto :goto_4

    :goto_9
    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceInventory;->removeDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public removePreferredDevicesForStrategy(I)I
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1521
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->clearDevicesRoleForStrategy(IIZ)I

    move-result p0

    return p0
.end method

.method public removePreferredDevicesForStrategyAndSave(I)I
    .registers 5

    .line 1508
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1509
    :try_start_3
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_19

    .line 1510
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->removePreferredDevicesForStrategy(I)I

    move-result v2

    if-nez v2, :cond_13

    .line 1512
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->saveRemovePreferredDevices(I)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_11

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_1d

    :cond_13
    :goto_13
    if-eqz v1, :cond_1b

    .line 1515
    :try_start_15
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V

    goto :goto_1b

    :catchall_19
    move-exception p0

    goto :goto_28

    :cond_1b
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_19

    return v2

    :goto_1d
    if-eqz v1, :cond_27

    .line 1509
    :try_start_1f
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_27

    :catchall_23
    move-exception p1

    :try_start_24
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_27
    :goto_27
    throw p0

    .line 1516
    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_19

    throw p0
.end method

.method public removePreferredDevicesForStrategyInt(I)I
    .registers 3

    const/4 v0, 0x1

    .line 1526
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->clearDevicesRoleForStrategy(IIZ)I

    move-result p0

    return p0
.end method

.method public final removeTrackedConnectedDevice(Ljava/lang/String;Z)V
    .registers 7

    .line 3388
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 3389
    const-string v1, "Trying to remove device "

    const-string v2, "AS.AudioDeviceInventory"

    if-nez p2, :cond_2f

    if-nez v0, :cond_2f

    .line 3390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from connected list, not in list"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v2, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2f
    if-eqz p2, :cond_55

    .line 3394
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_55

    .line 3396
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from APM list, not in list"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v2, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3400
    :cond_55
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->updateAlwaysRingDeviceConnected()V

    return-void
.end method

.method public final saveClearPreferredDevicesForCapturePreset(I)V
    .registers 4

    .line 1471
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchDevicesRoleForCapturePreset(IILjava/util/List;)V

    return-void
.end method

.method public final saveRemoveDeviceAsNonDefault(ILandroid/media/AudioDeviceAttributes;)V
    .registers 5

    .line 1449
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefaultDevices:Landroid/util/ArrayMap;

    .line 1450
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda0;-><init>()V

    .line 1451
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/appwidget/AppWidgetXmlUtil$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/appwidget/AppWidgetXmlUtil$$ExternalSyntheticLambda1;-><init>()V

    .line 1452
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1454
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_39

    .line 1455
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1456
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefaultDevices:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchNonDefaultDevice(ILjava/util/List;)V

    :cond_39
    return-void
.end method

.method public final saveRemovePreferredDevices(I)V
    .registers 4

    .line 1414
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchPreferredDevice(ILjava/util/List;)V

    return-void
.end method

.method public final saveSetDeviceAsNonDefault(ILandroid/media/AudioDeviceAttributes;)V
    .registers 6

    .line 1421
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefaultDevices:Landroid/util/ArrayMap;

    .line 1422
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda0;-><init>()V

    .line 1423
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/appwidget/AppWidgetXmlUtil$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/appwidget/AppWidgetXmlUtil$$ExternalSyntheticLambda1;-><init>()V

    .line 1424
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1426
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 1427
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1430
    :cond_2d
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefaultDevices:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchNonDefaultDevice(ILjava/util/List;)V

    .line 1433
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    .line 1434
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda0;-><init>()V

    .line 1435
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/appwidget/AppWidgetXmlUtil$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/appwidget/AppWidgetXmlUtil$$ExternalSyntheticLambda1;-><init>()V

    .line 1436
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1438
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_72

    .line 1439
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1440
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchPreferredDevice(ILjava/util/List;)V

    :cond_72
    return-void
.end method

.method public final saveSetPreferredDevices(ILjava/util/List;)V
    .registers 6

    .line 1391
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefaultDevices:Landroid/util/ArrayMap;

    .line 1394
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda0;-><init>()V

    .line 1395
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/appwidget/AppWidgetXmlUtil$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/appwidget/AppWidgetXmlUtil$$ExternalSyntheticLambda1;-><init>()V

    .line 1396
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1398
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_52

    .line 1399
    invoke-interface {v0, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1401
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1402
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefaultDevices:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f

    .line 1404
    :cond_46
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefaultDevices:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    :goto_4f
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchNonDefaultDevice(ILjava/util/List;)V

    .line 1409
    :cond_52
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchPreferredDevice(ILjava/util/List;)V

    return-void
.end method

.method public final saveSetPreferredDevicesForCapturePreset(ILjava/util/List;)V
    .registers 5

    .line 1464
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 1465
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchDevicesRoleForCapturePreset(IILjava/util/List;)V

    return-void
.end method

.method public final sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 3026
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_40

    .line 3027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendDeviceConnectionIntent(dev:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3028
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3027
    const-string v1, "AS.AudioDeviceInventory"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    :cond_40
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3033
    const-string v1, ""

    const/high16 v2, 0x4000000

    const/high16 v3, -0x7e000000

    const-string/jumbo v4, "microphone"

    const-string v5, "android.intent.action.HEADSET_PLUG"

    const/4 v6, 0x1

    if-eq p1, v3, :cond_90

    const/4 v7, 0x4

    if-eq p1, v7, :cond_89

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-eq p1, v7, :cond_82

    const/16 v7, 0x400

    if-eq p1, v7, :cond_7e

    const/high16 v7, 0x20000

    if-eq p1, v7, :cond_82

    if-eq p1, v2, :cond_6f

    const/high16 v1, 0x40000

    if-eq p1, v1, :cond_7e

    const v1, 0x40001

    if-eq p1, v1, :cond_7e

    goto :goto_9c

    .line 3044
    :cond_6f
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3046
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result p1

    if-ne p1, v6, :cond_79

    goto :goto_7a

    :cond_79
    move v6, v8

    .line 3045
    :goto_7a
    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_9c

    .line 3062
    :cond_7e
    invoke-virtual {p0, v0, p2}, Lcom/android/server/audio/AudioDeviceInventory;->configureHdmiPlugIntent(Landroid/content/Intent;I)V

    goto :goto_9c

    .line 3040
    :cond_82
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3041
    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_9c

    .line 3035
    :cond_89
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3036
    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_9c

    .line 3050
    :cond_90
    invoke-static {v2, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result p1

    if-ne p1, v6, :cond_cb

    .line 3052
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3053
    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3066
    :goto_9c
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a3

    goto :goto_cb

    .line 3070
    :cond_a3
    const-string/jumbo p1, "state"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3071
    const-string p1, "address"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3072
    const-string/jumbo p1, "portName"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x40000000    # 2.0f

    .line 3074
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3076
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 3078
    :try_start_bd
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->broadcastStickyIntentToCurrentProfileGroup(Landroid/content/Intent;)V
    :try_end_c2
    .catchall {:try_start_bd .. :try_end_c2} :catchall_c6

    .line 3080
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_c6
    move-exception p0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3081
    throw p0

    :cond_cb
    :goto_cb
    return-void
.end method

.method public final setApmDeviceConnectionAvailable(Landroid/media/AudioDeviceAttributes;IZ)I
    .registers 5

    .line 3300
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isWaitingForDeviceRestore()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p0, 0x64

    return p0

    .line 3302
    :cond_b
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;IIZ)I

    move-result p0

    return p0
.end method

.method public setBluetoothActiveDevice(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;Ljava/lang/String;)I
    .registers 9

    .line 2273
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2274
    :try_start_3
    iget-boolean v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mSupprNoisy:Z

    const/4 v2, 0x0

    if-nez v1, :cond_31

    iget v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    const/16 v3, 0x16

    const/4 v4, 0x2

    if-eq v1, v3, :cond_13

    const/16 v3, 0x1a

    if-ne v1, v3, :cond_17

    :cond_13
    iget-boolean v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    if-nez v3, :cond_1d

    :cond_17
    const/16 v3, 0x15

    if-eq v1, v3, :cond_1d

    if-ne v1, v4, :cond_31

    :cond_1d
    iget-boolean v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsDeviceSwitch:Z

    if-nez v1, :cond_31

    .line 2282
    iget v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    if-ne v1, v4, :cond_26

    const/4 v2, 0x1

    .line 2285
    :cond_26
    iget v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    iget v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mMusicDevice:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v2

    goto :goto_31

    :catchall_2f
    move-exception p0

    goto :goto_5d

    .line 2290
    :cond_31
    :goto_31
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v3, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBluetoothActiveDevice called from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string p2, "AS.AudioDeviceInventory"

    .line 2291
    invoke-virtual {v3, p2}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p2

    .line 2290
    invoke-virtual {v1, p2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 2292
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_2f

    .line 2293
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothActiveDevice(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;I)V

    return v2

    .line 2292
    :goto_5d
    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_2f

    throw p0
.end method

.method public final setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V
    .registers 5

    .line 2910
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v0

    .line 2911
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2912
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_24

    :cond_11
    if-nez p1, :cond_19

    .line 2914
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->isCurrentDeviceConnected()Z

    move-result v1

    if-nez v1, :cond_22

    .line 2915
    :cond_19
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput-object p1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 2916
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postReportNewRoutes(Z)V

    .line 2918
    :cond_22
    monitor-exit v0

    return-void

    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_f

    throw p0
.end method

.method public setDeviceAsNonDefaultForStrategyAndSave(ILandroid/media/AudioDeviceAttributes;)I
    .registers 8

    .line 1558
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1559
    :try_start_3
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_23

    .line 1560
    :try_start_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1561
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 1562
    invoke-virtual {p0, p1, v3, v2, v4}, Lcom/android/server/audio/AudioDeviceInventory;->addDevicesRoleForStrategy(IILjava/util/List;Z)I

    move-result v2

    if-nez v2, :cond_1d

    .line 1566
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->saveSetDeviceAsNonDefault(ILandroid/media/AudioDeviceAttributes;)V
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1b

    goto :goto_1d

    :catchall_1b
    move-exception p0

    goto :goto_27

    :cond_1d
    :goto_1d
    if-eqz v1, :cond_25

    .line 1568
    :try_start_1f
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V

    goto :goto_25

    :catchall_23
    move-exception p0

    goto :goto_32

    .line 1569
    :cond_25
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_23

    return v2

    :goto_27
    if-eqz v1, :cond_31

    .line 1559
    :try_start_29
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_31

    :catchall_2d
    move-exception p1

    :try_start_2e
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_31
    :goto_31
    throw p0

    .line 1569
    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_23

    throw p0
.end method

.method public setDeviceSettings(Ljava/lang/String;)V
    .registers 8

    .line 3265
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->clearDeviceInventory()V

    .line 3266
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\\|"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3269
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_f
    if-ge v2, v0, :cond_2b

    aget-object v3, p1, v2

    .line 3270
    invoke-static {v3}, Lcom/android/server/audio/AdiDeviceState;->fromPersistedString(Ljava/lang/String;)Lcom/android/server/audio/AdiDeviceState;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 3274
    invoke-virtual {v3}, Lcom/android/server/audio/AdiDeviceState;->getInternalDeviceType()I

    move-result v4

    const v5, 0x20000002

    if-eq v4, v5, :cond_28

    .line 3275
    invoke-virtual {p0, v3, v1}, Lcom/android/server/audio/AudioDeviceInventory;->addOrUpdateDeviceSAStateInInventory(Lcom/android/server/audio/AdiDeviceState;Z)V

    .line 3276
    invoke-virtual {p0, v3, v1}, Lcom/android/server/audio/AudioDeviceInventory;->addOrUpdateAudioDeviceCategoryInInventory(Lcom/android/server/audio/AdiDeviceState;Z)V

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_2b
    return-void
.end method

.method public final setDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;IILjava/util/List;)I
    .registers 9

    .line 1848
    monitor-enter p1

    .line 1849
    :try_start_1
    new-instance p0, Landroid/util/Pair;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1850
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 1851
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p6, v0}, Lcom/android/server/audio/AudioDeviceInventory;->devicesListEqual(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1853
    monitor-exit p1

    return v1

    :catchall_23
    move-exception p0

    goto :goto_83

    .line 1855
    :cond_25
    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1857
    monitor-exit p1

    return v1

    .line 1860
    :cond_2d
    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 p2, 0x0

    .line 1861
    invoke-interface {p3, p4, p5, p2}, Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;->deviceRoleAction(IILjava/util/List;)I

    move-result p2

    if-nez p2, :cond_81

    .line 1863
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_81

    .line 1866
    :cond_3e
    invoke-interface {p2, p4, p5, p6}, Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;->deviceRoleAction(IILjava/util/List;)I

    move-result p2

    if-nez p2, :cond_81

    .line 1868
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p0, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_81

    const/4 p0, 0x1

    if-ne p5, p0, :cond_52

    const/4 p0, 0x2

    .line 1875
    :cond_52
    new-instance p3, Landroid/util/Pair;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p3, p4, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1876
    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_81

    .line 1878
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p4, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda26;

    invoke-direct {p4, p6}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda26;-><init>(Ljava/util/List;)V

    .line 1879
    invoke-interface {p0, p4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1880
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p4

    invoke-interface {p0, p4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 1881
    invoke-virtual {p1, p3, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1886
    :cond_81
    :goto_81
    monitor-exit p1

    return p2

    .line 1887
    :goto_83
    monitor-exit p1
    :try_end_84
    .catchall {:try_start_1 .. :try_end_84} :catchall_23

    throw p0
.end method

.method public final setDevicesRoleForCapturePreset(IILjava/util/List;)I
    .registers 11

    .line 1669
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRoles:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    move-object v0, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceInventory;->setDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public final setDevicesRoleForStrategy(IILjava/util/List;Z)I
    .registers 12

    if-eqz p4, :cond_6

    .line 1714
    iget-object p4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRolesInt:Landroid/util/ArrayMap;

    :goto_4
    move-object v1, p4

    goto :goto_9

    :cond_6
    iget-object p4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRoles:Landroid/util/ArrayMap;

    goto :goto_4

    :goto_9
    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    move-object v0, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceInventory;->setDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public final setPreferredDevicesForCapturePreset(ILjava/util/List;)I
    .registers 4

    const/4 v0, 0x1

    .line 1628
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setDevicesRoleForCapturePreset(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public setPreferredDevicesForCapturePresetAndSave(ILjava/util/List;)I
    .registers 6

    .line 1614
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1615
    :try_start_3
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_19

    .line 1616
    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setPreferredDevicesForCapturePreset(ILjava/util/List;)I

    move-result v2

    if-nez v2, :cond_13

    .line 1618
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->saveSetPreferredDevicesForCapturePreset(ILjava/util/List;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_11

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_1d

    :cond_13
    :goto_13
    if-eqz v1, :cond_1b

    .line 1621
    :try_start_15
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V

    goto :goto_1b

    :catchall_19
    move-exception p0

    goto :goto_28

    :cond_1b
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_19

    return v2

    :goto_1d
    if-eqz v1, :cond_27

    .line 1615
    :try_start_1f
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_27

    :catchall_23
    move-exception p1

    :try_start_24
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_27
    :goto_27
    throw p0

    .line 1622
    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_19

    throw p0
.end method

.method public setPreferredDevicesForStrategy(ILjava/util/List;)I
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1496
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/server/audio/AudioDeviceInventory;->setDevicesRoleForStrategy(IILjava/util/List;Z)I

    move-result p0

    return p0
.end method

.method public setPreferredDevicesForStrategyAndSave(ILjava/util/List;)I
    .registers 6

    .line 1482
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1483
    :try_start_3
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_19

    .line 1484
    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setPreferredDevicesForStrategy(ILjava/util/List;)I

    move-result v2

    if-nez v2, :cond_13

    .line 1486
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->saveSetPreferredDevices(ILjava/util/List;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_11

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_1d

    :cond_13
    :goto_13
    if-eqz v1, :cond_1b

    .line 1489
    :try_start_15
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V

    goto :goto_1b

    :catchall_19
    move-exception p0

    goto :goto_28

    :cond_1b
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_19

    return v2

    :goto_1d
    if-eqz v1, :cond_27

    .line 1483
    :try_start_1f
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_27

    :catchall_23
    move-exception p1

    :try_start_24
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_27
    :goto_27
    throw p0

    .line 1490
    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_19

    throw p0
.end method

.method public setPreferredDevicesForStrategyInt(ILjava/util/List;)I
    .registers 4

    const/4 v0, 0x1

    .line 1503
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/android/server/audio/AudioDeviceInventory;->setDevicesRoleForStrategy(IILjava/util/List;Z)I

    move-result p0

    return p0
.end method

.method public setTestDeviceConnectionState(Landroid/media/AudioDeviceAttributes;I)V
    .registers 5

    .line 2310
    new-instance v0, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;

    const-string v1, "com.android.server.audio"

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;-><init>(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    const/4 p1, 0x1

    .line 2312
    iput-boolean p1, v0, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mForTest:Z

    .line 2313
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->onSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;)V

    return-void
.end method

.method public setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)I
    .registers 7

    .line 2299
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2301
    :try_start_3
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v1

    const/4 v2, 0x0

    .line 2300
    invoke-virtual {p0, v1, p2, v2}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v1

    .line 2302
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;-><init>(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    invoke-virtual {p0, v2, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;I)V

    .line 2304
    monitor-exit v0

    return v1

    :catchall_18
    move-exception p0

    .line 2305
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .registers 5

    .line 2255
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v0

    .line 2256
    :try_start_3
    new-instance v1, Landroid/media/AudioRoutesInfo;

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v1, v2}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 2257
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2258
    monitor-exit v0

    return-object v1

    :catchall_11
    move-exception p0

    .line 2259
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final synchronizeBleDeviceInInventory(Lcom/android/server/audio/AdiDeviceState;)Z
    .registers 13

    .line 340
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1c6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 341
    iget v3, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getInternalDeviceType()I

    move-result v4

    if-eq v3, v4, :cond_20

    goto :goto_a

    .line 344
    :cond_20
    iget-object v3, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "synchronizeBleDeviceInInventory synced device pair ads1="

    const v5, 0x20000002

    const/4 v6, 0x1

    const-string v7, "AS.AudioDeviceInventory"

    if-eqz v3, :cond_136

    .line 345
    iget v3, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    if-ne v3, v5, :cond_b6

    .line 346
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_43
    :goto_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_136

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/audio/AdiDeviceState;

    .line 347
    invoke-virtual {v8}, Lcom/android/server/audio/AdiDeviceState;->getInternalDeviceType()I

    move-result v9

    invoke-static {v9}, Landroid/media/AudioSystem;->isBluetoothLeOutUnicastDevice(I)Z

    move-result v9

    if-eqz v9, :cond_43

    iget-object v9, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerDeviceAddress:Ljava/lang/String;

    .line 348
    invoke-virtual {v8}, Lcom/android/server/audio/AdiDeviceState;->getDeviceAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_66

    goto :goto_43

    .line 351
    :cond_66
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->isSADevice(Lcom/android/server/audio/AdiDeviceState;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 352
    invoke-virtual {v1, v8}, Lcom/android/server/audio/AudioDeviceBroker;->isSADevice(Lcom/android/server/audio/AdiDeviceState;)Z

    move-result v1

    if-ne v0, v1, :cond_81

    .line 353
    invoke-virtual {p1, v2}, Lcom/android/server/audio/AdiDeviceState;->setHasHeadTracker(Z)V

    .line 354
    invoke-virtual {p1, v2}, Lcom/android/server/audio/AdiDeviceState;->setHeadTrackerEnabled(Z)V

    .line 355
    invoke-virtual {v8}, Lcom/android/server/audio/AdiDeviceState;->isSAEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/audio/AdiDeviceState;->setSAEnabled(Z)V

    .line 357
    :cond_81
    invoke-virtual {v8}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/audio/AdiDeviceState;->setAudioDeviceCategory(I)V

    .line 359
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postUpdatedAdiDeviceState(Lcom/android/server/audio/AdiDeviceState;Z)V

    .line 360
    sget-object p0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "synchronizeBleDeviceInInventory synced broadcast device ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " with ads ="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0, v7}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p1

    .line 360
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return v6

    .line 366
    :cond_b6
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c0
    :goto_c0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_136

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/audio/AdiDeviceState;

    .line 367
    iget v9, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-virtual {v8}, Lcom/android/server/audio/AdiDeviceState;->getInternalDeviceType()I

    move-result v10

    if-ne v9, v10, :cond_c0

    iget-object v9, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerDeviceAddress:Ljava/lang/String;

    .line 368
    invoke-virtual {v8}, Lcom/android/server/audio/AdiDeviceState;->getDeviceAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e1

    goto :goto_c0

    .line 371
    :cond_e1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->isSADevice(Lcom/android/server/audio/AdiDeviceState;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 372
    invoke-virtual {v1, v8}, Lcom/android/server/audio/AudioDeviceBroker;->isSADevice(Lcom/android/server/audio/AdiDeviceState;)Z

    move-result v1

    if-ne v0, v1, :cond_104

    .line 373
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->hasHeadTracker()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/server/audio/AdiDeviceState;->setHasHeadTracker(Z)V

    .line 374
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->isHeadTrackerEnabled()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/server/audio/AdiDeviceState;->setHeadTrackerEnabled(Z)V

    .line 375
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->isSAEnabled()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/server/audio/AdiDeviceState;->setSAEnabled(Z)V

    .line 377
    :cond_104
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/server/audio/AdiDeviceState;->setAudioDeviceCategory(I)V

    .line 379
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, v8, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postUpdatedAdiDeviceState(Lcom/android/server/audio/AdiDeviceState;Z)V

    .line 380
    sget-object p0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ads2="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0, v7}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p1

    .line 380
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return v6

    .line 387
    :cond_136
    iget v3, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    if-eq v3, v5, :cond_a

    iget-object v3, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerDeviceAddress:Ljava/lang/String;

    .line 388
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getDeviceAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 389
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_150
    :goto_150
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AdiDeviceState;

    .line 390
    iget v8, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-virtual {v5}, Lcom/android/server/audio/AdiDeviceState;->getInternalDeviceType()I

    move-result v9

    if-ne v8, v9, :cond_150

    iget-object v8, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    .line 391
    invoke-virtual {v5}, Lcom/android/server/audio/AdiDeviceState;->getDeviceAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_171

    goto :goto_150

    .line 394
    :cond_171
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->isSADevice(Lcom/android/server/audio/AdiDeviceState;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 395
    invoke-virtual {v1, v5}, Lcom/android/server/audio/AudioDeviceBroker;->isSADevice(Lcom/android/server/audio/AdiDeviceState;)Z

    move-result v1

    if-ne v0, v1, :cond_194

    .line 396
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->hasHeadTracker()Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/android/server/audio/AdiDeviceState;->setHasHeadTracker(Z)V

    .line 397
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->isHeadTrackerEnabled()Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/android/server/audio/AdiDeviceState;->setHeadTrackerEnabled(Z)V

    .line 398
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->isSAEnabled()Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/android/server/audio/AdiDeviceState;->setSAEnabled(Z)V

    .line 400
    :cond_194
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/android/server/audio/AdiDeviceState;->setAudioDeviceCategory(I)V

    .line 402
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, v5, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postUpdatedAdiDeviceState(Lcom/android/server/audio/AdiDeviceState;Z)V

    .line 403
    sget-object p0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " peer ads2="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v0, v7}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p1

    .line 403
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return v6

    :cond_1c6
    return v2
.end method

.method public final synchronizeDeviceProfilesInInventory(Lcom/android/server/audio/AdiDeviceState;)Z
    .registers 7

    .line 415
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getInternalDeviceType()I

    move-result v0

    const v1, 0x20000002

    const/4 v2, 0x0

    if-ne v0, v1, :cond_b

    return v2

    .line 418
    :cond_b
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AdiDeviceState;

    .line 419
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getInternalDeviceType()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/server/audio/AdiDeviceState;->getInternalDeviceType()I

    move-result v4

    if-eq v3, v4, :cond_15

    .line 420
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/audio/AdiDeviceState;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    goto :goto_15

    .line 423
    :cond_3a
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AdiDeviceState;->setAudioDeviceCategory(I)V

    .line 425
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postUpdatedAdiDeviceState(Lcom/android/server/audio/AdiDeviceState;Z)V

    .line 426
    sget-object p0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "synchronizeDeviceProfilesInInventory synced device pair ads1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ads2="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string p1, "AS.AudioDeviceInventory"

    .line 428
    invoke-virtual {v0, p1}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p1

    .line 426
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    const/4 p0, 0x1

    return p0

    :cond_72
    return v2
.end method

.method public final trackConnectedDevice(Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;Z)V
    .registers 5

    .line 3347
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 3348
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3c

    .line 3350
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 3351
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 3353
    :cond_1c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Trying to add device "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to APM list, already in list"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    const-string v0, "AS.AudioDeviceInventory"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3357
    :cond_3c
    :goto_3c
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->updateAlwaysRingDeviceConnected()V

    return-void
.end method

.method public final trackDeviceApmAvailable(ILcom/android/server/audio/AudioDeviceInventory$DeviceInfo;Ljava/lang/String;)V
    .registers 8

    .line 3320
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3321
    const-string v0, "AS.AudioDeviceInventory"

    const/4 v1, 0x0

    if-nez p1, :cond_2c

    .line 3322
    sget-object p1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " now available"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v2, p3}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 3323
    invoke-virtual {v2, v1, v0}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p3

    .line 3322
    invoke-virtual {p1, p3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    const/4 p1, 0x1

    .line 3324
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/AudioDeviceInventory;->trackConnectedDevice(Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;Z)V

    return-void

    :cond_2c
    const/16 v2, 0x64

    if-ne p1, v2, :cond_53

    .line 3326
    sget-object p1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " remembered for restore"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v2, p3}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 3327
    invoke-virtual {v2, v1, v0}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p3

    .line 3326
    invoke-virtual {p1, p3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 3328
    invoke-virtual {p0, p2, v1}, Lcom/android/server/audio/AudioDeviceInventory;->trackConnectedDevice(Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;Z)V

    return-void

    .line 3330
    :cond_53
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected result("

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") from APM.setDeviceConnectionState(AVAILABLE) for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3332
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3333
    sget-object p1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance p2, Lcom/android/server/utils/EventLogger$StringEvent;

    invoke-direct {p2, p0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return-void
.end method

.method public unregisterCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V
    .registers 2

    .line 1690
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public unregisterStrategyNonDefaultDevicesDispatcher(Landroid/media/IStrategyNonDefaultDevicesDispatcher;)V
    .registers 2

    .line 1609
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public unregisterStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V
    .registers 2

    .line 1599
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final updateAlwaysRingDeviceConnected()V
    .registers 5

    .line 3363
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 3365
    sget-object v2, Lcom/android/server/audio/AudioDeviceInventory;->ALWAYS_RING_DEVICE_CANDIDATES:Ljava/util/Set;

    iget v3, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3366
    iget-object v2, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    iget v1, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-virtual {p0, v2, v1}, Lcom/android/server/audio/AudioDeviceInventory;->findBtDeviceStateForAddress(Ljava/lang/String;I)Lcom/android/server/audio/AdiDeviceState;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 3369
    sget-object v2, Lcom/android/server/audio/AudioDeviceInventory;->ALWAYS_RING_CATEGORIES:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    goto :goto_41

    :cond_40
    const/4 v0, 0x0

    .line 3375
    :goto_41
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAlwaysRingDeviceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final updateAudioRoutes(II)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2e

    const/16 v2, 0x8

    if-eq p1, v2, :cond_2c

    const/16 v3, 0x400

    if-eq p1, v3, :cond_2a

    const/16 v3, 0x1000

    if-eq p1, v3, :cond_2f

    const/16 v1, 0x4000

    if-eq p1, v1, :cond_27

    const/high16 v1, 0x20000

    if-eq p1, v1, :cond_2c

    const/high16 v1, 0x4000000

    if-eq p1, v1, :cond_27

    const/high16 v1, 0x40000

    if-eq p1, v1, :cond_2a

    const v1, 0x40001

    if-eq p1, v1, :cond_2a

    move v1, v0

    goto :goto_2f

    :cond_27
    const/16 v1, 0x10

    goto :goto_2f

    :cond_2a
    move v1, v2

    goto :goto_2f

    :cond_2c
    const/4 v1, 0x2

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x1

    .line 3109
    :cond_2f
    :goto_2f
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter p1

    if-nez v1, :cond_38

    .line 3111
    :try_start_34
    monitor-exit p1

    return-void

    :catchall_36
    move-exception p0

    goto :goto_4e

    .line 3113
    :cond_38
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v3, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    if-eqz p2, :cond_41

    or-int p2, v3, v1

    goto :goto_43

    :cond_41
    not-int p2, v1

    and-int/2addr p2, v3

    :goto_43
    if-eq p2, v3, :cond_4c

    .line 3120
    iput p2, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 3121
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->postReportNewRoutes(Z)V

    .line 3123
    :cond_4c
    monitor-exit p1

    return-void

    :goto_4e
    monitor-exit p1
    :try_end_4f
    .catchall {:try_start_34 .. :try_end_4f} :catchall_36

    throw p0
.end method

.method public final updateBluetoothPreferredModes_l(Landroid/bluetooth/BluetoothDevice;)V
    .registers 11

    .line 2515
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mBluetoothDualModeEnabled:Z

    if-nez v0, :cond_6

    goto/16 :goto_ce

    .line 2518
    :cond_6
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 2519
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 2520
    iget v3, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v3}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    .line 2521
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    goto :goto_16

    .line 2524
    :cond_33
    iget-object v3, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/audio/BtHelper;->getPreferredAudioProfiles(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 2525
    sget-boolean v4, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v4, :cond_5e

    .line 2526
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateBluetoothPreferredModes_l processing device address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", preferredProfiles: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AS.AudioDeviceInventory"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    :cond_5e
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_68
    :goto_68
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_bd

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 2530
    iget v6, v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v6}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    move-result v6

    if-eqz v6, :cond_68

    iget-object v6, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    iget-object v7, v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    .line 2531
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_87

    goto :goto_68

    .line 2534
    :cond_87
    iget v6, v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v6}, Lcom/android/server/audio/BtHelper;->getProfileFromType(I)I

    move-result v6

    if-nez v6, :cond_90

    goto :goto_68

    .line 2539
    :cond_90
    const-string v7, "audio_mode_duplex"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 2538
    invoke-virtual {p0, v8}, Lcom/android/server/audio/AudioDeviceInventory;->checkProfileIsConnected(I)I

    move-result v8

    if-eq v8, v6, :cond_a3

    if-nez v8, :cond_9f

    goto :goto_a3

    .line 2543
    :cond_9f
    invoke-virtual {v5, v7}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->setModeDisabled(Ljava/lang/String;)V

    goto :goto_a6

    .line 2541
    :cond_a3
    :goto_a3
    invoke-virtual {v5, v7}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->setModeEnabled(Ljava/lang/String;)V

    .line 2546
    :goto_a6
    const-string v7, "audio_mode_output_only"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 2545
    invoke-virtual {p0, v8}, Lcom/android/server/audio/AudioDeviceInventory;->checkProfileIsConnected(I)I

    move-result v8

    if-eq v8, v6, :cond_b9

    if-nez v8, :cond_b5

    goto :goto_b9

    .line 2550
    :cond_b5
    invoke-virtual {v5, v7}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->setModeDisabled(Ljava/lang/String;)V

    goto :goto_68

    .line 2548
    :cond_b9
    :goto_b9
    invoke-virtual {v5, v7}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->setModeEnabled(Ljava/lang/String;)V

    goto :goto_68

    .line 2553
    :cond_bd
    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    .line 2555
    :cond_c4
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->applyConnectedDevicesRoles_l()V

    if-eqz p1, :cond_ce

    .line 2557
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postNotifyPreferredAudioProfileApplied(Landroid/bluetooth/BluetoothDevice;)V

    :cond_ce
    :goto_ce
    return-void
.end method
