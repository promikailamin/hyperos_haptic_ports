.class final Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "VibratorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VibratorManagerShellCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;
    }
.end annotation


# static fields
.field public static final SHELL_PACKAGE_NAME:Ljava/lang/String; = "com.android.shell"


# instance fields
.field private final mShellCallbacksToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/IBinder;)V
    .registers 3
    .param p2, "shellCallbacksToken"    # Landroid/os/IBinder;

    .line 1732
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 1733
    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->mShellCallbacksToken:Landroid/os/IBinder;

    .line 1734
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/IBinder;Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/IBinder;)V

    return-void
.end method

.method private addOneShotToComposition(Landroid/os/VibrationEffect$Composition;)V
    .registers 10
    .param p1, "composition"    # Landroid/os/VibrationEffect$Composition;

    .line 1855
    const/4 v0, 0x0

    .line 1856
    .local v0, "hasAmplitude":Z
    const/4 v1, 0x0

    .line 1858
    .local v1, "delay":I
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1860
    :cond_5
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "nextOption":Ljava/lang/String;
    if-eqz v2, :cond_27

    .line 1861
    const-string v2, "-a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1862
    const/4 v0, 0x1

    goto :goto_5

    .line 1863
    :cond_16
    const-string v2, "-w"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1864
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_5

    .line 1868
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1869
    .local v4, "duration":J
    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_3b

    .line 1870
    :cond_3a
    const/4 v2, -0x1

    :goto_3b
    nop

    .line 1871
    .local v2, "amplitude":I
    int-to-long v6, v1

    invoke-static {v6, v7}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/VibrationEffect$Composition;->addOffDuration(Ljava/time/Duration;)Landroid/os/VibrationEffect$Composition;

    .line 1872
    invoke-static {v4, v5, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    .line 1873
    return-void
.end method

.method private addPrebakedToComposition(Landroid/os/VibrationEffect$Composition;)V
    .registers 8
    .param p1, "composition"    # Landroid/os/VibrationEffect$Composition;

    .line 1969
    const/4 v0, 0x0

    .line 1970
    .local v0, "shouldFallback":Z
    const/4 v1, 0x0

    .line 1972
    .local v1, "delay":I
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1974
    :cond_5
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "nextOption":Ljava/lang/String;
    if-eqz v2, :cond_27

    .line 1975
    const-string v2, "-b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1976
    const/4 v0, 0x1

    goto :goto_5

    .line 1977
    :cond_16
    const-string v2, "-w"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1978
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_5

    .line 1982
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1983
    .local v2, "effectId":I
    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/VibrationEffect$Composition;->addOffDuration(Ljava/time/Duration;)Landroid/os/VibrationEffect$Composition;

    .line 1984
    invoke-static {v2, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    .line 1985
    return-void
.end method

.method private addPrimitivesToComposition(Landroid/os/VibrationEffect$Composition;)V
    .registers 6
    .param p1, "composition"    # Landroid/os/VibrationEffect$Composition;

    .line 1988
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1990
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "nextArg":Ljava/lang/String;
    if-eqz v0, :cond_31

    .line 1991
    const/4 v0, 0x0

    .line 1992
    .local v0, "delay":I
    const-string v2, "-w"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1993
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1994
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1995
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v1

    .line 1998
    :cond_22
    :try_start_22
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v3, v0}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    .line 1999
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_2e} :catch_30
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_2e} :catch_30

    .line 2003
    nop

    .line 2004
    .end local v0    # "delay":I
    goto :goto_3

    .line 2000
    .restart local v0    # "delay":I
    :catch_30
    move-exception v2

    .line 2005
    .end local v0    # "delay":I
    :cond_31
    return-void
.end method

