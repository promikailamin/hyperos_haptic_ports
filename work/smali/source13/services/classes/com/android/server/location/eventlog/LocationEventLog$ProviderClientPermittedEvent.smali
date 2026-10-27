.class final Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;
.super Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;
.source "LocationEventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/eventlog/LocationEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderClientPermittedEvent"
.end annotation


# instance fields
.field private final mIdentity:Landroid/location/util/identity/CallerIdentity;

.field private final mPermitted:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ZLandroid/location/util/identity/CallerIdentity;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "permitted"    # Z
    .param p3, "identity"    # Landroid/location/util/identity/CallerIdentity;

    .line 346
    invoke-direct {p0, p1}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;-><init>(Ljava/lang/String;)V

    .line 347
    iput-boolean p2, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;->mPermitted:Z

    .line 348
    iput-object p3, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 349
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " provider client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 354
    iget-boolean v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;->mPermitted:Z

    if-eqz v1, :cond_25

    const-string/jumbo v1, "permitted"

    goto :goto_28

    :cond_25
    const-string/jumbo v1, "unpermitted"

    :goto_28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    return-object v0
.end method
