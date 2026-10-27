.class public final Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "VibratorManagerService.java"


# instance fields
.field public final mShellCallbacksToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/IBinder;)V
    .registers 3

    .line 2909
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2910
    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->mShellCallbacksToken:Landroid/os/IBinder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/IBinder;Lcom/android/server/vibrator/VibratorManagerService-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/IBinder;)V

    return-void
.end method

.method public static parseFloat(Ljava/lang/String;Ljava/lang/String;)F
    .registers 3

    .line 3466
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    .line 3468
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parseInt(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 3458
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    .line 3460
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final addEnvelopeToComposition(Landroid/os/VibrationEffect$Composition;)V
    .registers 11

    .line 3210
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    const/4 v0, -0x1

    const/high16 v1, 0x7fc00000    # Float.NaN

    const/4 v2, 0x0

    move v4, v0

    move v3, v2

    .line 3216
    :goto_9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_58

    .line 3217
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x1

    sparse-switch v6, :sswitch_data_c8

    :goto_1a
    move v5, v0

    goto :goto_3c

    :sswitch_1c
    const-string v6, "-r"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25

    goto :goto_1a

    :cond_25
    const/4 v5, 0x2

    goto :goto_3c

    :sswitch_27
    const-string v6, "-i"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    goto :goto_1a

    :cond_30
    move v5, v7

    goto :goto_3c

    :sswitch_32
    const-string v6, "-a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b

    goto :goto_1a

    :cond_3b
    move v5, v2

    :goto_3c
    packed-switch v5, :pswitch_data_d6

    goto :goto_9

    .line 3221
    :pswitch_40
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Expected repeat index after -r"

    invoke-static {v4, v5}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_9

    .line 3219
    :pswitch_4b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    const-string v5, "Expected initial sharpness after -i"

    invoke-static {v1, v5}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v1

    goto :goto_9

    :pswitch_56
    move v3, v7

    goto :goto_9

    :cond_58
    const/4 v0, 0x0

    if-eqz v3, :cond_61

    .line 3226
    new-instance v3, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$AdvancedEnveloperBuilderWrapper;

    invoke-direct {v3, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$AdvancedEnveloperBuilderWrapper;-><init>(Lcom/android/server/vibrator/VibratorManagerService-IA;)V

    goto :goto_66

    .line 3227
    :cond_61
    new-instance v3, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$BasicEnveloperBuilderWrapper;

    invoke-direct {v3, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$BasicEnveloperBuilderWrapper;-><init>(Lcom/android/server/vibrator/VibratorManagerService-IA;)V

    .line 3229
    :goto_66
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_6f

    .line 3230
    invoke-interface {v3, v1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$EnvelopeBuilder;->setInitialSharpness(F)V

    :cond_6f
    const/4 v1, 0x0

    .line 3236
    :goto_70
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a4

    if-lez v2, :cond_81

    if-ne v2, v4, :cond_81

    .line 3238
    invoke-interface {v3}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$EnvelopeBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object v0

    .line 3239
    invoke-interface {v3, v1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$EnvelopeBuilder;->reset(F)V

    .line 3242
    :cond_81
    :try_start_81
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3243
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;
    :try_end_88
    .catch Ljava/lang/NumberFormatException; {:try_start_81 .. :try_end_88} :catch_a4

    .line 3248
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Expected envelope intensity"

    invoke-static {v5, v6}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    .line 3249
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Expected envelope sharpness"

    invoke-static {v6, v7}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v6

    int-to-long v7, v1

    .line 3250
    invoke-interface {v3, v5, v6, v7, v8}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$EnvelopeBuilder;->addControlPoint(FFJ)V

    add-int/lit8 v2, v2, 0x1

    move v1, v6

    goto :goto_70

    :catch_a4
    :cond_a4
    if-ltz v4, :cond_c0

    if-nez v0, :cond_b4

    .line 3256
    invoke-interface {v3}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$EnvelopeBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-static {p0}, Landroid/os/VibrationEffect;->createRepeatingEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    goto :goto_bf

    .line 3259
    :cond_b4
    invoke-interface {v3}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$EnvelopeBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/os/VibrationEffect;->createRepeatingEffect(Landroid/os/VibrationEffect;Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;

    move-result-object p0

    .line 3258
    invoke-virtual {p1, p0}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    :goto_bf
    return-void

    .line 3264
    :cond_c0
    invoke-interface {v3}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$EnvelopeBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    return-void

    :sswitch_data_c8
    .sparse-switch
        0x5d4 -> :sswitch_32
        0x5dc -> :sswitch_27
        0x5e5 -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_56
        :pswitch_4b
        :pswitch_40
    .end packed-switch
.end method

.method public final addOneShotToComposition(Landroid/os/VibrationEffect$Composition;)V
    .registers 6

    .line 3132
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    .line 3134
    :cond_5
    :goto_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 3135
    const-string v3, "-a"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v0, 0x1

    goto :goto_5

    .line 3137
    :cond_15
    const-string v3, "-w"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3138
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Expected delay millis after -w"

    invoke-static {v1, v2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_5

    .line 3142
    :cond_28
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Expected one-shot duration millis"

    invoke-static {v2, v3}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    if-eqz v0, :cond_40

    .line 3144
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Expected one-shot amplitude"

    invoke-static {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    goto :goto_41

    :cond_40
    const/4 p0, -0x1

    :goto_41
    int-to-long v0, v1

    .line 3146
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/VibrationEffect$Composition;->addOffDuration(Ljava/time/Duration;)Landroid/os/VibrationEffect$Composition;

    .line 3147
    invoke-static {v2, v3, p0}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    return-void
.end method

.method public final addPrebakedToComposition(Landroid/os/VibrationEffect$Composition;)V
    .registers 6

    .line 3363
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    .line 3365
    :cond_5
    :goto_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 3366
    const-string v3, "-b"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v1, 0x1

    goto :goto_5

    .line 3368
    :cond_15
    const-string v3, "-w"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3369
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Expected delay millis after -w"

    invoke-static {v0, v2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_5

    .line 3373
    :cond_28
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Expected prebaked effect id"

    invoke-static {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    int-to-long v2, v0

    .line 3374
    invoke-static {v2, v3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/VibrationEffect$Composition;->addOffDuration(Ljava/time/Duration;)Landroid/os/VibrationEffect$Composition;

    .line 3375
    invoke-static {p0, v1}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    return-void
.end method

.method public final addPrimitivesToComposition(Landroid/os/VibrationEffect$Composition;)V
    .registers 8

    .line 3379
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 3380
    :goto_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5e

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    move v2, v0

    move v3, v2

    .line 3386
    :cond_e
    :goto_e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4f

    .line 3387
    const-string v5, "-s"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 3388
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Expected scale after -s"

    invoke-static {v1, v4}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v1

    goto :goto_e

    .line 3389
    :cond_27
    const-string v5, "-o"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 3391
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Expected offset millis after -o"

    invoke-static {v2, v3}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    goto :goto_e

    .line 3392
    :cond_3b
    const-string v5, "-w"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 3394
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Expected delay millis after -w"

    invoke-static {v2, v3}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move v3, v0

    goto :goto_e

    .line 3398
    :cond_4f
    :try_start_4f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    .line 3399
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFII)Landroid/os/VibrationEffect$Composition;

    .line 3400
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;
    :try_end_5d
    .catch Ljava/lang/NumberFormatException; {:try_start_4f .. :try_end_5d} :catch_5e
    .catch Ljava/lang/NullPointerException; {:try_start_4f .. :try_end_5d} :catch_5e

    goto :goto_3

    :catch_5e
    :cond_5e
    return-void
.end method

.method public final addWaveformToComposition(Landroid/os/VibrationEffect$Composition;)V
    .registers 14

    .line 3274
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v1

    .line 3276
    :goto_a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_73

    .line 3277
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x1

    sparse-switch v8, :sswitch_data_19a

    :goto_1b
    move v7, v1

    goto :goto_53

    :sswitch_1d
    const-string v8, "-w"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_26

    goto :goto_1b

    :cond_26
    const/4 v7, 0x4

    goto :goto_53

    :sswitch_28
    const-string v8, "-r"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_31

    goto :goto_1b

    :cond_31
    const/4 v7, 0x3

    goto :goto_53

    :sswitch_33
    const-string v8, "-f"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3c

    goto :goto_1b

    :cond_3c
    const/4 v7, 0x2

    goto :goto_53

    :sswitch_3e
    const-string v8, "-c"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_47

    goto :goto_1b

    :cond_47
    move v7, v9

    goto :goto_53

    :sswitch_49
    const-string v8, "-a"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_52

    goto :goto_1b

    :cond_52
    move v7, v0

    :goto_53
    packed-switch v7, :pswitch_data_1b0

    goto :goto_a

    .line 3283
    :pswitch_57
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    const-string v7, "Expected delay millis after -w"

    invoke-static {v4, v7}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_a

    .line 3281
    :pswitch_62
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Expected repeat index after -r"

    invoke-static {v6, v7}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_a

    :pswitch_6d
    move v3, v9

    goto :goto_a

    :pswitch_6f
    move v5, v9

    goto :goto_a

    :pswitch_71
    move v2, v9

    goto :goto_a

    .line 3287
    :cond_73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3288
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3289
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    .line 3293
    :cond_83
    :goto_83
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_ce

    .line 3295
    :try_start_89
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3296
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;
    :try_end_97
    .catch Ljava/lang/NumberFormatException; {:try_start_89 .. :try_end_97} :catch_ce

    if-eqz v2, :cond_af

    .line 3302
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Expected waveform amplitude"

    invoke-static {v10, v11}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x437f0000    # 255.0f

    div-float/2addr v10, v11

    .line 3303
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ba

    .line 3305
    :cond_af
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v9

    move v9, v10

    :goto_ba
    if-eqz v3, :cond_83

    .line 3310
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Expected waveform frequency"

    invoke-static {v10, v11}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    .line 3309
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_83

    :catch_ce
    :cond_ce
    int-to-long v9, v4

    .line 3315
    invoke-static {v9, v10}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/VibrationEffect$Composition;->addOffDuration(Ljava/time/Duration;)Landroid/os/VibrationEffect$Composition;

    .line 3317
    invoke-static {}, Landroid/os/VibrationEffect;->startWaveform()Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object p0

    .line 3318
    :goto_da
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_188

    if-eqz v5, :cond_f2

    .line 3320
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v9, v2

    invoke-static {v9, v10}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v2

    goto :goto_f4

    .line 3321
    :cond_f2
    sget-object v2, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    :goto_f4
    if-eqz v5, :cond_f9

    .line 3323
    sget-object v4, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    goto :goto_108

    .line 3324
    :cond_f9
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v9, v4

    invoke-static {v9, v10}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v4

    :goto_108
    if-eqz v3, :cond_12a

    .line 3327
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-static {v9}, Landroid/os/VibrationEffect$VibrationParameter;->targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v9

    .line 3328
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-static {v10}, Landroid/os/VibrationEffect$VibrationParameter;->targetFrequency(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v10

    .line 3327
    invoke-virtual {p0, v2, v9, v10}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    goto :goto_13b

    .line 3330
    :cond_12a
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-static {v9}, Landroid/os/VibrationEffect$VibrationParameter;->targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v9

    invoke-virtual {p0, v2, v9}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    .line 3332
    :goto_13b
    invoke-virtual {v4}, Ljava/time/Duration;->isZero()Z

    move-result v2

    if-nez v2, :cond_144

    .line 3335
    invoke-virtual {p0, v4}, Landroid/os/VibrationEffect$WaveformBuilder;->addSustain(Ljava/time/Duration;)Landroid/os/VibrationEffect$WaveformBuilder;

    :cond_144
    if-lez v0, :cond_184

    if-ne v0, v6, :cond_184

    .line 3340
    invoke-virtual {p0}, Landroid/os/VibrationEffect$WaveformBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    if-eqz v3, :cond_172

    .line 3343
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Landroid/os/VibrationEffect$VibrationParameter;->targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object p0

    .line 3344
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Landroid/os/VibrationEffect$VibrationParameter;->targetFrequency(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v2

    .line 3343
    invoke-static {p0, v2}, Landroid/os/VibrationEffect;->startWaveform(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object p0

    goto :goto_184

    .line 3347
    :cond_172
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Landroid/os/VibrationEffect$VibrationParameter;->targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object p0

    .line 3346
    invoke-static {p0}, Landroid/os/VibrationEffect;->startWaveform(Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object p0

    :cond_184
    :goto_184
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_da

    :cond_188
    if-gez v6, :cond_192

    .line 3352
    invoke-virtual {p0}, Landroid/os/VibrationEffect$WaveformBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    goto :goto_199

    .line 3355
    :cond_192
    invoke-virtual {p0}, Landroid/os/VibrationEffect$WaveformBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/VibrationEffect$Composition;->repeatEffectIndefinitely(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    :goto_199
    return-void

    :sswitch_data_19a
    .sparse-switch
        0x5d4 -> :sswitch_49
        0x5d6 -> :sswitch_3e
        0x5d9 -> :sswitch_33
        0x5e5 -> :sswitch_28
        0x5ea -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_1b0
    .packed-switch 0x0
        :pswitch_71
        :pswitch_6f
        :pswitch_6d
        :pswitch_62
        :pswitch_57
    .end packed-switch
.end method

.method public final createVibrationAttributes(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;)Landroid/os/VibrationAttributes;
    .registers 3

    .line 3410
    iget-boolean p0, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->shouldForce:Z

    if-eqz p0, :cond_6

    const/4 p0, 0x3

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    .line 3411
    :goto_7
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    .line 3412
    invoke-virtual {v0, p0}, Landroid/os/VibrationAttributes$Builder;->setFlags(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object p0

    iget p1, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->usage:I

    .line 3413
    invoke-virtual {p0, p1}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object p0

    .line 3414
    invoke-virtual {p0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object p0

    return-object p0
.end method

.method public final maybeWaitOnVibration(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;)V
    .registers 7

    if-eqz p1, :cond_1e

    .line 3436
    iget-boolean p2, p2, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->isInBackground:Z

    if-nez p2, :cond_1e

    .line 3440
    :try_start_6
    invoke-virtual {p1}, Lcom/android/server/vibrator/HalVibration;->waitForEnd()V

    .line 3442
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibrationThread(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationThread;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 3443
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->getRampDownDuration()I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    .line 3442
    invoke-virtual {p1, v0, v1}, Lcom/android/server/vibrator/VibrationThread;->waitForThreadIdle(J)Z
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_1e} :catch_1e

    :catch_1e
    :cond_1e
    return-void
.end method

.method public final nextEffect()Landroid/os/VibrationEffect;
    .registers 4

    .line 3105
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    .line 3108
    :goto_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 3109
    const-string/jumbo v2, "oneshot"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3110
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->addOneShotToComposition(Landroid/os/VibrationEffect$Composition;)V

    goto :goto_4

    .line 3111
    :cond_17
    const-string/jumbo v2, "waveform"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 3112
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->addWaveformToComposition(Landroid/os/VibrationEffect$Composition;)V

    goto :goto_4

    .line 3113
    :cond_24
    const-string/jumbo v2, "prebaked"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 3114
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->addPrebakedToComposition(Landroid/os/VibrationEffect$Composition;)V

    goto :goto_4

    .line 3115
    :cond_31
    const-string/jumbo v2, "primitives"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 3116
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->addPrimitivesToComposition(Landroid/os/VibrationEffect$Composition;)V

    goto :goto_4

    .line 3117
    :cond_3e
    const-string v2, "envelope"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 3118
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->addEnvelopeToComposition(Landroid/os/VibrationEffect$Composition;)V

    goto :goto_4

    .line 3125
    :cond_4a
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 5

    const-wide/32 v0, 0x800000

    .line 2916
    :try_start_3
    const-string/jumbo v2, "list"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2917
    const-string/jumbo p1, "onCommand: list"

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2918
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runListVibrators()I

    move-result p0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1a

    .line 2943
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_1a
    move-exception p0

    goto :goto_9a

    .line 2920
    :cond_1c
    :try_start_1c
    const-string/jumbo v2, "synced"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 2921
    const-string/jumbo p1, "onCommand: synced"

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2922
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runMono()I

    move-result p0
    :try_end_2f
    .catchall {:try_start_1c .. :try_end_2f} :catchall_1a

    .line 2943
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 2924
    :cond_33
    :try_start_33
    const-string v2, "combined"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 2925
    const-string/jumbo p1, "onCommand: combined"

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2926
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runStereo()I

    move-result p0
    :try_end_45
    .catchall {:try_start_33 .. :try_end_45} :catchall_1a

    .line 2943
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 2928
    :cond_49
    :try_start_49
    const-string/jumbo v2, "xml"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 2929
    const-string/jumbo p1, "onCommand: xml"

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2930
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runXml()I

    move-result p0
    :try_end_5c
    .catchall {:try_start_49 .. :try_end_5c} :catchall_1a

    .line 2943
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 2932
    :cond_60
    :try_start_60
    const-string v2, "cancel"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 2933
    const-string/jumbo p1, "onCommand: cancel"

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2934
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runCancel()I

    move-result p0
    :try_end_72
    .catchall {:try_start_60 .. :try_end_72} :catchall_1a

    .line 2943
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 2936
    :cond_76
    :try_start_76
    const-string v2, "feedback"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 2937
    const-string/jumbo p1, "onCommand: feedback"

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2938
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runHapticFeedback()I

    move-result p0
    :try_end_88
    .catchall {:try_start_76 .. :try_end_88} :catchall_1a

    .line 2943
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 2940
    :cond_8c
    :try_start_8c
    const-string/jumbo v2, "onCommand: default"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2941
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0
    :try_end_96
    .catchall {:try_start_8c .. :try_end_96} :catchall_1a

    .line 2943
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :goto_9a
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2944
    throw p0
.end method

.method public onHelp()V
    .registers 5

    .line 3474
    const-string v0, "    wait time in milliseconds."

    const-string v1, "    If -w is provided, the effect will be played after the specified"

    const-string v2, ""

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 3475
    :try_start_a
    const-string v3, "Vibrator Manager commands:"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3476
    const-string v3, "  help"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3477
    const-string v3, "    Prints this help text."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3478
    const-string v3, "  list"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3479
    const-string v3, "    Prints device vibrator ids; does not include input devices."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3480
    const-string v3, "  synced [options] <effect>..."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3481
    const-string v3, "    Vibrates effect on all vibrators in sync."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3482
    const-string v3, "  combined [options] (-v <vibrator-id> <effect>...)..."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3483
    const-string v3, "    Vibrates different effects on each vibrator in sync."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3484
    const-string v3, "  xml [options] <xml>"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3485
    const-string v3, "    Vibrates using combined vibration described in given XML string"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3486
    const-string v3, "    on all vibrators in sync. The XML could be:"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3487
    const-string v3, "        A single <vibration-effect>, or"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3488
    const-string v3, "        A <vibration-select> containing multiple effects."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3489
    const-string v3, "  feedback [options] <constant>"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3490
    const-string v3, "    Performs a haptic feedback with the given constant."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3491
    const-string v3, "  cancel"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3492
    const-string v3, "    Cancels any active vibration"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3493
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3494
    const-string v3, "Effect commands:"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3495
    const-string v3, "  oneshot [-w delay] [-a] <duration> [<amplitude>]"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3496
    const-string v3, "    Vibrates for duration milliseconds."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3497
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3498
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3499
    const-string v3, "    If -a is provided, the command accepts a second argument for "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3500
    const-string v3, "    amplitude, in a scale of 1-255."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3501
    const-string v3, "  waveform [-w delay] [-r index] [-a] [-f] [-c] "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3502
    const-string v3, "(<duration> [<amplitude>] [<frequency>])..."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3503
    const-string v3, "    Vibrates for durations and amplitudes in list."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3504
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3505
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3506
    const-string v3, "    If -r is provided, the waveform loops back to the specified"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3507
    const-string v3, "    index (e.g. 0 loops from the beginning)."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3508
    const-string v3, "    If -a is provided, the command expects amplitude to follow each"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3509
    const-string v3, "    duration; otherwise, it accepts durations only and alternates"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3510
    const-string v3, "    off/on."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3511
    const-string v3, "    If -f is provided, the command expects frequency to follow each"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3512
    const-string v3, "    amplitude or duration; otherwise, it uses resonant frequency."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3513
    const-string v3, "    If -c is provided, the waveform is continuous and will ramp"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3514
    const-string v3, "    between values; otherwise each entry is a fixed step."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3515
    const-string v3, "    Duration is in milliseconds; amplitude is a scale of 1-255;"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3516
    const-string v3, "    frequency is an absolute value in hertz."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3517
    const-string v3, "  envelope [-a] [-i initial sharpness] [-r index]  "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3518
    const-string v3, "[<duration1> <intensity1> <sharpness1>]..."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3519
    const-string v3, "    Generates a vibration pattern based on a series of duration, "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3520
    const-string v3, "    intensity, and sharpness values. The total vibration time is "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3521
    const-string v3, "    the sum of all durations."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3522
    const-string v3, "    If -a is provided, the waveform will use the advanced APIs to "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3523
    const-string v3, "    generate the vibration pattern and the input parameters "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3524
    const-string v3, "    become [<duration1> <amplitude1> <frequency1>]."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3525
    const-string v3, "    If -i is provided, the waveform will have an initial sharpness "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3526
    const-string v3, "    it will start from."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3527
    const-string v3, "    If -r is provided, the waveform loops back to the specified index"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3528
    const-string v3, "    (e.g. 0 loops from the beginning)."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3529
    const-string v3, "  prebaked [-w delay] [-b] <effect-id>"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3530
    const-string v3, "    Vibrates with prebaked effect."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3531
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3532
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3533
    const-string v0, "    If -b is provided, the prebaked fallback effect will be played if"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3534
    const-string v0, "    the device doesn\'t support the given effect-id."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3535
    const-string v0, "  primitives ([-w delay] [-o time] [-s scale]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3536
    const-string v0, "<primitive-id> [<scale>])..."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3537
    const-string v0, "    Vibrates with a composed effect."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3538
    const-string v0, "    If -w is provided, the next primitive will be played after the "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3539
    const-string v0, "    specified wait time in milliseconds."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3540
    const-string v0, "    If -o is provided, the next primitive will be played at the "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3541
    const-string v0, "    specified start offset time in milliseconds."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3542
    const-string v0, "    If -s is provided, the next primitive will be played with the"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3543
    const-string v0, "    specified amplitude scale, in a scale of [0,1]."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3544
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3545
    const-string v0, "Common Options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3546
    const-string v0, "  -f"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3547
    const-string v0, "    Force. Ignore Do Not Disturb setting."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3548
    const-string v0, "  -B"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3549
    const-string v0, "    Run in the background; without this option the shell cmd will"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3550
    const-string v0, "    block until the vibration has completed."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3551
    const-string v0, "  -S"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3552
    const-string v0, "    Run vibration in a vendor session. Only vibration commands will"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3553
    const-string v0, "    apply this option. The -B option will be ignored."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3554
    const-string v0, "  -u <usage>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3555
    const-string v0, "    Specify the usage for the haptic feedback or vibration."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3556
    const-string v0, "  -d <description>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3557
    const-string v0, "    Add description to the vibration."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3558
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3559
    const-string v0, "Notes"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3560
    const-string v0, "    Vibrations triggered by these commands will be ignored when"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3561
    const-string v0, "    device is on DND (Do Not Disturb) mode; notification strength"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3562
    const-string v0, "    user settings will be applied for scale."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3563
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1b3
    .catchall {:try_start_a .. :try_end_1b3} :catchall_1b7

    .line 3564
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    return-void

    :catchall_1b7
    move-exception v0

    if-eqz p0, :cond_1c2

    .line 3474
    :try_start_1ba
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_1bd
    .catchall {:try_start_1ba .. :try_end_1bd} :catchall_1be

    goto :goto_1c2

    :catchall_1be
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1c2
    :goto_1c2
    throw v0
.end method

.method public final parseXml(Ljava/lang/String;)Landroid/os/CombinedVibration;
    .registers 5

    .line 3419
    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 3420
    invoke-static {v0}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseDocument(Ljava/io/Reader;)Landroid/os/vibrator/persistence/ParsedVibration;

    move-result-object v0

    .line 3421
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mgetCombinedVibratorInfo(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/os/VibratorInfo;

    move-result-object p0

    if-eqz p0, :cond_35

    .line 3425
    invoke-virtual {v0, p0}, Landroid/os/vibrator/persistence/ParsedVibration;->resolve(Landroid/os/VibratorInfo;)Landroid/os/VibrationEffect;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 3429
    invoke-static {p0}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object p0

    return-object p0

    :catch_1c
    move-exception p0

    goto :goto_3d

    .line 3427
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parsed XML cannot be resolved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3423
    :cond_35
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No vibrator info available to parse XML"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3d} :catch_1c

    .line 3431
    :goto_3d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing XML: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final runCancel()I
    .registers 2

    .line 3084
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p0}, Lcom/android/server/vibrator/VibratorManagerService;->cancelVibrate(ILandroid/os/IBinder;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runHapticFeedback()I
    .registers 15

    .line 3089
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;I)V

    .line 3090
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Expected haptic feedback constant id"

    invoke-static {v2, v3}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 3092
    iget-boolean v2, v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->isInBackground:Z

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    :goto_16
    move-object v11, v2

    goto :goto_1b

    .line 3093
    :cond_18
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->mShellCallbacksToken:Landroid/os/IBinder;

    goto :goto_16

    .line 3094
    :goto_1b
    iget-boolean v2, v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->shouldForce:Z

    if-eqz v2, :cond_22

    const/4 v2, 0x2

    move v12, v2

    goto :goto_23

    :cond_22
    move v12, v1

    .line 3096
    :goto_23
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    iget v9, v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->usage:I

    iget-object v10, v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->description:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v6, 0x0

    const-string v7, "com.android.shell"

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/vibrator/VibratorManagerService;->performHapticFeedbackInternal(IILjava/lang/String;IILjava/lang/String;Landroid/os/IBinder;II)Lcom/android/server/vibrator/HalVibration;

    move-result-object v2

    .line 3099
    invoke-virtual {p0, v2, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->maybeWaitOnVibration(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;)V

    return v1
.end method

.method public final runListVibrators()I
    .registers 6

    .line 2948
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2949
    :try_start_4
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibratorManager(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/HalVibratorManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/vibrator/HalVibratorManager;->getVibratorIds()[I

    move-result-object p0

    .line 2950
    array-length v1, p0

    const/4 v2, 0x0

    if-nez v1, :cond_1a

    .line 2951
    const-string p0, "No vibrator found"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_26

    :catchall_18
    move-exception p0

    goto :goto_2f

    .line 2953
    :cond_1a
    array-length v1, p0

    move v3, v2

    :goto_1c
    if-ge v3, v1, :cond_26

    aget v4, p0, v3

    .line 2954
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 2957
    :cond_26
    :goto_26
    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_18

    .line 2959
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return v2

    :goto_2f
    if-eqz v0, :cond_39

    .line 2948
    :try_start_31
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_39

    :catchall_35
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_39
    :goto_39
    throw p0
.end method

.method public final runMono()I
    .registers 3

    .line 3056
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->nextEffect()Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-static {v1}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runVibrate(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;Landroid/os/CombinedVibration;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runStereo()I
    .registers 5

    .line 3061
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V

    .line 3063
    invoke-static {}, Landroid/os/CombinedVibration;->startParallel()Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v1

    .line 3064
    :goto_9
    const-string v2, "-v"

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 3065
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Expected vibrator id after -v"

    invoke-static {v2, v3}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3066
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->nextEffect()Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/CombinedVibration$ParallelCombination;->addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;

    goto :goto_9

    .line 3068
    :cond_27
    invoke-virtual {v1}, Landroid/os/CombinedVibration$ParallelCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runVibrate(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;Landroid/os/CombinedVibration;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runVibrate(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;Landroid/os/CombinedVibration;)V
    .registers 15

    .line 2966
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->createVibrationAttributes(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;)Landroid/os/VibrationAttributes;

    move-result-object v5

    .line 2967
    iget-boolean v0, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->isInSession:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->isInBackground:Z

    if-eqz v0, :cond_15

    .line 2968
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Session vibrations cannot run in background, running in foreground..."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2974
    :cond_15
    iget-boolean v0, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->isInSession:Z

    if-nez v0, :cond_21

    iget-boolean v0, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->isInBackground:Z

    if-eqz v0, :cond_21

    .line 2975
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    :goto_1f
    move-object v7, v0

    goto :goto_24

    .line 2976
    :cond_21
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->mShellCallbacksToken:Landroid/os/IBinder;

    goto :goto_1f

    .line 2977
    :goto_24
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2980
    const-string v0, "com.android.shell"

    invoke-static {v1, v0}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2981
    iget-boolean v0, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->isInSession:Z

    if-eqz v0, :cond_5c

    .line 2982
    new-instance v6, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$ShellVibrationSessionCallback;

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/os/Handler;

    move-result-object v0

    .line 2983
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v8

    iget-object v11, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->description:Ljava/lang/String;

    move-object v10, p2

    move-object v9, v7

    move-object v7, v0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$ShellVibrationSessionCallback;-><init>(Landroid/os/Handler;Ljava/io/PrintWriter;Landroid/os/IBinder;Landroid/os/CombinedVibration;Ljava/lang/String;)V

    .line 2984
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibratorManager(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/HalVibratorManager;

    move-result-object p2

    .line 2986
    invoke-interface {p2}, Lcom/android/server/vibrator/HalVibratorManager;->getVibratorIds()[I

    move-result-object v4

    move-object v7, v6

    iget-object v6, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->description:Ljava/lang/String;

    const/4 v2, 0x0

    .line 2984
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/vibrator/VibratorManagerService;->startVendorVibrationSessionInternal(IILjava/lang/String;[ILandroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/vibrator/IVibrationSessionCallback;)Lcom/android/server/vibrator/VendorVibrationSession;

    move-object v6, v7

    .line 2987
    invoke-virtual {p0, v6}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->waitOnSession(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$ShellVibrationSessionCallback;)V

    return-void

    :cond_5c
    move-object v4, p2

    .line 2989
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    const/4 v2, 0x0

    iget-object v6, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->description:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/vibrator/VibratorManagerService;->vibrateWithPermissionCheck(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;

    move-result-object p2

    .line 2992
    invoke-virtual {p0, p2, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->maybeWaitOnVibration(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;)V

    return-void
.end method

.method public final runXml()I
    .registers 3

    .line 3073
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V

    .line 3074
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 3075
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseXml(Ljava/lang/String;)Landroid/os/CombinedVibration;

    move-result-object v1

    .line 3076
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runVibrate(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;Landroid/os/CombinedVibration;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final waitOnSession(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$ShellVibrationSessionCallback;)V
    .registers 2

    .line 3451
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$ShellVibrationSessionCallback;->waitForEnd()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
