.class public final Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;
.super Ljava/lang/Object;
.source "HapticFeedbackVibrationProvider.java"


# static fields
.field public static final COMMUNICATION_REQUEST_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field public static final HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field public static final IME_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field public static final PHYSICAL_EMULATION_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field public static final SAFE_MODE_VIBRATION_TIMINGS:[J

.field public static final TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;


# instance fields
.field public final mHapticFeedbackCustomization:Lcom/android/server/vibrator/HapticFeedbackCustomization;

.field public final mHapticTextHandleEnabled:Z

.field public mKeyboardVibrationFixedAmplitude:F

.field public final mVibratorInfo:Landroid/os/VibratorInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x12

    .line 39
    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    const/16 v0, 0x22

    .line 41
    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->PHYSICAL_EMULATION_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    const/16 v0, 0x32

    .line 43
    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    const/16 v0, 0x41

    .line 45
    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->COMMUNICATION_REQUEST_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    const/16 v0, 0x52

    .line 47
    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->IME_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    const/4 v0, 0x6

    .line 49
    new-array v0, v0, [J

    fill-array-data v0, :array_32

    sput-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->SAFE_MODE_VIBRATION_TIMINGS:[J

    return-void

    nop

    :array_32
    .array-data 8
        0x0
        0x1
        0x14
        0x15
        0x1f4
        0x258
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/os/VibratorInfo;)V
    .registers 4

    .line 59
    new-instance v0, Lcom/android/server/vibrator/HapticFeedbackCustomization;

    invoke-direct {v0, p1, p2}, Lcom/android/server/vibrator/HapticFeedbackCustomization;-><init>(Landroid/content/res/Resources;Landroid/os/VibratorInfo;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;-><init>(Landroid/content/res/Resources;Landroid/os/VibratorInfo;Lcom/android/server/vibrator/HapticFeedbackCustomization;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/os/VibratorInfo;Lcom/android/server/vibrator/HapticFeedbackCustomization;)V
    .registers 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p2, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mVibratorInfo:Landroid/os/VibratorInfo;

    const p2, 0x1110191

    .line 66
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mHapticTextHandleEnabled:Z

    .line 68
    iput-object p3, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mHapticFeedbackCustomization:Lcom/android/server/vibrator/HapticFeedbackCustomization;

    const p2, 0x1050102

    .line 70
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mKeyboardVibrationFixedAmplitude:F

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-ltz p2, :cond_26

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_25

    goto :goto_26

    :cond_25
    return-void

    :cond_26
    :goto_26
    const/high16 p1, -0x40800000    # -1.0f

    .line 73
    iput p1, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mKeyboardVibrationFixedAmplitude:F

    return-void
.end method

.method public static shouldBypassInterruptionPolicy(I)Z
    .registers 1

    .line 0
    packed-switch p0, :pswitch_data_8

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_8
    .packed-switch 0x12
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final createKeyboardVibrationAttributes(I)Landroid/os/VibrationAttributes;
    .registers 2

    and-int/lit8 p0, p1, 0x1

    if-nez p0, :cond_7

    .line 359
    sget-object p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    return-object p0

    .line 361
    :cond_7
    sget-object p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->IME_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    return-object p0
.end method

.method public final getAssistantButtonVibration()Landroid/os/VibrationEffect;
    .registers 4

    .line 315
    iget-object v0, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mVibratorInfo:Landroid/os/VibratorInfo;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/VibratorInfo;->isPrimitiveSupported(I)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object p0, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mVibratorInfo:Landroid/os/VibratorInfo;

    const/4 v0, 0x7

    .line 316
    invoke-virtual {p0, v0}, Landroid/os/VibratorInfo;->isPrimitiveSupported(I)Z

    move-result p0

    if-eqz p0, :cond_29

    .line 318
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object p0

    const/high16 v2, 0x3e800000    # 0.25f

    .line 319
    invoke-virtual {p0, v1, v2}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    move-result-object p0

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x32

    .line 320
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    move-result-object p0

    .line 321
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :cond_29
    const/4 p0, 0x5

    .line 324
    invoke-static {p0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public final getKeyboardVibration(I)Landroid/os/VibrationEffect;
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_7

    const/4 v1, 0x1

    move p1, v1

    goto :goto_c

    :cond_7
    const/4 p1, 0x2

    move v4, v0

    move v0, p1

    move p1, v1

    move v1, v4

    .line 345
    :goto_c
    iget v2, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mKeyboardVibrationFixedAmplitude:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2a

    .line 346
    iget-object v2, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v2, p1}, Landroid/os/VibratorInfo;->isPrimitiveSupported(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 347
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    iget p0, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mKeyboardVibrationFixedAmplitude:F

    .line 348
    invoke-virtual {v0, p1, p0}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    move-result-object p0

    .line 349
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 352
    :cond_2a
    invoke-static {v0, v1}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public final getVibration(IFI)Landroid/os/VibrationEffect;
    .registers 4

    .line 305
    iget-object p0, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {p0, p1}, Landroid/os/VibratorInfo;->isPrimitiveSupported(I)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 306
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object p0

    .line 307
    invoke-virtual {p0, p1, p2}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    move-result-object p0

    .line 308
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 310
    :cond_15
    invoke-static {p3}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public getVibration(II)Landroid/os/VibrationEffect;
    .registers 4

    # A13-PORT A13 has no HapticFeedbackCustomization layer: always use the
    # A13-PORT A13 effect mapping and ignore resource/config overrides.
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->isFeedbackConstantEnabled(I)Z

    move-result v0

    if-nez v0, :cond_a13_mapped

    const/4 p0, 0x0

    return-object p0

    :cond_a13_mapped
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibrationForHapticFeedback(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public getVibrationAttributes(IIII)Landroid/os/VibrationAttributes;
    .registers 5

    # A13-PORT Port of PhoneWindowManager.getVibrationAttributes() from A13.
    if-eqz p2, :cond_a13_switch

    invoke-static {p2}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object p2

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibrationAttributesWithFlags(Landroid/os/VibrationAttributes;II)Landroid/os/VibrationAttributes;

    move-result-object p0

    return-object p0

    :cond_a13_switch
    sparse-switch p1, :sswitch_data_a13

    sget-object p2, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    goto :goto_a13_apply

    :sswitch_a13_physical
    sget-object p2, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->PHYSICAL_EMULATION_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    goto :goto_a13_apply

    :sswitch_a13_hardware
    sget-object p2, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    :goto_a13_apply
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibrationAttributesWithFlags(Landroid/os/VibrationAttributes;II)Landroid/os/VibrationAttributes;

    move-result-object p0

    return-object p0

    :sswitch_data_a13
    # A13-PORT 0x2714/0x2715 are A16-only biometric constants; keep the A16
    # A13-PORT hardware-feedback classification for them.
    .sparse-switch
        0xe -> :sswitch_a13_physical
        0xf -> :sswitch_a13_physical
        0x12 -> :sswitch_a13_hardware
        0x13 -> :sswitch_a13_hardware
        0x14 -> :sswitch_a13_hardware
        0x2712 -> :sswitch_a13_hardware
        0x2713 -> :sswitch_a13_hardware
        0x2714 -> :sswitch_a13_hardware
        0x2715 -> :sswitch_a13_hardware
    .end sparse-switch
.end method

.method public getVibrationAttributesForInputDevice(IIII)Landroid/os/VibrationAttributes;
    .registers 5

    packed-switch p1, :pswitch_data_18

    const/4 p2, 0x0

    .line 188
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibrationAttributes(IIII)Landroid/os/VibrationAttributes;

    move-result-object p0

    return-object p0

    :pswitch_9
    const/high16 p4, 0x400000

    if-ne p2, p4, :cond_10

    .line 183
    sget-object p2, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    goto :goto_12

    .line 184
    :cond_10
    sget-object p2, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 185
    :goto_12
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibrationAttributesWithFlags(Landroid/os/VibrationAttributes;II)Landroid/os/VibrationAttributes;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x12
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public final getVibrationAttributesWithFlags(Landroid/os/VibrationAttributes;II)Landroid/os/VibrationAttributes;
    .registers 4

    const/4 p0, 0x2

    and-int/2addr p3, p0

    if-eqz p3, :cond_5

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    .line 370
    :goto_6
    invoke-static {p2}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->shouldBypassInterruptionPolicy(I)Z

    move-result p2

    if-eqz p2, :cond_e

    or-int/lit8 p0, p0, 0x1

    :cond_e
    if-nez p0, :cond_11

    return-object p1

    .line 375
    :cond_11
    new-instance p2, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {p2, p1}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/os/VibrationAttributes;)V

    invoke-virtual {p2, p0}, Landroid/os/VibrationAttributes$Builder;->setFlags(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object p0

    return-object p0
.end method

.method public final getVibrationForHapticFeedback(I)Landroid/os/VibrationEffect;
    .registers 7

    if-eqz p1, :cond_59

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_54

    const/4 v2, 0x2

    const/16 v3, 0x15

    packed-switch p1, :pswitch_data_60

    const/4 v4, 0x7

    packed-switch p1, :pswitch_data_72

    packed-switch p1, :pswitch_data_98

    const/4 p0, 0x0

    return-object p0

    .line 277
    :pswitch_15
    invoke-virtual {p0}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getAssistantButtonVibration()Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 272
    :pswitch_1a
    sget-object p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->SAFE_MODE_VIBRATION_TIMINGS:[J

    const/4 p1, -0x1

    invoke-static {p0, p1}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :pswitch_22
    const p1, 0x3ecccccd    # 0.4f

    .line 280
    invoke-virtual {p0, v4, p1, v3}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibration(IFI)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :pswitch_2a
    const/16 p1, 0x8

    const v0, 0x3e4ccccd    # 0.2f

    .line 291
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibration(IFI)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :pswitch_34
    const/high16 p1, 0x3f000000    # 0.5f

    .line 286
    invoke-virtual {p0, v4, p1, v2}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibration(IFI)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 268
    :pswitch_3b
    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 248
    :pswitch_40
    invoke-static {v2, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 234
    :pswitch_45
    invoke-static {v2}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 239
    :pswitch_4a
    invoke-static {v3}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 244
    :pswitch_4f
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getKeyboardVibration(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 258
    :cond_54
    :pswitch_54
    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :cond_59
    :pswitch_59
    const/4 p0, 0x5

    .line 264
    invoke-static {p0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_60
    # A13-PORT A13: KEYBOARD_PRESS(0x3) -> get(0), KEYBOARD_RELEASE(0x7) -> get(2, false)
    .packed-switch 0x3
        :pswitch_54
        :pswitch_4a
        :pswitch_54
        :pswitch_45
        :pswitch_40
        :pswitch_40
        :pswitch_4a
    .end packed-switch

    :pswitch_data_72
    .packed-switch 0xb
        :pswitch_40
        :pswitch_54
        :pswitch_45
        :pswitch_59
        :pswitch_54
        :pswitch_54
        :pswitch_3b
        :pswitch_45
        :pswitch_54
        :pswitch_54
        :pswitch_34
        :pswitch_2a
        :pswitch_45
        :pswitch_22
        :pswitch_59
        :pswitch_45
        :pswitch_4a
    .end packed-switch

    :pswitch_data_98
    .packed-switch 0x2711
        :pswitch_1a
        :pswitch_15
        :pswitch_59
        :pswitch_54
        :pswitch_3b
    .end packed-switch
.end method

.method public getVibrationForInputDevice(II)Landroid/os/VibrationEffect;
    .registers 4

    # A13-PORT A13: input-device haptics use the same effect mapping, no
    # A13-PORT HapticFeedbackCustomization overrides.
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->isFeedbackConstantEnabled(I)Z

    move-result v0

    if-nez v0, :cond_a13_mapped

    const/4 p0, 0x0

    return-object p0

    :cond_a13_mapped
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibrationForHapticFeedback(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public final isFeedbackConstantEnabled(I)Z
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    const/16 v0, 0x9

    if-eq p1, v0, :cond_9

    const/4 p0, 0x1

    return p0

    .line 216
    :cond_9
    iget-boolean p0, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mHapticTextHandleEnabled:Z

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isRestrictedHapticFeedback(I)Z
    .registers 2

    .line 0
    const/16 p0, 0x2714

    if-eq p1, p0, :cond_a

    const/16 p0, 0x2715

    if-eq p1, p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method
