.class public Lcom/android/server/power/thermal/ThermalManagerService$ThermalShellCommand;
.super Landroid/os/ShellCommand;
.source "ThermalManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/thermal/ThermalManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/thermal/ThermalManagerService;)V
    .registers 2

    .line 935
    iput-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 5

    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_6

    .line 938
    :cond_4
    const-string v0, ""

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_5c

    goto :goto_3f

    :sswitch_12
    const-string/jumbo v1, "override-status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_3f

    :cond_1c
    const/4 v2, 0x3

    goto :goto_3f

    :sswitch_1e
    const-string/jumbo v1, "reset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_3f

    :cond_28
    const/4 v2, 0x2

    goto :goto_3f

    :sswitch_2a
    const-string v1, "inject-temperature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto :goto_3f

    :cond_33
    const/4 v2, 0x1

    goto :goto_3f

    :sswitch_35
    const-string v1, "headroom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x0

    :goto_3f
    packed-switch v2, :pswitch_data_6e

    .line 948
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 942
    :pswitch_47
    invoke-virtual {p0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalShellCommand;->runOverrideStatus()I

    move-result p0

    return p0

    .line 944
    :pswitch_4c
    invoke-virtual {p0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalShellCommand;->runReset()I

    move-result p0

    return p0

    .line 940
    :pswitch_51
    invoke-virtual {p0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalShellCommand;->runInjectTemperature()I

    move-result p0

    return p0

    .line 946
    :pswitch_56
    invoke-virtual {p0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalShellCommand;->runHeadroom()I

    move-result p0

    return p0

    nop

    :sswitch_data_5c
    .sparse-switch
        -0x4273a145 -> :sswitch_35
        -0x3ab50c8 -> :sswitch_2a
        0x6761d4f -> :sswitch_1e
        0x16fa8113 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_56
        :pswitch_51
        :pswitch_4c
        :pswitch_47
    .end packed-switch
.end method

.method public onHelp()V
    .registers 2

    .line 1141
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 1142
    const-string v0, "Thermal service (thermalservice) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1143
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1144
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1145
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1146
    const-string v0, "  inject-temperature TYPE STATUS NAME [VALUE]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1147
    const-string v0, "    injects a new temperature sample for the specified device."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1148
    const-string v0, "    type and status strings follow the names in android.os.Temperature."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1149
    const-string v0, "  override-status STATUS"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1150
    const-string v0, "    sets and locks the thermal status of the device to STATUS."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1151
    const-string v0, "    status code is defined in android.os.Temperature."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1152
    const-string v0, "  reset"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1153
    const-string v0, "    unlocks the thermal status of the device."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1154
    const-string v0, "  headroom FORECAST_SECONDS"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1155
    const-string v0, "    gets the thermal headroom forecast in specified seconds, from [0,60]."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1157
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final runHeadroom()I
    .registers 7

    .line 1110
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1112
    :try_start_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_26

    const/4 v3, -0x1

    .line 1115
    :try_start_9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_11} :catch_61
    .catchall {:try_start_9 .. :try_end_11} :catchall_26

    .line 1120
    :try_start_11
    iget-object v5, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {v5}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmHalReady(Lcom/android/server/power/thermal/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_28

    .line 1121
    const-string p0, "Error: thermal HAL is not ready"

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_26

    .line 1135
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_26
    move-exception p0

    goto :goto_7a

    :cond_28
    if-ltz v4, :cond_58

    const/16 v5, 0x3c

    if-le v4, v5, :cond_2f

    goto :goto_58

    .line 1131
    :cond_2f
    :try_start_2f
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;

    invoke-virtual {p0, v4}, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->getForecast(I)F

    move-result p0

    .line 1132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Headroom in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " seconds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_2f .. :try_end_53} :catchall_26

    .line 1135
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    .line 1126
    :cond_58
    :goto_58
    :try_start_58
    const-string p0, "Error: forecast second input should be in range [0,60]"

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_58 .. :try_end_5d} :catchall_26

    .line 1135
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catch_61
    move-exception p0

    .line 1117
    :try_start_62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_62 .. :try_end_76} :catchall_26

    .line 1135
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :goto_7a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1136
    throw p0
.end method

.method public final runInjectTemperature()I
    .registers 16

    .line 967
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 969
    :try_start_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 971
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 972
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, -0x1

    sparse-switch v5, :sswitch_data_1d4

    goto/16 :goto_1b7

    :sswitch_21
    const-string v5, "CAMERA"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b7

    const/16 v3, 0xf

    goto/16 :goto_10d

    :catchall_2d
    move-exception p0

    goto/16 :goto_1cf

    :sswitch_30
    const-string v5, "BCL_CURRENT"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b7

    const/4 v3, 0x7

    goto/16 :goto_10d

    :sswitch_3b
    const-string v5, "POWER_AMPLIFIER"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b7

    move v3, v10

    goto/16 :goto_10d

    :sswitch_46
    const-string v5, "BCL_VOLTAGE"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b7

    move v3, v9

    goto/16 :goto_10d

    :sswitch_51
    const-string v5, "USB_PORT"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b7

    move v3, v8

    goto/16 :goto_10d

    :sswitch_5c
    const-string v5, "UNKNOWN"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b7

    move v3, v13

    goto/16 :goto_10d

    :sswitch_67
    const-string v5, "BATTERY"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b7

    move v3, v7

    goto/16 :goto_10d

    :sswitch_72
    const-string v5, "BCL_PERCENTAGE"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b7

    const/16 v3, 0x8

    goto/16 :goto_10d

    :sswitch_7e
    const-string v5, "MODEM"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b7

    const/16 v3, 0xc

    goto/16 :goto_10d

    :sswitch_8a
    const-string v5, "WIFI"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b7

    const/16 v3, 0xe

    goto/16 :goto_10d

    :sswitch_96
    const-string v5, "SKIN"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b7

    move v3, v6

    goto/16 :goto_10d

    :sswitch_a1
    const-string v5, "POGO"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b7

    const/16 v3, 0x13

    goto/16 :goto_10d

    :sswitch_ad
    const-string v5, "TPU"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b7

    const/16 v3, 0xa

    goto :goto_10d

    :sswitch_b8
    const-string v5, "SOC"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b7

    const/16 v3, 0xd

    goto :goto_10d

    :sswitch_c3
    const-string v5, "NPU"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b7

    const/16 v3, 0x9

    goto :goto_10d

    :sswitch_ce
    const-string v5, "GPU"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b7

    move v3, v12

    goto :goto_10d

    :sswitch_d8
    const-string v5, "CPU"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b7

    move v3, v11

    goto :goto_10d

    :sswitch_e2
    const-string v5, "AMBIENT"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b7

    const/16 v3, 0x12

    goto :goto_10d

    :sswitch_ed
    const-string v5, "FLASHLIGHT"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b7

    const/16 v3, 0x10

    goto :goto_10d

    :sswitch_f8
    const-string v5, "SPEAKER"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b7

    const/16 v3, 0x11

    goto :goto_10d

    :sswitch_103
    const-string v5, "DISPLAY"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b7

    const/16 v3, 0xb

    .line 1041
    :goto_10d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 1042
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_22a

    goto/16 :goto_19f

    :sswitch_11e
    const-string v6, "SHUTDOWN"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19f

    move v6, v9

    goto :goto_162

    :sswitch_128
    const-string v6, "MODERATE"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19f

    move v6, v7

    goto :goto_162

    :sswitch_132
    const-string v6, "EMERGENCY"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19f

    move v6, v10

    goto :goto_162

    :sswitch_13c
    const-string v6, "LIGHT"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19f

    move v6, v12

    goto :goto_162

    :sswitch_146
    const-string v6, "NONE"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19f

    move v6, v11

    goto :goto_162

    :sswitch_150
    const-string v6, "CRITICAL"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19f

    move v6, v8

    goto :goto_162

    :sswitch_15a
    const-string v7, "SEVERE"

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19f

    .line 1068
    :goto_162
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4
    :try_end_166
    .catchall {:try_start_4 .. :try_end_166} :catchall_2d

    .line 1071
    :try_start_166
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_173

    .line 1072
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_170
    .catch Ljava/lang/RuntimeException; {:try_start_166 .. :try_end_170} :catch_171
    .catchall {:try_start_166 .. :try_end_170} :catchall_2d

    goto :goto_175

    :catch_171
    move-exception p0

    goto :goto_183

    :cond_173
    const/high16 v2, 0x41e00000    # 28.0f

    .line 1077
    :goto_175
    :try_start_175
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    new-instance v5, Landroid/os/Temperature;

    invoke-direct {v5, v2, v3, v4, v6}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    invoke-static {p0, v5, v12}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$monTemperatureChanged(Lcom/android/server/power/thermal/ThermalManagerService;Landroid/os/Temperature;Z)V
    :try_end_17f
    .catchall {:try_start_175 .. :try_end_17f} :catchall_2d

    .line 1080
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v11

    .line 1074
    :goto_183
    :try_start_183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_19b
    .catchall {:try_start_183 .. :try_end_19b} :catchall_2d

    .line 1080
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v13

    .line 1065
    :cond_19f
    :goto_19f
    :try_start_19f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid throttle status: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1b3
    .catchall {:try_start_19f .. :try_end_1b3} :catchall_2d

    .line 1080
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v13

    .line 1037
    :cond_1b7
    :goto_1b7
    :try_start_1b7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid temperature type: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1cb
    .catchall {:try_start_1b7 .. :try_end_1cb} :catchall_2d

    .line 1080
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v13

    :goto_1cf
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1081
    throw p0

    nop

    :sswitch_data_1d4
    .sparse-switch
        -0x718f5b5e -> :sswitch_103
        -0x4cec1421 -> :sswitch_f8
        -0x299a58da -> :sswitch_ed
        -0xa618188 -> :sswitch_e2
        0x10588 -> :sswitch_d8
        0x1148c -> :sswitch_ce
        0x12ed3 -> :sswitch_c3
        0x14167 -> :sswitch_b8
        0x14559 -> :sswitch_ad
        0x258f27 -> :sswitch_a1
        0x26dd7d -> :sswitch_96
        0x28a715 -> :sswitch_8a
        0x462030a -> :sswitch_7e
        0x170bfb2e -> :sswitch_72
        0x170d39ed -> :sswitch_67
        0x19d1382a -> :sswitch_5c
        0x1a693e7c -> :sswitch_51
        0x338c332a -> :sswitch_46
        0x33d09377 -> :sswitch_3b
        0x51069545 -> :sswitch_30
        0x760cb725 -> :sswitch_21
    .end sparse-switch

    :sswitch_data_22a
    .sparse-switch
        -0x6e69498c -> :sswitch_15a
        -0x5cfe9861 -> :sswitch_150
        0x24a738 -> :sswitch_146
        0x4513cf6 -> :sswitch_13c
        0x730d571 -> :sswitch_132
        0x9c2ed03 -> :sswitch_128
        0x248df656 -> :sswitch_11e
    .end sparse-switch
.end method

.method public final runOverrideStatus()I
    .registers 7

    .line 1085
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1087
    :try_start_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_2f

    const/4 v3, -0x1

    .line 1090
    :try_start_9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_11} :catch_4c
    .catchall {:try_start_9 .. :try_end_11} :catchall_2f

    .line 1095
    :try_start_11
    invoke-static {v4}, Landroid/os/Temperature;->isValidStatus(I)Z

    move-result v5

    if-nez v5, :cond_31

    .line 1096
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid status: "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_2f

    .line 1105
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_2f
    move-exception p0

    goto :goto_69

    .line 1099
    :cond_31
    :try_start_31
    iget-object v2, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/thermal/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_2f

    .line 1100
    :try_start_38
    iget-object v3, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fputmIsStatusOverride(Lcom/android/server/power/thermal/ThermalManagerService;Z)V

    .line 1101
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {p0, v4}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$msetStatusLocked(Lcom/android/server/power/thermal/ThermalManagerService;I)V

    .line 1102
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_49

    .line 1105
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_49
    move-exception p0

    .line 1102
    :try_start_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    :try_start_4b
    throw p0

    :catch_4c
    move-exception p0

    .line 1092
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_65
    .catchall {:try_start_4b .. :try_end_65} :catchall_2f

    .line 1105
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :goto_69
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1106
    throw p0
.end method

.method public final runReset()I
    .registers 6

    .line 953
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 955
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/thermal/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_1e

    .line 956
    :try_start_b
    iget-object v3, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fputmIsStatusOverride(Lcom/android/server/power/thermal/ThermalManagerService;Z)V

    .line 957
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {p0}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$monTemperatureMapChangedLocked(Lcom/android/server/power/thermal/ThermalManagerService;)V

    .line 958
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_1b

    .line 961
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_1b
    move-exception p0

    .line 959
    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception p0

    .line 961
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 962
    throw p0
.end method
