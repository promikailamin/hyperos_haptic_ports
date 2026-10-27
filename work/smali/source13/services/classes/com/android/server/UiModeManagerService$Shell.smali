.class Lcom/android/server/UiModeManagerService$Shell;
.super Landroid/os/ShellCommand;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Shell"
.end annotation


# static fields
.field public static final NIGHT_MODE_STR_AUTO:Ljava/lang/String; = "auto"

.field public static final NIGHT_MODE_STR_CUSTOM_BEDTIME:Ljava/lang/String; = "custom_bedtime"

.field public static final NIGHT_MODE_STR_CUSTOM_SCHEDULE:Ljava/lang/String; = "custom_schedule"

.field public static final NIGHT_MODE_STR_NO:Ljava/lang/String; = "no"

.field public static final NIGHT_MODE_STR_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final NIGHT_MODE_STR_YES:Ljava/lang/String; = "yes"


# instance fields
.field private final mInterface:Landroid/app/IUiModeManager;


# direct methods
.method static bridge synthetic -$$Nest$smnightModeToStr(II)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/UiModeManagerService$Shell;->nightModeToStr(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroid/app/IUiModeManager;)V
    .registers 2
    .param p1, "iface"    # Landroid/app/IUiModeManager;

    .line 2037
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2038
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    .line 2039
    return-void
.end method

.method private handleCarMode()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2190
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2191
    .local v0, "err":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 2192
    .local v1, "modeStr":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_f

    .line 2193
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCurrentCarMode()V

    .line 2194
    return v2

    .line 2197
    :cond_f
    const-string/jumbo v3, "yes"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2198
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    const-string v4, ""

    invoke-interface {v3, v2, v2, v4}, Landroid/app/IUiModeManager;->enableCarMode(IILjava/lang/String;)V

    .line 2199
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCurrentCarMode()V

    .line 2200
    return v2

    .line 2201
    :cond_23
    const-string/jumbo v3, "no"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 2202
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-interface {v3, v2}, Landroid/app/IUiModeManager;->disableCarMode(I)V

    .line 2203
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCurrentCarMode()V

    .line 2204
    return v2

    .line 2206
    :cond_35
    const-string v2, "Error: mode must be \'yes\', or \'no\'"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2207
    const/4 v2, -0x1

    return v2
.end method

.method private handleCustomTime()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2081
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2082
    .local v0, "modeStr":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 2083
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCustomTime()V

    .line 2084
    return v1

    .line 2086
    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_5c

    :cond_13
    goto :goto_29

    :sswitch_14
    const-string/jumbo v2, "start"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v2, v1

    goto :goto_2a

    :sswitch_1f
    const-string v2, "end"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_2a

    :goto_29
    move v2, v3

    :goto_2a
    packed-switch v2, :pswitch_data_66

    .line 2096
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "command must be in [start|end]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2097
    return v3

    .line 2092
    :pswitch_37
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2093
    .local v2, "end":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-static {v2}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->-$$Nest$smtoMilliSeconds(Ljava/time/LocalTime;)J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Landroid/app/IUiModeManager;->setCustomNightModeEnd(J)V

    .line 2094
    return v1

    .line 2088
    .end local v2    # "end":Ljava/lang/String;
    :pswitch_49
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2089
    .local v2, "start":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-static {v2}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->-$$Nest$smtoMilliSeconds(Ljava/time/LocalTime;)J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Landroid/app/IUiModeManager;->setCustomNightModeStart(J)V

    .line 2090
    return v1

    nop

    :sswitch_data_5c
    .sparse-switch
        0x188db -> :sswitch_1f
        0x68ac462 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_49
        :pswitch_37
    .end packed-switch
.end method

