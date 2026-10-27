.class public Landroid/app/ColorLightManager;
.super Ljava/lang/Object;
.source "ColorLightManager.java"


# static fields
.field public static final whitelist LIGHTSTYLE_ALARM:I = 0x4

.field public static final whitelist LIGHTSTYLE_DEFAULT:I = 0x0

.field public static final whitelist LIGHTSTYLE_EXPAND:I = 0x5

.field public static final whitelist LIGHTSTYLE_GAME:I = 0x2

.field public static final whitelist LIGHTSTYLE_LIGHT_ID_PRIVACY:I = 0x7

.field public static final whitelist LIGHTSTYLE_LUCKYMONEY:I = 0x6

.field public static final whitelist LIGHTSTYLE_MUSIC:I = 0x3

.field public static final whitelist LIGHTSTYLE_PHONE:I = 0x1

.field public static final whitelist LIGHTSTYLE_SRC_NOTFOUND:I = -0x64

.field public static final whitelist LIGHTSTYLE_TURNOFF:I = -0x1

.field private static blacklist ONE_HOUR:J

.field private static blacklist ONE_MINUTE:J

.field private static blacklist sService:Lmiui/lights/ILightsManager;


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 26
    const-wide/32 v0, 0xea60

    sput-wide v0, Landroid/app/ColorLightManager;->ONE_MINUTE:J

    .line 27
    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    sput-wide v0, Landroid/app/ColorLightManager;->ONE_HOUR:J

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "mContext"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public static blacklist getServices()Lmiui/lights/ILightsManager;
    .registers 6

    .line 39
    sget-object v0, Landroid/app/ColorLightManager;->sService:Lmiui/lights/ILightsManager;

    if-nez v0, :cond_2e

    .line 41
    :try_start_4
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 42
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 43
    .local v1, "mService":Landroid/app/INotificationManager;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getColorLightManager"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 44
    .local v2, "method":Ljava/lang/reflect/Method;
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v3}, Lmiui/lights/ILightsManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/lights/ILightsManager;

    move-result-object v3

    sput-object v3, Landroid/app/ColorLightManager;->sService:Lmiui/lights/ILightsManager;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_29} :catch_2a

    .line 47
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "mService":Landroid/app/INotificationManager;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    goto :goto_2e

    .line 45
    :catch_2a
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2e
    :goto_2e
    sget-object v0, Landroid/app/ColorLightManager;->sService:Lmiui/lights/ILightsManager;

    return-object v0
.end method


# virtual methods
.method public whitelist enableBatteryLight(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 137
    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 140
    nop

    .line 139
    const-string v1, "battery_light_turn_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 141
    return-void
.end method

.method public whitelist enableLight(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 101
    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 104
    nop

    .line 103
    const-string v1, "light_turn_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 105
    return-void
.end method

.method public whitelist enableMusiclLight(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 149
    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 152
    nop

    .line 151
    const-string v1, "music_light_turn_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 153
    return-void
.end method

.method public whitelist enableNotificationLight(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 125
    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 128
    nop

    .line 127
    const-string v1, "notification_light_turn_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    return-void
.end method

.method public whitelist enableTimeLight(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 113
    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 116
    nop

    .line 115
    const-string v1, "light_turn_on_Time"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 117
    return-void
.end method

.method public whitelist isBatteryLightEnable()Z
    .registers 5

    .line 185
    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_light_turn_on"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    move v2, v1

    :cond_12
    return v2
.end method

.method public whitelist isLightEnable()Z
    .registers 5

    .line 160
    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "light_turn_on"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    return v2
.end method

.method public whitelist isLightTimeEnable()Z
    .registers 5

    .line 168
    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "light_turn_on_Time"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    move v2, v1

    :cond_12
    return v2
.end method

.method public whitelist isMusicLightEnable()Z
    .registers 5

    .line 193
    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "music_light_turn_on"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    move v2, v1

    :cond_12
    return v2
.end method

.method public whitelist isNotificationLightEnable()Z
    .registers 5

    .line 176
    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_turn_on"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    move v2, v1

    :cond_12
    return v2
.end method

.method public whitelist setColorCommon(II)V
    .registers 6
    .param p1, "color"    # I
    .param p2, "styleType"    # I

    .line 64
    :try_start_0
    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "pkg":Ljava/lang/String;
    invoke-static {}, Landroid/app/ColorLightManager;->getServices()Lmiui/lights/ILightsManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, v0, p2, v2}, Lmiui/lights/ILightsManager;->setColorCommon(ILjava/lang/String;II)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 68
    .end local v0    # "pkg":Ljava/lang/String;
    goto :goto_1a

    .line 66
    :catch_16
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1a
    return-void
.end method

.method public whitelist setColorfulLight(I)V
    .registers 5
    .param p1, "styleType"    # I

    .line 55
    :try_start_0
    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "pkg":Ljava/lang/String;
    invoke-static {}, Landroid/app/ColorLightManager;->getServices()Lmiui/lights/ILightsManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, v0, p1, v2}, Lmiui/lights/ILightsManager;->setColorfulLight(Ljava/lang/String;II)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 59
    .end local v0    # "pkg":Ljava/lang/String;
    goto :goto_1a

    .line 57
    :catch_16
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1a
    return-void
.end method

.method public whitelist setColorfulLightEndEnableTime(JJ)V
    .registers 9
    .param p1, "endHour"    # J
    .param p3, "endMin"    # J

    .line 88
    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-wide v0, Landroid/app/ColorLightManager;->ONE_HOUR:J

    mul-long/2addr v0, p1

    sget-wide v2, Landroid/app/ColorLightManager;->ONE_MINUTE:J

    mul-long/2addr v2, p3

    add-long/2addr v0, v2

    .line 91
    .local v0, "endTime":J
    iget-object v2, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "light_turn_on_endTime"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 93
    return-void
.end method

.method public whitelist setColorfulLightStartEnableTime(JJ)V
    .registers 9
    .param p1, "startHour"    # J
    .param p3, "startMin"    # J

    .line 76
    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-wide v0, Landroid/app/ColorLightManager;->ONE_HOUR:J

    mul-long/2addr v0, p1

    sget-wide v2, Landroid/app/ColorLightManager;->ONE_MINUTE:J

    mul-long/2addr v2, p3

    add-long/2addr v0, v2

    .line 79
    .local v0, "startTime":J
    iget-object v2, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "light_turn_on_startTime"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 81
    return-void
.end method