.method private addWaveformToComposition(Landroid/os/VibrationEffect$Composition;)V
    .registers 20
    .param p1, "composition"    # Landroid/os/VibrationEffect$Composition;

    .line 1876
    move-object/from16 v1, p1

    const/4 v0, 0x0

    .line 1877
    .local v0, "hasAmplitudes":Z
    const/4 v2, 0x0

    .line 1878
    .local v2, "hasFrequencies":Z
    const/4 v3, 0x0

    .line 1879
    .local v3, "isContinuous":Z
    const/4 v4, -0x1

    .line 1880
    .local v4, "repeat":I
    const/4 v5, 0x0

    .line 1882
    .local v5, "delay":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    .line 1884
    .end local v0    # "hasAmplitudes":Z
    .local v2, "hasAmplitudes":Z
    .local v3, "hasFrequencies":Z
    .local v4, "isContinuous":Z
    .local v5, "repeat":I
    .local v6, "delay":I
    :cond_f
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .local v7, "nextOption":Ljava/lang/String;
    if-eqz v0, :cond_56

    .line 1885
    const-string v0, "-a"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1886
    const/4 v2, 0x1

    goto :goto_f

    .line 1887
    :cond_20
    const-string v0, "-r"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1888
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_f

    .line 1889
    :cond_31
    const-string v0, "-w"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1890
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_f

    .line 1891
    :cond_42
    const-string v0, "-f"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1892
    const/4 v3, 0x1

    goto :goto_f

    .line 1893
    :cond_4c
    const-string v0, "-c"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1894
    const/4 v4, 0x1

    goto :goto_f

    .line 1897
    :cond_56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 1898
    .local v8, "durations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 1899
    .local v9, "amplitudes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 1901
    .local v10, "frequencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v0, 0x0

    move v11, v0

    .line 1903
    .local v11, "nextAmplitude":F
    :cond_6a
    :goto_6a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .local v12, "nextArg":Ljava/lang/String;
    if-eqz v0, :cond_b4

    .line 1905
    :try_start_71
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1906
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;
    :try_end_7f
    .catch Ljava/lang/NumberFormatException; {:try_start_71 .. :try_end_7f} :catch_b3

    .line 1910
    nop

    .line 1911
    if-eqz v2, :cond_96

    .line 1912
    nop

    .line 1913
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v13, 0x437f0000    # 255.0f

    div-float/2addr v0, v13

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1912
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a1

    .line 1915
    :cond_96
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1916
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v11

    move v11, v0

    .line 1918
    :goto_a1
    if-eqz v3, :cond_6a

    .line 1919
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    .line 1907
    :catch_b3
    move-exception v0

    .line 1924
    :cond_b4
    int-to-long v13, v6

    invoke-static {v13, v14}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/VibrationEffect$Composition;->addOffDuration(Ljava/time/Duration;)Landroid/os/VibrationEffect$Composition;

    .line 1926
    invoke-static {}, Landroid/os/VibrationEffect;->startWaveform()Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object v0

    .line 1927
    .local v0, "waveform":Landroid/os/VibrationEffect$WaveformBuilder;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_c1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_17e

    .line 1928
    if-eqz v4, :cond_d9

    .line 1929
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-long v14, v14

    invoke-static {v14, v15}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v14

    goto :goto_db

    .line 1930
    :cond_d9
    sget-object v14, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    :goto_db
    nop

    .line 1931
    .local v14, "transitionDuration":Ljava/time/Duration;
    if-eqz v4, :cond_e5

    .line 1932
    sget-object v15, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    move/from16 v17, v6

    move-object/from16 v16, v7

    goto :goto_f8

    .line 1933
    :cond_e5
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move/from16 v17, v6

    move-object/from16 v16, v7

    .end local v6    # "delay":I
    .end local v7    # "nextOption":Ljava/lang/String;
    .local v16, "nextOption":Ljava/lang/String;
    .local v17, "delay":I
    int-to-long v6, v15

    invoke-static {v6, v7}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v15

    :goto_f8
    move-object v6, v15

    .line 1935
    .local v6, "sustainDuration":Ljava/time/Duration;
    if-eqz v3, :cond_11b

    .line 1936
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {v7}, Landroid/os/VibrationEffect$VibrationParameter;->targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v7

    .line 1937
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    invoke-static {v15}, Landroid/os/VibrationEffect$VibrationParameter;->targetFrequency(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v15

    .line 1936
    invoke-virtual {v0, v14, v7, v15}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    goto :goto_12c

    .line 1939
    :cond_11b
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {v7}, Landroid/os/VibrationEffect$VibrationParameter;->targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v7

    invoke-virtual {v0, v14, v7}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    .line 1941
    :goto_12c
    invoke-virtual {v6}, Ljava/time/Duration;->isZero()Z

    move-result v7

    if-nez v7, :cond_135

    .line 1944
    invoke-virtual {v0, v6}, Landroid/os/VibrationEffect$WaveformBuilder;->addSustain(Ljava/time/Duration;)Landroid/os/VibrationEffect$WaveformBuilder;

    .line 1947
    :cond_135
    if-lez v13, :cond_176

    if-ne v13, v5, :cond_176

    .line 1949
    invoke-virtual {v0}, Landroid/os/VibrationEffect$WaveformBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    .line 1951
    if-eqz v3, :cond_163

    .line 1952
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {v7}, Landroid/os/VibrationEffect$VibrationParameter;->targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v7

    .line 1953
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    invoke-static {v15}, Landroid/os/VibrationEffect$VibrationParameter;->targetFrequency(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v15

    .line 1952
    invoke-static {v7, v15}, Landroid/os/VibrationEffect;->startWaveform(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object v0

    goto :goto_176

    .line 1955
    :cond_163
    nop

    .line 1956
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {v7}, Landroid/os/VibrationEffect$VibrationParameter;->targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v7

    .line 1955
    invoke-static {v7}, Landroid/os/VibrationEffect;->startWaveform(Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object v0

    .line 1927
    .end local v6    # "sustainDuration":Ljava/time/Duration;
    .end local v14    # "transitionDuration":Ljava/time/Duration;
    :cond_176
    :goto_176
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v7, v16

    move/from16 v6, v17

    goto/16 :goto_c1

    .end local v16    # "nextOption":Ljava/lang/String;
    .end local v17    # "delay":I
    .local v6, "delay":I
    .restart local v7    # "nextOption":Ljava/lang/String;
    :cond_17e
    move/from16 v17, v6

    move-object/from16 v16, v7

    .line 1960
    .end local v6    # "delay":I
    .end local v7    # "nextOption":Ljava/lang/String;
    .end local v13    # "i":I
    .restart local v16    # "nextOption":Ljava/lang/String;
    .restart local v17    # "delay":I
    if-gez v5, :cond_18c

    .line 1961
    invoke-virtual {v0}, Landroid/os/VibrationEffect$WaveformBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    goto :goto_193

    .line 1964
    :cond_18c
    invoke-virtual {v0}, Landroid/os/VibrationEffect$WaveformBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/os/VibrationEffect$Composition;->repeatEffectIndefinitely(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    .line 1966
    :goto_193
    return-void
.end method

.method private createVibrationAttributes(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;)Landroid/os/VibrationAttributes;
    .registers 5
    .param p1, "commonOptions"    # Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    .line 2009
    iget-boolean v0, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->force:Z

    .line 2010
    .local v0, "flags":I
    new-instance v1, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v1}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    .line 2011
    invoke-virtual {v1, v0}, Landroid/os/VibrationAttributes$Builder;->setFlags(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v1

    const/16 v2, 0x12

    .line 2013
    invoke-virtual {v1, v2}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v1

    .line 2014
    invoke-virtual {v1}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v1

    .line 2010
    return-object v1
.end method

.method private nextEffect()Landroid/os/VibrationEffect;
    .registers 4

    .line 1833
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    .line 1836
    .local v0, "composition":Landroid/os/VibrationEffect$Composition;
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "nextArg":Ljava/lang/String;
    if-eqz v1, :cond_3f

    .line 1837
    const-string/jumbo v1, "oneshot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1838
    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->addOneShotToComposition(Landroid/os/VibrationEffect$Composition;)V

    goto :goto_4

    .line 1839
    :cond_18
    const-string/jumbo v1, "waveform"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1840
    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->addWaveformToComposition(Landroid/os/VibrationEffect$Composition;)V

    goto :goto_4

    .line 1841
    :cond_25
    const-string/jumbo v1, "prebaked"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1842
    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->addPrebakedToComposition(Landroid/os/VibrationEffect$Composition;)V

    goto :goto_4

    .line 1843
    :cond_32
    const-string/jumbo v1, "primitives"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1844
    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->addPrimitivesToComposition(Landroid/os/VibrationEffect$Composition;)V

    goto :goto_4

    .line 1851
    :cond_3f
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1
.end method

.method private runCancel()I
    .registers 3

    .line 1828
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v0}, Lcom/android/server/vibrator/VibratorManagerService;->cancelVibrate(ILandroid/os/IBinder;)V

    .line 1829
    const/4 v0, 0x0

    return v0
.end method

.method private runListVibrators()I
    .registers 7

    .line 1762
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1763
    .local v0, "pw":Ljava/io/PrintWriter;
    :try_start_4
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibratorIds(Lcom/android/server/vibrator/VibratorManagerService;)[I

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 1764
    const-string v1, "No vibrator found"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_26

    .line 1766
    :cond_14
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibratorIds(Lcom/android/server/vibrator/VibratorManagerService;)[I

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_1c
    if-ge v4, v3, :cond_26

    aget v5, v1, v4

    .line 1767
    .local v5, "id":I
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1766
    .end local v5    # "id":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 1770
    :cond_26
    :goto_26
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_32

    .line 1771
    nop

    .line 1772
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 1771
    :cond_31
    return v2

    .line 1762
    :catchall_32
    move-exception v1

    if-eqz v0, :cond_3d

    :try_start_35
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_3d

    :catchall_39
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3d
    :goto_3d
    throw v1
.end method

.method private runMono()I
    .registers 3

    .line 1796
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V

    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->nextEffect()Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-static {v1}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runVibrate(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;Landroid/os/CombinedVibration;)V

    .line 1797
    const/4 v0, 0x0

    return v0
.end method

.method private runSequential()I
    .registers 5

    .line 1813
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V

    .line 1815
    .local v0, "commonOptions":Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;
    invoke-static {}, Landroid/os/CombinedVibration;->startSequential()Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v1

    .line 1816
    .local v1, "combination":Landroid/os/CombinedVibration$SequentialCombination;
    :goto_9
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-v"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1817
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1818
    .local v2, "vibratorId":I
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->nextEffect()Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$SequentialCombination;

    .line 1819
    .end local v2    # "vibratorId":I
    goto :goto_9

    .line 1820
    :cond_25
    invoke-virtual {v1}, Landroid/os/CombinedVibration$SequentialCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runVibrate(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;Landroid/os/CombinedVibration;)V

    .line 1821
    const/4 v2, 0x0

    return v2
.end method

.method private runStereo()I
    .registers 5

    .line 1801
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V

    .line 1803
    .local v0, "commonOptions":Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;
    invoke-static {}, Landroid/os/CombinedVibration;->startParallel()Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v1

    .line 1804
    .local v1, "combination":Landroid/os/CombinedVibration$ParallelCombination;
    :goto_9
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-v"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1805
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1806
    .local v2, "vibratorId":I
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->nextEffect()Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/CombinedVibration$ParallelCombination;->addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;

    .line 1807
    .end local v2    # "vibratorId":I
    goto :goto_9

    .line 1808
    :cond_25
    invoke-virtual {v1}, Landroid/os/CombinedVibration$ParallelCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runVibrate(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;Landroid/os/CombinedVibration;)V

    .line 1809
    const/4 v2, 0x0

    return v2
.end method

.method private runVibrate(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;Landroid/os/CombinedVibration;)V
    .registers 11
    .param p1, "commonOptions"    # Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;
    .param p2, "combined"    # Landroid/os/CombinedVibration;

    .line 1779
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->createVibrationAttributes(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;)Landroid/os/VibrationAttributes;

    move-result-object v7

    .line 1783
    .local v7, "attrs":Landroid/os/VibrationAttributes;
    iget-boolean v0, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->background:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    move-object v6, v0

    goto :goto_f

    .line 1784
    :cond_c
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->mShellCallbacksToken:Landroid/os/IBinder;

    move-object v6, v0

    :goto_f
    nop

    .line 1785
    .local v6, "deathBinder":Landroid/os/IBinder;
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v5, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->description:Ljava/lang/String;

    const-string v2, "com.android.shell"

    move-object v3, p2

    move-object v4, v7

    invoke-static/range {v0 .. v6}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mvibrateInternal(Lcom/android/server/vibrator/VibratorManagerService;ILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/Vibration;

    move-result-object v0

    .line 1787
    .local v0, "vib":Lcom/android/server/vibrator/Vibration;
    if-eqz v0, :cond_2b

    iget-boolean v1, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->background:Z

    if-nez v1, :cond_2b

    .line 1789
    :try_start_26
    invoke-virtual {v0}, Lcom/android/server/vibrator/Vibration;->waitForEnd()V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_29} :catch_2a

    .line 1791
    goto :goto_2b

    .line 1790
    :catch_2a
    move-exception v1

    .line 1793
    :cond_2b
    :goto_2b
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 1738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCommand "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1740
    :try_start_1a
    const-string v0, "list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1741
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runListVibrators()I

    move-result v0
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_74

    .line 1757
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1741
    return v0

    .line 1743
    :cond_2a
    :try_start_2a
    const-string/jumbo v0, "synced"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1744
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runMono()I

    move-result v0
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_74

    .line 1757
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1744
    return v0

    .line 1746
    :cond_3b
    :try_start_3b
    const-string v0, "combined"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1747
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runStereo()I

    move-result v0
    :try_end_47
    .catchall {:try_start_3b .. :try_end_47} :catchall_74

    .line 1757
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1747
    return v0

    .line 1749
    :cond_4b
    :try_start_4b
    const-string/jumbo v0, "sequential"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1750
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runSequential()I

    move-result v0
    :try_end_58
    .catchall {:try_start_4b .. :try_end_58} :catchall_74

    .line 1757
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1750
    return v0

    .line 1752
    :cond_5c
    :try_start_5c
    const-string v0, "cancel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1753
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runCancel()I

    move-result v0
    :try_end_68
    .catchall {:try_start_5c .. :try_end_68} :catchall_74

    .line 1757
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1753
    return v0

    .line 1755
    :cond_6c
    :try_start_6c
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_74

    .line 1757
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1755
    return v0

    .line 1757
    :catchall_74
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1758
    throw v0
.end method

.method public onHelp()V
    .registers 8

    .line 2019
    const-string v0, "    (Do Not Disturb) mode; touch feedback strength user setting "

    const-string v1, "    will be used to scale amplitude."

    const-string v2, "    wait time in milliseconds."

    const-string v3, "    If -w is provided, the effect will be played after the specified"

    const-string v4, ""

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    .line 2020
    .local v5, "pw":Ljava/io/PrintWriter;
    :try_start_e
    const-string v6, "Vibrator Manager commands:"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2021
    const-string v6, "  help"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2022
    const-string v6, "    Prints this help text."

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2023
    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2024
    const-string v6, "  list"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2025
    const-string v6, "    Prints the id of device vibrators. This does not include any "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2026
    const-string v6, "    connected input device."

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2027
    const-string v6, "  synced [options] <effect>..."

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2028
    const-string v6, "    Vibrates effect on all vibrators in sync."

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2029
    const-string v6, "  combined [options] (-v <vibrator-id> <effect>...)..."

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2030
    const-string v6, "    Vibrates different effects on each vibrator in sync."

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2031
    const-string v6, "  sequential [options] (-v <vibrator-id> <effect>...)..."

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2032
    const-string v6, "    Vibrates different effects on each vibrator in sequence."

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2033
    const-string v6, "  cancel"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2034
    const-string v6, "    Cancels any active vibration"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2035
    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2036
    const-string v6, "Effect commands:"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2037
    const-string v6, "  oneshot [-w delay] [-a] <duration> [<amplitude>]"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2038
    const-string v6, "    Vibrates for duration milliseconds; ignored when device is on "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2039
    const-string v6, "    DND (Do Not Disturb) mode; touch feedback strength user setting "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2040
    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2041
    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2042
    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2043
    const-string v6, "    If -a is provided, the command accepts a second argument for "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2044
    const-string v6, "    amplitude, in a scale of 1-255."

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2045
    const-string v6, "  waveform [-w delay] [-r index] [-a] [-f] [-c] "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2046
    const-string v6, "(<duration> [<amplitude>] [<frequency>])..."

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2047
    const-string v6, "    Vibrates for durations and amplitudes in list; ignored when "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2048
    const-string v6, "    device is on DND (Do Not Disturb) mode; touch feedback strength "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2049
    const-string v6, "    user setting will be used to scale amplitude."

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2050
    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2051
    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2052
    const-string v6, "    If -r is provided, the waveform loops back to the specified"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2053
    const-string v6, "    index (e.g. 0 loops from the beginning)"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2054
    const-string v6, "    If -a is provided, the command expects amplitude to follow each"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2055
    const-string v6, "    duration; otherwise, it accepts durations only and alternates"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2056
    const-string v6, "    off/on"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2057
    const-string v6, "    If -f is provided, the command expects frequency to follow each"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2058
    const-string v6, "    amplitude or duration; otherwise, it uses resonant frequency"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2059
    const-string v6, "    If -c is provided, the waveform is continuous and will ramp"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2060
    const-string v6, "    between values; otherwise each entry is a fixed step."

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2061
    const-string v6, "    Duration is in milliseconds; amplitude is a scale of 1-255;"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2062
    const-string v6, "    frequency is an absolute value in hertz;"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2063
    const-string v6, "  prebaked [-w delay] [-b] <effect-id>"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2064
    const-string v6, "    Vibrates with prebaked effect; ignored when device is on DND "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2065
    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2066
    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2067
    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2068
    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2069
    const-string v1, "    If -b is provided, the prebaked fallback effect will be played if"

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2070
    const-string v1, "    the device doesn\'t support the given effect-id."

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2071
    const-string v1, "  primitives ([-w delay] <primitive-id>)..."

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2072
    const-string v1, "    Vibrates with a composed effect; ignored when device is on DND "

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2073
    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2074
    const-string v0, "    will be used to scale primitive intensities."

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2075
    const-string v0, "    If -w is provided, the next primitive will be played after the "

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2076
    const-string v0, "    specified wait time in milliseconds."

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2077
    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2078
    const-string v0, "Common Options:"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2079
    const-string v0, "  -f"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2080
    const-string v0, "    Force. Ignore Do Not Disturb setting."

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2081
    const-string v0, "  -B"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2082
    const-string v0, "    Run in the background; without this option the shell cmd will"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2083
    const-string v0, "    block until the vibration has completed."

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2084
    const-string v0, "  -d <description>"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2085
    const-string v0, "    Add description to the vibration."

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2086
    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_141
    .catchall {:try_start_e .. :try_end_141} :catchall_147

    .line 2087
    if-eqz v5, :cond_146

    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 2088
    .end local v5    # "pw":Ljava/io/PrintWriter;
    :cond_146
    return-void

    .line 2019
    .restart local v5    # "pw":Ljava/io/PrintWriter;
    :catchall_147
    move-exception v0

    if-eqz v5, :cond_152

    :try_start_14a
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V
    :try_end_14d
    .catchall {:try_start_14a .. :try_end_14d} :catchall_14e

    goto :goto_152

    :catchall_14e
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_152
    :goto_152
    throw v0
.end method
