.class public abstract Landroid/sysprop/WatchdogProperties;
.super Ljava/lang/Object;
.source "WatchdogProperties.java"


# direct methods
.method public static fatal_count()Ljava/util/Optional;
    .registers 1

    .line 164
    const-string v0, "framework_watchdog.fatal_count"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v0}, Landroid/sysprop/WatchdogProperties;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static fatal_window_seconds()Ljava/util/Optional;
    .registers 1

    .line 169
    const-string v0, "framework_watchdog.fatal_window.second"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0}, Landroid/sysprop/WatchdogProperties;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static should_ignore_fatal_count()Ljava/util/Optional;
    .registers 1

    .line 174
    const-string/jumbo v0, "persist.debug.framework_watchdog.fatal_ignore"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {v0}, Landroid/sysprop/WatchdogProperties;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 22
    :cond_4
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_4c

    goto :goto_42

    :sswitch_16
    const-string v1, "false"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_42

    :cond_1f
    const/4 v2, 0x3

    goto :goto_42

    :sswitch_21
    const-string/jumbo v1, "true"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_42

    :cond_2b
    const/4 v2, 0x2

    goto :goto_42

    :sswitch_2d
    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    goto :goto_42

    :cond_36
    const/4 v2, 0x1

    goto :goto_42

    :sswitch_38
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    goto :goto_42

    :cond_41
    const/4 v2, 0x0

    :goto_42
    packed-switch v2, :pswitch_data_5e

    return-object v0

    .line 25
    :pswitch_46
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 28
    :pswitch_49
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :sswitch_data_4c
    .sparse-switch
        0x30 -> :sswitch_38
        0x31 -> :sswitch_2d
        0x36758e -> :sswitch_21
        0x5cb1923 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_49
        :pswitch_46
        :pswitch_46
        :pswitch_49
    .end packed-switch
.end method

.method public static tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 1

    .line 36
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    const/4 p0, 0x0

    return-object p0
.end method