.method private handleNightMode()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2109
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2110
    .local v0, "err":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 2111
    .local v1, "modeStr":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_f

    .line 2112
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCurrentNightMode()V

    .line 2113
    return v2

    .line 2116
    :cond_f
    invoke-static {v1}, Lcom/android/server/UiModeManagerService$Shell;->strToNightMode(Ljava/lang/String;)I

    move-result v3

    .line 2117
    .local v3, "mode":I
    invoke-static {v1}, Lcom/android/server/UiModeManagerService$Shell;->strToNightModeCustomType(Ljava/lang/String;)I

    move-result v4

    .line 2118
    .local v4, "customType":I
    if-ltz v3, :cond_2a

    .line 2119
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-interface {v5, v3}, Landroid/app/IUiModeManager;->setNightMode(I)V

    .line 2120
    const/4 v5, 0x3

    if-ne v3, v5, :cond_26

    .line 2121
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-interface {v5, v4}, Landroid/app/IUiModeManager;->setNightModeCustomType(I)V

    .line 2123
    :cond_26
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCurrentNightMode()V

    .line 2124
    return v2

    .line 2126
    :cond_2a
    const-string v2, "Error: mode must be \'yes\', \'no\', or \'auto\', or \'custom_schedule\', or \'custom_bedtime\'"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2130
    const/4 v2, -0x1

    return v2
.end method

.method private static nightModeToStr(II)Ljava/lang/String;
    .registers 3
    .param p0, "mode"    # I
    .param p1, "customType"    # I

    .line 2143
    packed-switch p0, :pswitch_data_1e

    goto :goto_1a

    .line 2151
    :pswitch_4
    if-nez p1, :cond_9

    .line 2152
    const-string v0, "custom_schedule"

    return-object v0

    .line 2154
    :cond_9
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1a

    .line 2155
    const-string v0, "custom_bedtime"

    return-object v0

    .line 2145
    :pswitch_f
    const-string/jumbo v0, "yes"

    return-object v0

    .line 2147
    :pswitch_13
    const-string/jumbo v0, "no"

    return-object v0

    .line 2149
    :pswitch_17
    const-string v0, "auto"

    return-object v0

    .line 2158
    :cond_1a
    :goto_1a
    const-string/jumbo v0, "unknown"

    return-object v0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_4
    .end packed-switch
.end method

.method private printCurrentCarMode()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2212
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2213
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-interface {v1}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result v1

    .line 2214
    .local v1, "currMode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Car mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1c

    const-string/jumbo v3, "yes"

    goto :goto_1f

    :cond_1c
    const-string/jumbo v3, "no"

    :goto_1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2215
    return-void
.end method

.method private printCurrentNightMode()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2135
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2136
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-interface {v1}, Landroid/app/IUiModeManager;->getNightMode()I

    move-result v1

    .line 2137
    .local v1, "currMode":I
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-interface {v2}, Landroid/app/IUiModeManager;->getNightModeCustomType()I

    move-result v2

    .line 2138
    .local v2, "customType":I
    invoke-static {v1, v2}, Lcom/android/server/UiModeManagerService$Shell;->nightModeToStr(II)Ljava/lang/String;

    move-result-object v3

    .line 2139
    .local v3, "currModeStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Night mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2140
    return-void
.end method

