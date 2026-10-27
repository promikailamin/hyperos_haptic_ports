.class public Landroid/app/time/TimeCapabilities$Builder;
.super Ljava/lang/Object;
.source "TimeCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/time/TimeCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mConfigureAutoDetectionEnabledCapability:I

.field private blacklist mSetManualTimeCapability:I

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConfigureAutoDetectionEnabledCapability(Landroid/app/time/TimeCapabilities$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/time/TimeCapabilities$Builder;->mConfigureAutoDetectionEnabledCapability:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSetManualTimeCapability(Landroid/app/time/TimeCapabilities$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/time/TimeCapabilities$Builder;->mSetManualTimeCapability:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserHandle(Landroid/app/time/TimeCapabilities$Builder;)Landroid/os/UserHandle;
    .registers 1

    iget-object p0, p0, Landroid/app/time/TimeCapabilities$Builder;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/app/time/TimeCapabilities;)V
    .registers 3

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-static {p1}, Landroid/app/time/TimeCapabilities;->-$$Nest$fgetmUserHandle(Landroid/app/time/TimeCapabilities;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/time/TimeCapabilities$Builder;->mUserHandle:Landroid/os/UserHandle;

    .line 180
    invoke-static {p1}, Landroid/app/time/TimeCapabilities;->-$$Nest$fgetmConfigureAutoDetectionEnabledCapability(Landroid/app/time/TimeCapabilities;)I

    move-result v0

    iput v0, p0, Landroid/app/time/TimeCapabilities$Builder;->mConfigureAutoDetectionEnabledCapability:I

    .line 182
    invoke-static {p1}, Landroid/app/time/TimeCapabilities;->-$$Nest$fgetmSetManualTimeCapability(Landroid/app/time/TimeCapabilities;)I

    move-result p1

    iput p1, p0, Landroid/app/time/TimeCapabilities$Builder;->mSetManualTimeCapability:I

    .line 183
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/UserHandle;)V
    .registers 2

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    iput-object p1, p0, Landroid/app/time/TimeCapabilities$Builder;->mUserHandle:Landroid/os/UserHandle;

    .line 175
    return-void
.end method

.method private blacklist verifyCapabilitySet(ILjava/lang/String;)V
    .registers 4

    .line 206
    if-eqz p1, :cond_3

    .line 209
    return-void

    .line 207
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " was not set"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public blacklist build()Landroid/app/time/TimeCapabilities;
    .registers 3

    .line 199
    iget v0, p0, Landroid/app/time/TimeCapabilities$Builder;->mConfigureAutoDetectionEnabledCapability:I

    const-string v1, "configureAutoDetectionEnabledCapability"

    invoke-direct {p0, v0, v1}, Landroid/app/time/TimeCapabilities$Builder;->verifyCapabilitySet(ILjava/lang/String;)V

    .line 201
    iget v0, p0, Landroid/app/time/TimeCapabilities$Builder;->mSetManualTimeCapability:I

    const-string/jumbo v1, "mSetManualTimeCapability"

    invoke-direct {p0, v0, v1}, Landroid/app/time/TimeCapabilities$Builder;->verifyCapabilitySet(ILjava/lang/String;)V

    .line 202
    new-instance v0, Landroid/app/time/TimeCapabilities;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/time/TimeCapabilities;-><init>(Landroid/app/time/TimeCapabilities$Builder;Landroid/app/time/TimeCapabilities-IA;)V

    return-object v0
.end method

.method public blacklist setConfigureAutoDetectionEnabledCapability(I)Landroid/app/time/TimeCapabilities$Builder;
    .registers 2

    .line 187
    iput p1, p0, Landroid/app/time/TimeCapabilities$Builder;->mConfigureAutoDetectionEnabledCapability:I

    .line 188
    return-object p0
.end method

.method public blacklist setSetManualTimeCapability(I)Landroid/app/time/TimeCapabilities$Builder;
    .registers 2

    .line 193
    iput p1, p0, Landroid/app/time/TimeCapabilities$Builder;->mSetManualTimeCapability:I

    .line 194
    return-object p0
.end method
