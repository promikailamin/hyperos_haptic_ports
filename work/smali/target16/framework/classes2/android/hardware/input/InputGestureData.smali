.class public final Landroid/hardware/input/InputGestureData;
.super Ljava/lang/Object;
.source "InputGestureData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/InputGestureData$Trigger;,
        Landroid/hardware/input/InputGestureData$Action;,
        Landroid/hardware/input/InputGestureData$KeyTrigger;,
        Landroid/hardware/input/InputGestureData$TouchpadTrigger;,
        Landroid/hardware/input/InputGestureData$Filter;,
        Landroid/hardware/input/InputGestureData$Builder;
    }
.end annotation


# static fields
.field public static final blacklist TOUCHPAD_GESTURE_TYPE_THREE_FINGER_TAP:I = 0x1

.field public static final blacklist TOUCHPAD_GESTURE_TYPE_UNKNOWN:I


# instance fields
.field private final blacklist mInputGestureData:Landroid/hardware/input/AidlInputGestureData;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmInputGestureData(Landroid/hardware/input/InputGestureData;)Landroid/hardware/input/AidlInputGestureData;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/InputGestureData;->mInputGestureData:Landroid/hardware/input/AidlInputGestureData;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/hardware/input/AidlInputGestureData;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/hardware/input/InputGestureData;->mInputGestureData:Landroid/hardware/input/AidlInputGestureData;

    .line 46
    invoke-direct {p0}, Landroid/hardware/input/InputGestureData;->validate()V

    .line 47
    return-void
.end method

.method public static blacklist createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;
    .registers 4

    .line 192
    new-instance v0, Landroid/hardware/input/InputGestureData$KeyTrigger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/hardware/input/InputGestureData$KeyTrigger;-><init>(IILandroid/hardware/input/InputGestureData-IA;)V

    return-object v0
.end method

.method public static blacklist createTouchpadTrigger(I)Landroid/hardware/input/InputGestureData$Trigger;
    .registers 3

    .line 197
    new-instance v0, Landroid/hardware/input/InputGestureData$TouchpadTrigger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputGestureData$TouchpadTrigger;-><init>(ILandroid/hardware/input/InputGestureData-IA;)V

    return-object v0
.end method

.method public static blacklist createTriggerFromAidlTrigger(Landroid/hardware/input/AidlInputGestureData$Trigger;)Landroid/hardware/input/InputGestureData$Trigger;
    .registers 3

    .line 201
    invoke-virtual {p0}, Landroid/hardware/input/AidlInputGestureData$Trigger;->getTag()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_3a

    .line 219
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "aidlTrigger is corrupted, invalid trigger type!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 210
    :pswitch_10
    nop

    .line 211
    invoke-virtual {p0}, Landroid/hardware/input/AidlInputGestureData$Trigger;->getTouchpadGesture()Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    move-result-object p0

    .line 212
    if-eqz p0, :cond_1d

    .line 216
    new-instance v0, Landroid/hardware/input/InputGestureData$TouchpadTrigger;

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputGestureData$TouchpadTrigger;-><init>(Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;Landroid/hardware/input/InputGestureData-IA;)V

    return-object v0

    .line 213
    :cond_1d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "aidlTrigger is corrupted, null touchpad trigger!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 203
    :pswitch_25
    invoke-virtual {p0}, Landroid/hardware/input/AidlInputGestureData$Trigger;->getKey()Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    move-result-object p0

    .line 204
    if-eqz p0, :cond_31

    .line 207
    new-instance v0, Landroid/hardware/input/InputGestureData$KeyTrigger;

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputGestureData$KeyTrigger;-><init>(Landroid/hardware/input/AidlInputGestureData$KeyTrigger;Landroid/hardware/input/InputGestureData-IA;)V

    return-object v0

    .line 205
    :cond_31
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "aidlTrigger is corrupted, null key trigger!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_25
        :pswitch_10
    .end packed-switch
.end method

.method private blacklist getAppLaunchData()Landroid/hardware/input/AppLaunchData;
    .registers 5

    .line 86
    iget-object v0, p0, Landroid/hardware/input/InputGestureData;->mInputGestureData:Landroid/hardware/input/AidlInputGestureData;

    iget v0, v0, Landroid/hardware/input/AidlInputGestureData;->gestureType:I

    const/16 v1, 0x33

    if-eq v0, v1, :cond_a

    .line 87
    const/4 v0, 0x0

    return-object v0

    .line 89
    :cond_a
    iget-object v0, p0, Landroid/hardware/input/InputGestureData;->mInputGestureData:Landroid/hardware/input/AidlInputGestureData;

    iget-object v0, v0, Landroid/hardware/input/AidlInputGestureData;->appLaunchCategory:Ljava/lang/String;

    iget-object v1, p0, Landroid/hardware/input/InputGestureData;->mInputGestureData:Landroid/hardware/input/AidlInputGestureData;

    iget-object v1, v1, Landroid/hardware/input/AidlInputGestureData;->appLaunchRole:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/input/InputGestureData;->mInputGestureData:Landroid/hardware/input/AidlInputGestureData;

    iget-object v2, v2, Landroid/hardware/input/AidlInputGestureData;->appLaunchPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/input/InputGestureData;->mInputGestureData:Landroid/hardware/input/AidlInputGestureData;

    iget-object v3, v3, Landroid/hardware/input/AidlInputGestureData;->appLaunchClassName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/input/AppLaunchData;->createLaunchData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;

    move-result-object v0

    return-object v0