.method private printCustomTime()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2102
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    .line 2103
    invoke-interface {v2}, Landroid/app/IUiModeManager;->getCustomNightModeStart()J

    move-result-wide v2

    .line 2102
    invoke-static {v2, v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$smfromMilliseconds(J)Ljava/time/LocalTime;

    move-result-object v2

    .line 2103
    invoke-virtual {v2}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2102
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2104
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    .line 2105
    invoke-interface {v2}, Landroid/app/IUiModeManager;->getCustomNightModeEnd()J

    move-result-wide v2

    .line 2104
    invoke-static {v2, v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$smfromMilliseconds(J)Ljava/time/LocalTime;

    move-result-object v2

    .line 2105
    invoke-virtual {v2}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2104
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2106
    return-void
.end method

.method private static strToNightMode(Ljava/lang/String;)I
    .registers 7
    .param p0, "modeStr"    # Ljava/lang/String;

    .line 2163
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_4a

    :cond_c
    goto :goto_41

    :sswitch_d
    const-string v0, "custom_schedule"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_42

    :sswitch_17
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v4

    goto :goto_42

    :sswitch_21
    const-string/jumbo v0, "yes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_42

    :sswitch_2c
    const-string/jumbo v0, "no"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v3

    goto :goto_42

    :sswitch_37
    const-string v0, "custom_bedtime"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x4

    goto :goto_42

    :goto_41
    move v0, v5

    :goto_42
    packed-switch v0, :pswitch_data_60

    .line 2174
    return v5

    .line 2172
    :pswitch_46
    return v1

    .line 2169
    :pswitch_47
    return v2

    .line 2167
    :pswitch_48
    return v3

    .line 2165
    :pswitch_49
    return v4

    :sswitch_data_4a
    .sparse-switch
        -0x2d2c2800 -> :sswitch_37
        0xdc1 -> :sswitch_2c
        0x1d2e7 -> :sswitch_21
        0x2dddaf -> :sswitch_17
        0x9cc87a5 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_46
    .end packed-switch
.end method

.method private static strToNightModeCustomType(Ljava/lang/String;)I
    .registers 5
    .param p0, "customTypeStr"    # Ljava/lang/String;

    .line 2179
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_26

    :cond_a
    goto :goto_1f

    :sswitch_b
    const-string v0, "custom_schedule"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_20

    :sswitch_15
    const-string v0, "custom_bedtime"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_20

    :goto_1f
    move v0, v3

    :goto_20
    packed-switch v0, :pswitch_data_30

    .line 2185
    return v3

    .line 2183
    :pswitch_24
    return v1

    .line 2181
    :pswitch_25
    return v2

    :sswitch_data_26
    .sparse-switch
        -0x2d2c2800 -> :sswitch_15
        0x9cc87a5 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
    .end packed-switch
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;

    .line 2058
    if-nez p1, :cond_7

    .line 2059
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 2063
    :cond_7
    const/4 v0, -0x1

    :try_start_8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_66

    :cond_f
    goto :goto_30

    :sswitch_10
    const-string/jumbo v1, "night"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    goto :goto_31

    :sswitch_1b
    const-string/jumbo v1, "time"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x2

    goto :goto_31

    :sswitch_26
    const-string v1, "car"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_31

    :goto_30
    move v1, v0

    :goto_31
    packed-switch v1, :pswitch_data_74

    .line 2071
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    goto :goto_48

    .line 2069
    :pswitch_39
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$Shell;->handleCustomTime()I

    move-result v0

    return v0

    .line 2067
    :pswitch_3e
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$Shell;->handleCarMode()I

    move-result v0

    return v0

    .line 2065
    :pswitch_43
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$Shell;->handleNightMode()I

    move-result v0
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_47} :catch_49

    return v0

    .line 2071
    :goto_48
    return v0

    .line 2073
    :catch_49
    move-exception v1

    .line 2074
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 2075
    .local v2, "err":Ljava/io/PrintWriter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2077
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "err":Ljava/io/PrintWriter;
    return v0

    nop

    :sswitch_data_66
    .sparse-switch
        0x17fd4 -> :sswitch_26
        0x3652cd -> :sswitch_1b
        0x63f6418 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 2043
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2044
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "UiModeManager service (uimode) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2045
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2046
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2047
    const-string v1, "  night [yes|no|auto|custom_schedule|custom_bedtime]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2048
    const-string v1, "    Set or read night mode."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2049
    const-string v1, "  car [yes|no]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2050
    const-string v1, "    Set or read car mode."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2051
    const-string v1, "  time [start|end] <ISO time>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2052
    const-string v1, "    Set custom start/end schedule time (night mode must be set to custom to apply)."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2054
    return-void
.end method
