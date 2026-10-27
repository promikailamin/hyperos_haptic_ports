.class public final Landroid/app/admin/MultiUserDeviceProvisioningParams$Builder;
.super Ljava/lang/Object;
.source "MultiUserDeviceProvisioningParams.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/MultiUserDeviceProvisioningParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mTransportParams:Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;


# direct methods
.method public constructor blacklist <init>(Landroid/content/ComponentName;)V
    .registers 3

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance v0, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;

    invoke-direct {v0}, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;-><init>()V

    iput-object v0, p0, Landroid/app/admin/MultiUserDeviceProvisioningParams$Builder;->mTransportParams:Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;

    .line 155
    iget-object v0, p0, Landroid/app/admin/MultiUserDeviceProvisioningParams$Builder;->mTransportParams:Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;

    iput-object p1, v0, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;->deviceAdminComponentName:Landroid/content/ComponentName;

    .line 157
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/app/admin/MultiUserDeviceProvisioningParams;
    .registers 3

    .line 207
    new-instance v0, Landroid/app/admin/MultiUserDeviceProvisioningParams;

    iget-object v1, p0, Landroid/app/admin/MultiUserDeviceProvisioningParams$Builder;->mTransportParams:Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;

    invoke-direct {v0, v1}, Landroid/app/admin/MultiUserDeviceProvisioningParams;-><init>(Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;)V

    return-object v0
.end method

.method public blacklist setLeaveAllSystemAppsEnabled(Z)Landroid/app/admin/MultiUserDeviceProvisioningParams$Builder;
    .registers 3

    .line 166
    iget-object v0, p0, Landroid/app/admin/MultiUserDeviceProvisioningParams$Builder;->mTransportParams:Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;

    iput-boolean p1, v0, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;->leaveAllSystemAppsEnabled:Z

    .line 167
    return-object p0
.end method

.method public blacklist setLocalTime(J)Landroid/app/admin/MultiUserDeviceProvisioningParams$Builder;
    .registers 4

    .line 186
    iget-object v0, p0, Landroid/app/admin/MultiUserDeviceProvisioningParams$Builder;->mTransportParams:Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;

    iput-wide p1, v0, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;->localTime:J

    .line 187
    return-object p0
.end method

.method public blacklist setLocale(Ljava/util/Locale;)Landroid/app/admin/MultiUserDeviceProvisioningParams$Builder;
    .registers 3

    .line 196
    iget-object v0, p0, Landroid/app/admin/MultiUserDeviceProvisioningParams$Builder;->mTransportParams:Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    iput-object p1, v0, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;->localeStr:Ljava/lang/String;

    .line 197
    return-object p0
.end method

.method public blacklist setTimeZone(Ljava/lang/String;)Landroid/app/admin/MultiUserDeviceProvisioningParams$Builder;
    .registers 3

    .line 176
    iget-object v0, p0, Landroid/app/admin/MultiUserDeviceProvisioningParams$Builder;->mTransportParams:Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;

    iput-object p1, v0, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;->timeZone:Ljava/lang/String;

    .line 177
    return-object p0
.end method
