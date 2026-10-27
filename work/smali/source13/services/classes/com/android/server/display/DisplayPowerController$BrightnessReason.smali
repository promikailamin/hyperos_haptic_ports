.class public final Lcom/android/server/display/DisplayPowerController$BrightnessReason;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "BrightnessReason"
.end annotation


# static fields
.field static final ADJUSTMENT_AUTO:I = 0x2

.field static final ADJUSTMENT_AUTO_TEMP:I = 0x1

.field static final MODIFIER_BCBC:I = 0x10

.field static final MODIFIER_DIMMED:I = 0x1

.field static final MODIFIER_GALLERY_HDR:I = 0x20

.field static final MODIFIER_HDR:I = 0x4

.field static final MODIFIER_LOW_BATTERY_LEVEL:I = 0x80

.field static final MODIFIER_LOW_POWER:I = 0x2

.field static final MODIFIER_MASK:I = 0x1ff

.field static final MODIFIER_PEAK:I = 0x100

.field static final MODIFIER_THERMAL:I = 0x40

.field static final MODIFIER_THROTTLED:I = 0x8

.field static final REASON_AUTOMATIC:I = 0x4

.field static final REASON_BOOST:I = 0x9

.field static final REASON_DOZE:I = 0x2

.field static final REASON_DOZE_DEFAULT:I = 0x3

.field static final REASON_MANUAL:I = 0x1

.field static final REASON_MAX:I = 0xa

.field static final REASON_OVERRIDE:I = 0x7

.field static final REASON_SCREEN_OFF:I = 0x5

.field static final REASON_SUNLIGHT:I = 0xa

.field static final REASON_TEMPORARY:I = 0x8

.field static final REASON_UNKNOWN:I = 0x0

.field static final REASON_VR:I = 0x6


# instance fields
.field public modifier:I

.field public reason:I

.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method protected constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/display/DisplayPowerController;

    .line 3384
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private reasonToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "reason"    # I

    .line 3526
    packed-switch p1, :pswitch_data_2c

    .line 3538
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3537
    :pswitch_8
    const-string/jumbo v0, "sunlight"

    return-object v0

    .line 3535
    :pswitch_c
    const-string v0, "boost"

    return-object v0

    .line 3534
    :pswitch_f
    const-string/jumbo v0, "temporary"

    return-object v0

    .line 3533
    :pswitch_13
    const-string/jumbo v0, "override"

    return-object v0

    .line 3532
    :pswitch_17
    const-string/jumbo v0, "vr"

    return-object v0

    .line 3531
    :pswitch_1b
    const-string/jumbo v0, "screen_off"

    return-object v0

    .line 3530
    :pswitch_1f
    const-string v0, "automatic"

    return-object v0

    .line 3529
    :pswitch_22
    const-string v0, "doze_default"

    return-object v0

    .line 3528
    :pswitch_25
    const-string v0, "doze"

    return-object v0

    .line 3527
    :pswitch_28
    const-string/jumbo v0, "manual"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public addModifier(I)V
    .registers 3
    .param p1, "modifier"    # I

    .line 3455
    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setModifier(I)V

    .line 3456
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 3460
    instance-of v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3461
    return v1

    .line 3463
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 3464
    .local v0, "other":Lcom/android/server/display/DisplayPowerController$BrightnessReason;
    iget v2, v0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    iget v3, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    if-ne v2, v3, :cond_16

    iget v2, v0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    iget v3, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    if-ne v2, v3, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 3469
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public set(Lcom/android/server/display/DisplayPowerController$BrightnessReason;)V
    .registers 4
    .param p1, "other"    # Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 3433
    const/4 v0, 0x0

    if-nez p1, :cond_5

    move v1, v0

    goto :goto_7

    :cond_5
    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    :goto_7
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 3434
    if-nez p1, :cond_d

    goto :goto_f

    :cond_d
    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    :goto_f
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setModifier(I)V

    .line 3435
    return-void
.end method

.method public setModifier(I)V
    .registers 5
    .param p1, "modifier"    # I

    .line 3446
    and-int/lit16 v0, p1, -0x200

    if-eqz v0, :cond_25

    .line 3447
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetTAG(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "brightness modifier out of bounds: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3448
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3447
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 3450
    :cond_25
    iput p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    .line 3452
    :goto_27
    return-void
.end method

.method public setReason(I)V
    .registers 5
    .param p1, "reason"    # I

    .line 3438
    if-ltz p1, :cond_a

    const/16 v0, 0xa

    if-le p1, v0, :cond_7

    goto :goto_a

    .line 3441
    :cond_7
    iput p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    goto :goto_26

    .line 3439
    :cond_a
    :goto_a
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetTAG(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "brightness reason out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3443
    :goto_26
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 3474
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .registers 6
    .param p1, "adjustments"    # I

    .line 3478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3479
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3480
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3481
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1c

    .line 3482
    const-string v1, " temp_adj"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3484
    :cond_1c
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_25

    .line 3485
    const-string v1, " auto_adj"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3487
    :cond_25
    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_30

    .line 3488
    const-string v1, " low_pwr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3490
    :cond_30
    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3b

    .line 3491
    const-string v1, " dim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3493
    :cond_3b
    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_46

    .line 3494
    const-string v1, " hdr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3496
    :cond_46
    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_51

    .line 3497
    const-string v1, " throttled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3500
    :cond_51
    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5c

    .line 3501
    const-string v1, " bcbc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3503
    :cond_5c
    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_67

    .line 3504
    const-string v1, " peak"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3506
    :cond_67
    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_72

    .line 3507
    const-string v1, " gallery_hdr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3509
    :cond_72
    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_7d

    .line 3510
    const-string v1, " thermal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3512
    :cond_7d
    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_88

    .line 3513
    const-string v1, " low_battery_level"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3516
    :cond_88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 3517
    .local v1, "strlen":I
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_9c

    .line 3518
    add-int/lit8 v2, v1, -0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_a1

    .line 3520
    :cond_9c
    const-string v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3522
    :goto_a1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
