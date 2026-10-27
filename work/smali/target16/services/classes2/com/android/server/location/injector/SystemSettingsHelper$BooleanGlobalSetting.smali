.class public Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;
.super Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;
.source "SystemSettingsHelper.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSettingName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 4

    .line 539
    invoke-direct {p0, p3}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;-><init>(Landroid/os/Handler;)V

    .line 540
    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;->mContext:Landroid/content/Context;

    .line 541
    iput-object p2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;->mSettingName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getValue(Z)Z
    .registers 5

    .line 549
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 551
    :try_start_4
    iget-object v2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v2, p0, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_19

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    .line 554
    :goto_15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 555
    throw p0
.end method
