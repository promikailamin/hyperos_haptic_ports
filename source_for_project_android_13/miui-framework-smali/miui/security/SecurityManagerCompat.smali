.class public Lmiui/security/SecurityManagerCompat;
.super Ljava/lang/Object;
.source "SecurityManagerCompat.java"


# static fields
.field private static final blacklist ACTION_CANCEL_POWEROFF_ALARM:Ljava/lang/String; = "org.codeaurora.poweroffalarm.action.CANCEL_ALARM"

.field private static final blacklist ACTION_SET_POWEROFF_ALARM:Ljava/lang/String; = "org.codeaurora.poweroffalarm.action.SET_ALARM"

.field public static final blacklist LEADCORE:Ljava/lang/String; = "leadcore"

.field public static final blacklist MTK:Ljava/lang/String; = "mediatek"

.field private static final blacklist PINECONE:Ljava/lang/String; = "pinecone"

.field private static final blacklist POWER_OFF_ALARM_PACKAGE:Ljava/lang/String; = "com.qualcomm.qti.poweroffalarm"

.field private static final blacklist PRE_SCHEDULE_POWER_OFF_ALARM:I = 0x7

.field private static final blacklist RTC_POWEROFF_WAKEUP_MTK:I = 0x8

.field private static final blacklist RTC_POWEROFF_WAKEUP_QCOM_M:I = 0x5

.field private static final blacklist TAG:Ljava/lang/String; = "SecurityManagerCompat"

.field private static final blacklist TIME:Ljava/lang/String; = "time"

.field public static final blacklist WAKEALARM_PATH_OF_LEADCORE:Ljava/lang/String; = "/sys/comip/rtc_alarm"

.field private static final blacklist WAKEALARM_PATH_OF_PINECONE:Ljava/lang/String; = "/sys/class/rtc/rtc1/wakealarm"

.field public static final blacklist WAKEALARM_PATH_OF_QCOM:Ljava/lang/String; = "/sys/class/rtc/rtc0/wakealarm"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkAppHidden(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 138
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    .line 139
    .local v0, "hide":Z
    if-eqz v0, :cond_a

    .line 140
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2}, Landroid/content/pm/PackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z

    .line 142
    :cond_a
    return-void
.end method

.method public static blacklist createPackageParser(Ljava/lang/String;)Landroid/content/pm/PackageParser;
    .registers 2
    .param p0, "sourceDir"    # Ljava/lang/String;

    .line 125
    new-instance v0, Landroid/content/pm/PackageParser;

    invoke-direct {v0}, Landroid/content/pm/PackageParser;-><init>()V

    return-object v0
.end method

