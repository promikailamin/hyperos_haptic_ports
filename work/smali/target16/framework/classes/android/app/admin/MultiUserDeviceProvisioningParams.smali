.class public final Landroid/app/admin/MultiUserDeviceProvisioningParams;
.super Ljava/lang/Object;
.source "MultiUserDeviceProvisioningParams.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/MultiUserDeviceProvisioningParams$Builder;
    }
.end annotation


# static fields
.field private static final blacklist LEAVE_ALL_SYSTEM_APPS_ENABLED_PARAM:Ljava/lang/String; = "LEAVE_ALL_SYSTEM_APPS_ENABLED"

.field private static final blacklist LOCALE_PROVIDED_PARAM:Ljava/lang/String; = "LOCALE_PROVIDED"

.field private static final blacklist TIME_ZONE_PROVIDED_PARAM:Ljava/lang/String; = "TIME_ZONE_PROVIDED"


# instance fields
.field private final blacklist mTransportParams:Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;


# direct methods
.method public constructor blacklist <init>(Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;)V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroid/app/admin/MultiUserDeviceProvisioningParams;->mTransportParams:Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;

    .line 56
    return-void
.end method

.method private static blacklist getLocale(Ljava/lang/String;)Ljava/util/Locale;
    .registers 1

    .line 67
    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    :cond_4
    invoke-static {p0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    :goto_8
    return-object p0
.end method

.method private blacklist logParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 124
    const/16 v0, 0xc5

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    iget-object v0, p0, Landroid/app/admin/MultiUserDeviceProvisioningParams;->mTransportParams:Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;

    iget-object v0, v0, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;->deviceAdminComponentName:Landroid/content/ComponentName;

    .line 126
    invoke-virtual {p1, v0}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Landroid/content/ComponentName;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    .line 127
    invoke-virtual {p1, p2}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    .line 128
    invoke-virtual {p1, p3}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 130
    return-void
.end method


# virtual methods
.method public blacklist getDeviceAdminComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 73
    iget-object v0, p0, Landroid/app/admin/MultiUserDeviceProvisioningParams;->mTransportParams:Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;

    iget-object v0, v0, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;->deviceAdminComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getLocalTime()J
    .registers 3

    .line 95
    iget-object v0, p0, Landroid/app/admin/MultiUserDeviceProvisioningParams;->mTransportParams:Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;

    iget-wide v0, v0, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;->localTime:J

    return-wide v0
.end method

.method public blacklist getLocale()Ljava/util/Locale;
    .registers 2

    .line 104
    iget-object v0, p0, Landroid/app/admin/MultiUserDeviceProvisioningParams;->mTransportParams:Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;

    iget-object v0, v0, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;->localeStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/admin/MultiUserDeviceProvisioningParams;->getLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTimeZone()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/app/admin/MultiUserDeviceProvisioningParams;->mTransportParams:Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;

    iget-object v0, v0, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;->timeZone:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getTransportParams()Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;
    .registers 2

    .line 62
    iget-object v0, p0, Landroid/app/admin/MultiUserDeviceProvisioningParams;->mTransportParams:Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;

    return-object v0
.end method

.method public blacklist isLeaveAllSystemAppsEnabled()Z
    .registers 2

    .line 78
    iget-object v0, p0, Landroid/app/admin/MultiUserDeviceProvisioningParams;->mTransportParams:Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;

    iget-boolean v0, v0, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;->leaveAllSystemAppsEnabled:Z

    return v0
.end method

.method public blacklist logParams(Ljava/lang/String;)V
    .registers 6

    .line 113
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Landroid/app/admin/MultiUserDeviceProvisioningParams;->mTransportParams:Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;

    iget-boolean v0, v0, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;->leaveAllSystemAppsEnabled:Z

    const-string v1, "LEAVE_ALL_SYSTEM_APPS_ENABLED"

    invoke-direct {p0, p1, v1, v0}, Landroid/app/admin/MultiUserDeviceProvisioningParams;->logParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 117
    iget-object v0, p0, Landroid/app/admin/MultiUserDeviceProvisioningParams;->mTransportParams:Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;

    iget-object v0, v0, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;->timeZone:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    move v0, v1

    goto :goto_17

    :cond_16
    move v0, v2

    :goto_17
    const-string v3, "TIME_ZONE_PROVIDED"

    invoke-direct {p0, p1, v3, v0}, Landroid/app/admin/MultiUserDeviceProvisioningParams;->logParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 119
    iget-object v0, p0, Landroid/app/admin/MultiUserDeviceProvisioningParams;->mTransportParams:Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;

    iget-object v0, v0, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;->localeStr:Ljava/lang/String;

    if-eqz v0, :cond_23

    goto :goto_24

    :cond_23
    move v1, v2

    :goto_24
    const-string v0, "LOCALE_PROVIDED"

    invoke-direct {p0, p1, v0, v1}, Landroid/app/admin/MultiUserDeviceProvisioningParams;->logParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 121
    return-void
.end method