.end method

.method private blacklist validate()V
    .registers 4

    .line 65
    invoke-virtual {p0}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v1

    .line 67
    if-eqz v0, :cond_30

    .line 70
    invoke-static {v1}, Landroid/hardware/input/InputGestureData$Action;->-$$Nest$fgetkeyGestureType(Landroid/hardware/input/InputGestureData$Action;)I

    move-result v0

    if-eqz v0, :cond_28

    .line 73
    invoke-static {v1}, Landroid/hardware/input/InputGestureData$Action;->-$$Nest$fgetkeyGestureType(Landroid/hardware/input/InputGestureData$Action;)I

    move-result v0

    const/16 v2, 0x33

    if-ne v0, v2, :cond_27

    invoke-static {v1}, Landroid/hardware/input/InputGestureData$Action;->-$$Nest$fgetappLaunchData(Landroid/hardware/input/InputGestureData$Action;)Landroid/hardware/input/AppLaunchData;

    move-result-object v0

    if-eqz v0, :cond_1f

    goto :goto_27

    .line 75
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No app launch data for system action launch application"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_27
    :goto_27
    return-void

    .line 71
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No system action found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No trigger found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist allowCaptureByFocusedWindow()Z
    .registers 2

    .line 61
    iget-object v0, p0, Landroid/hardware/input/InputGestureData;->mInputGestureData:Landroid/hardware/input/AidlInputGestureData;

    iget-boolean v0, v0, Landroid/hardware/input/AidlInputGestureData;->allowCaptureByFocusedWindow:Z

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 175
    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 176
    :cond_4
    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 177
    :cond_11
    check-cast p1, Landroid/hardware/input/InputGestureData;

    .line 178
    iget-object v0, p0, Landroid/hardware/input/InputGestureData;->mInputGestureData:Landroid/hardware/input/AidlInputGestureData;

    iget-object p1, p1, Landroid/hardware/input/InputGestureData;->mInputGestureData:Landroid/hardware/input/AidlInputGestureData;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 176
    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getAction()Landroid/hardware/input/InputGestureData$Action;
    .registers 4

    .line 56
    new-instance v0, Landroid/hardware/input/InputGestureData$Action;

    iget-object v1, p0, Landroid/hardware/input/InputGestureData;->mInputGestureData:Landroid/hardware/input/AidlInputGestureData;

    iget v1, v1, Landroid/hardware/input/AidlInputGestureData;->gestureType:I

    invoke-direct {p0}, Landroid/hardware/input/InputGestureData;->getAppLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/input/InputGestureData$Action;-><init>(ILandroid/hardware/input/AppLaunchData;)V

    return-object v0
.end method

.method public blacklist getAidlData()Landroid/hardware/input/AidlInputGestureData;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/hardware/input/InputGestureData;->mInputGestureData:Landroid/hardware/input/AidlInputGestureData;

    return-object v0
.end method

.method public blacklist getTrigger()Landroid/hardware/input/InputGestureData$Trigger;
    .registers 2

    .line 51
    iget-object v0, p0, Landroid/hardware/input/InputGestureData;->mInputGestureData:Landroid/hardware/input/AidlInputGestureData;

    iget-object v0, v0, Landroid/hardware/input/AidlInputGestureData;->trigger:Landroid/hardware/input/AidlInputGestureData$Trigger;

    invoke-static {v0}, Landroid/hardware/input/InputGestureData;->createTriggerFromAidlTrigger(Landroid/hardware/input/AidlInputGestureData$Trigger;)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 183
    iget-object v0, p0, Landroid/hardware/input/InputGestureData;->mInputGestureData:Landroid/hardware/input/AidlInputGestureData;

    invoke-virtual {v0}, Landroid/hardware/input/AidlInputGestureData;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputGestureData { trigger = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    invoke-virtual {p0}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 168
    invoke-virtual {p0}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowCaptureByFocusedWindow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/InputGestureData;->mInputGestureData:Landroid/hardware/input/AidlInputGestureData;

    iget-boolean v1, v1, Landroid/hardware/input/AidlInputGestureData;->allowCaptureByFocusedWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    return-object v0
.end method
