.class public Landroid/app/time/TimeZoneCapabilities$Builder;
.super Ljava/lang/Object;
.source "TimeZoneCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/time/TimeZoneCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mConfigureAutoDetectionEnabledCapability:I

.field private blacklist mConfigureGeoDetectionEnabledCapability:I

.field private blacklist mConfigureNotificationsEnabledCapability:I

.field private blacklist mSetManualTimeZoneCapability:I

.field private blacklist mUseLocationEnabled:Ljava/lang/Boolean;

.field private blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConfigureAutoDetectionEnabledCapability(Landroid/app/time/TimeZoneCapabilities$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/time/TimeZoneCapabilities$Builder;->mConfigureAutoDetectionEnabledCapability:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfigureGeoDetectionEnabledCapability(Landroid/app/time/TimeZoneCapabilities$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/time/TimeZoneCapabilities$Builder;->mConfigureGeoDetectionEnabledCapability:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfigureNotificationsEnabledCapability(Landroid/app/time/TimeZoneCapabilities$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/time/TimeZoneCapabilities$Builder;->mConfigureNotificationsEnabledCapability:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSetManualTimeZoneCapability(Landroid/app/time/TimeZoneCapabilities$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/time/TimeZoneCapabilities$Builder;->mSetManualTimeZoneCapability:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUseLocationEnabled(Landroid/app/time/TimeZoneCapabilities$Builder;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/app/time/TimeZoneCapabilities$Builder;->mUseLocationEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserHandle(Landroid/app/time/TimeZoneCapabilities$Builder;)Landroid/os/UserHandle;
    .registers 1

    iget-object p0, p0, Landroid/app/time/TimeZoneCapabilities$Builder;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/app/time/TimeZoneCapabilities;)V
    .registers 3

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-static {p1}, Landroid/app/time/TimeZoneCapabilities;->-$$Nest$fgetmUserHandle(Landroid/app/time/TimeZoneCapabilities;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/time/TimeZoneCapabilities$Builder;->mUserHandle:Landroid/os/UserHandle;

    .line 273
    invoke-static {p1}, Landroid/app/time/TimeZoneCapabilities;->-$$Nest$fgetmConfigureAutoDetectionEnabledCapability(Landroid/app/time/TimeZoneCapabilities;)I

    move-result v0

    iput v0, p0, Landroid/app/time/TimeZoneCapabilities$Builder;->mConfigureAutoDetectionEnabledCapability:I

    .line 275
    invoke-static {p1}, Landroid/app/time/TimeZoneCapabilities;->-$$Nest$fgetmUseLocationEnabled(Landroid/app/time/TimeZoneCapabilities;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/app/time/TimeZoneCapabilities$Builder;->mUseLocationEnabled:Ljava/lang/Boolean;

    .line 276
    invoke-static {p1}, Landroid/app/time/TimeZoneCapabilities;->-$$Nest$fgetmConfigureGeoDetectionEnabledCapability(Landroid/app/time/TimeZoneCapabilities;)I

    move-result v0

    iput v0, p0, Landroid/app/time/TimeZoneCapabilities$Builder;->mConfigureGeoDetectionEnabledCapability:I

    .line 278
    invoke-static {p1}, Landroid/app/time/TimeZoneCapabilities;->-$$Nest$fgetmSetManualTimeZoneCapability(Landroid/app/time/TimeZoneCapabilities;)I

    move-result v0

    iput v0, p0, Landroid/app/time/TimeZoneCapabilities$Builder;->mSetManualTimeZoneCapability:I

    .line 280
    invoke-static {p1}, Landroid/app/time/TimeZoneCapabilities;->-$$Nest$fgetmConfigureNotificationsEnabledCapability(Landroid/app/time/TimeZoneCapabilities;)I

    move-result p1

    iput p1, p0, Landroid/app/time/TimeZoneCapabilities$Builder;->mConfigureNotificationsEnabledCapability:I

    .line 282
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/UserHandle;)V
    .registers 2

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    iput-object p1, p0, Landroid/app/time/TimeZoneCapabilities$Builder;->mUserHandle:Landroid/os/UserHandle;

    .line 268
    return-void
.end method

.method private blacklist verifyCapabilitySet(ILjava/lang/String;)V
    .registers 4

    .line 334
    if-eqz p1, :cond_3

    .line 337
    return-void

    .line 335
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " not set"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public blacklist build()Landroid/app/time/TimeZoneCapabilities;
    .registers 3

    .line 321
    iget v0, p0, Landroid/app/time/TimeZoneCapabilities$Builder;->mConfigureAutoDetectionEnabledCapability:I

    const-string v1, "configureAutoDetectionEnabledCapability"

    invoke-direct {p0, v0, v1}, Landroid/app/time/TimeZoneCapabilities$Builder;->verifyCapabilitySet(ILjava/lang/String;)V

    .line 323
    iget-object v0, p0, Landroid/app/time/TimeZoneCapabilities$Builder;->mUseLocationEnabled:Ljava/lang/Boolean;

    const-string/jumbo v1, "useLocationEnabled"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 324
    iget v0, p0, Landroid/app/time/TimeZoneCapabilities$Builder;->mConfigureGeoDetectionEnabledCapability:I

    const-string v1, "configureGeoDetectionEnabledCapability"

    invoke-direct {p0, v0, v1}, Landroid/app/time/TimeZoneCapabilities$Builder;->verifyCapabilitySet(ILjava/lang/String;)V

    .line 326
    iget v0, p0, Landroid/app/time/TimeZoneCapabilities$Builder;->mSetManualTimeZoneCapability:I

    const-string/jumbo v1, "setManualTimeZoneCapability"

    invoke-direct {p0, v0, v1}, Landroid/app/time/TimeZoneCapabilities$Builder;->verifyCapabilitySet(ILjava/lang/String;)V

    .line 328
    iget v0, p0, Landroid/app/time/TimeZoneCapabilities$Builder;->mConfigureNotificationsEnabledCapability:I

    const-string v1, "configureNotificationsEnabledCapability"

    invoke-direct {p0, v0, v1}, Landroid/app/time/TimeZoneCapabilities$Builder;->verifyCapabilitySet(ILjava/lang/String;)V

    .line 330
    new-instance v0, Landroid/app/time/TimeZoneCapabilities;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/time/TimeZoneCapabilities;-><init>(Landroid/app/time/TimeZoneCapabilities$Builder;Landroid/app/time/TimeZoneCapabilities-IA;)V

    return-object v0
.end method

.method public blacklist setConfigureAutoDetectionEnabledCapability(I)Landroid/app/time/TimeZoneCapabilities$Builder;
    .registers 2

    .line 286
    iput p1, p0, Landroid/app/time/TimeZoneCapabilities$Builder;->mConfigureAutoDetectionEnabledCapability:I

    .line 287
    return-object p0
.end method

.method public blacklist setConfigureGeoDetectionEnabledCapability(I)Landroid/app/time/TimeZoneCapabilities$Builder;
    .registers 2

    .line 300
    iput p1, p0, Landroid/app/time/TimeZoneCapabilities$Builder;->mConfigureGeoDetectionEnabledCapability:I

    .line 301
    return-object p0
.end method

.method public blacklist setConfigureNotificationsEnabledCapability(I)Landroid/app/time/TimeZoneCapabilities$Builder;
    .registers 2

    .line 314
    iput p1, p0, Landroid/app/time/TimeZoneCapabilities$Builder;->mConfigureNotificationsEnabledCapability:I

    .line 315
    return-object p0
.end method

.method public blacklist setSetManualTimeZoneCapability(I)Landroid/app/time/TimeZoneCapabilities$Builder;
    .registers 2

    .line 306
    iput p1, p0, Landroid/app/time/TimeZoneCapabilities$Builder;->mSetManualTimeZoneCapability:I

    .line 307
    return-object p0
.end method

.method public blacklist setUseLocationEnabled(Z)Landroid/app/time/TimeZoneCapabilities$Builder;
    .registers 2

    .line 292
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroid/app/time/TimeZoneCapabilities$Builder;->mUseLocationEnabled:Ljava/lang/Boolean;

    .line 293
    return-object p0
.end method
