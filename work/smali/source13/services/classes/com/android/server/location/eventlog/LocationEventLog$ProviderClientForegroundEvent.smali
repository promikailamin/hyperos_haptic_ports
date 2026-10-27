.class final Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientForegroundEvent;
.super Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;
.source "LocationEventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/eventlog/LocationEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderClientForegroundEvent"
.end annotation


# instance fields
.field private final mForeground:Z

.field private final mIdentity:Landroid/location/util/identity/CallerIdentity;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLandroid/location/util/identity/CallerIdentity;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "foreground"    # Z
    .param p3, "identity"    # Landroid/location/util/identity/CallerIdentity;

    .line 328
    invoke-direct {p0, p1}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;-><init>(Ljava/lang/String;)V

    .line 329
    iput-boolean p2, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientForegroundEvent;->mForeground:Z

    .line 330
    iput-object p3, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientForegroundEvent;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 331
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientForegroundEvent;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " provider client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientForegroundEvent;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 336
    iget-boolean v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientForegroundEvent;->mForeground:Z

    if-eqz v1, :cond_24

    const-string v1, "foreground"

    goto :goto_26

    :cond_24
    const-string v1, "background"

    :goto_26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    return-object v0
.end method