.method public static blacklist parsePackage(Landroid/content/pm/PackageParser;Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .registers 4
    .param p0, "pp"    # Landroid/content/pm/PackageParser;
    .param p1, "sourceDir"    # Ljava/lang/String;

    .line 130
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0
    :try_end_a
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 131
    :catch_b
    move-exception v0

    .line 132
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$PackageParserException;->printStackTrace()V

    .line 134
    .end local v0    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist sendCancelBootAlarm(Landroid/content/Context;J)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wakeTime"    # J

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.poweroffalarm.action.CANCEL_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 147
    const-string v1, "com.qualcomm.qti.poweroffalarm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p1

    const-string v3, "time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 150
    const-string v1, "SecurityManagerCompat"

    const-string v2, "Send cancel poweroff alarm broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method private static blacklist sendSetBootAlarm(Landroid/content/Context;J)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wakeTime"    # J

    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.poweroffalarm.action.SET_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 156
    const-string v1, "com.qualcomm.qti.poweroffalarm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p1

    const-string v3, "time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 159
    const-string v1, "SecurityManagerCompat"

    const-string v2, "Send set poweroff alarm broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method

.method public static blacklist startActvity(Landroid/content/Context;Landroid/app/IApplicationThread;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "thread"    # Landroid/app/IApplicationThread;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;

    .line 48
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v2, 0x0

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 48
    move-object v1, p1

    move-object v3, p4

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_19

    .line 53
    goto :goto_1a

    .line 52
    :catch_19
    move-exception v0

    .line 54
    :goto_1a
    return-void
.end method

.method public static blacklist startActvityAsUser(Landroid/content/Context;Landroid/app/IApplicationThread;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;I)V
    .registers 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "thread"    # Landroid/app/IApplicationThread;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "userId"    # I

    .line 58
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v3, 0x0

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_22

    move-object/from16 v13, p4

    :try_start_b
    invoke-virtual {v13, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 58
    move-object v2, p1

    move-object/from16 v4, p4

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v12, p5

    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1f} :catch_20

    .line 63
    goto :goto_25

    .line 62
    :catch_20
    move-exception v0

    goto :goto_25

    :catch_22
    move-exception v0

    move-object/from16 v13, p4

    .line 64
    :goto_25
    return-void
.end method

.method public static blacklist writeBootTime(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vendor"    # Ljava/lang/String;
    .param p2, "wakeTime"    # J

    .line 67
    const-string v0, "mediatek"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 68
    invoke-static {p0, p2, p3}, Lmiui/security/SecurityManagerCompat;->writeMTKBootTime(Landroid/content/Context;J)V

    goto :goto_3b

    .line 69
    :cond_c
    const-string v0, "leadcore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 70
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/sys/comip/rtc_alarm"

    invoke-static {v1, v0}, Landroid/miui/Shell;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3b

    .line 71
    :cond_1e
    const-string v0, "pinecone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 72
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/sys/class/rtc/rtc1/wakealarm"

    invoke-static {v1, v0}, Landroid/miui/Shell;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 73
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/miui/Shell;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3b

    .line 75
    :cond_38
    invoke-static {p0, p2, p3}, Lmiui/security/SecurityManagerCompat;->writeQcomBootTime(Landroid/content/Context;J)V

    .line 77
    :goto_3b
    return-void
.end method

.method private static blacklist writeMTKBootTime(Landroid/content/Context;J)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wakeTime"    # J

    .line 80
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 81
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 82
    .local v1, "pi":Landroid/app/PendingIntent;
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-nez v3, :cond_42

    .line 85
    :try_start_1a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 86
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    const-string v4, "cancelPoweroffAlarm"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 87
    .local v4, "declaredMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 88
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "android"

    aput-object v6, v5, v2

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_37} :catch_39

    .line 91
    nop

    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .end local v4    # "declaredMethod":Ljava/lang/reflect/Method;
    goto :goto_52

    .line 89
    :catch_39
    move-exception v2

    .line 90
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SecurityManagerCompat"

    const-string v4, "cancelPoweroffAlarm: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_52

    .line 93
    :cond_42
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-le v2, v3, :cond_4a

    const/4 v2, 0x7

    goto :goto_4c

    :cond_4a
    const/16 v2, 0x8

    :goto_4c
    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, p1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 95
    :goto_52
    return-void
.end method

.method private static blacklist writeQcomBootTime(Landroid/content/Context;J)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wakeTime"    # J

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "SecurityManagerCompat"

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_22

    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/class/rtc/rtc0/wakealarm"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 100
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/miui/Shell;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 101
    const-string v0, "Wake up time updated to wakealarm"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 102
    :cond_22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v2, :cond_4a

    .line 103
    nop

    .line 104
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 105
    .local v0, "am":Landroid/app/AlarmManager;
    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x8000000

    invoke-static {p0, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 108
    .local v2, "pi":Landroid/app/PendingIntent;
    const/4 v3, 0x5

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p1

    :try_start_3f
    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_43

    .line 111
    goto :goto_49

    .line 109
    :catch_43
    move-exception v3

    .line 110
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "alarm type 5 not supported"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v2    # "pi":Landroid/app/PendingIntent;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_49
    goto :goto_5f

    .line 116
    :cond_4a
    invoke-static {p0, p1, p2}, Lmiui/security/SecurityManagerCompat;->sendCancelBootAlarm(Landroid/content/Context;J)V

    .line 117
    invoke-static {p0, p1, p2}, Lmiui/security/SecurityManagerCompat;->sendSetBootAlarm(Landroid/content/Context;J)V

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-le v0, v1, :cond_5f

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_5f

    .line 119
    invoke-static {p0, p1, p2}, Lmiui/security/SecurityManagerCompat;->sendCancelBootAlarm(Landroid/content/Context;J)V

    .line 122
    :cond_5f
    :goto_5f
    return-void
.end method
