.class Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;
.super Ljava/lang/Object;
.source "ContextHubClientBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/contexthub/ContextHubClientBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingIntentRequest"
.end annotation


# instance fields
.field private mNanoAppId:J

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mValid:Z

.field final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;


# direct methods
.method constructor <init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .registers 2

    .line 279
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->this$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mValid:Z

    .line 280
    return-void
.end method

.method constructor <init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;Landroid/app/PendingIntent;J)V
    .registers 5
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "nanoAppId"    # J

    .line 282
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->this$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mValid:Z

    .line 283
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mPendingIntent:Landroid/app/PendingIntent;

    .line 284
    iput-wide p3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mNanoAppId:J

    .line 285
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mValid:Z

    .line 286
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mPendingIntent:Landroid/app/PendingIntent;

    .line 302
    return-void
.end method

.method public getNanoAppId()J
    .registers 3

    .line 289
    iget-wide v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mNanoAppId:J

    return-wide v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 293
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public hasPendingIntent()Z
    .registers 2

    .line 297
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 305
    iget-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mValid:Z

    return v0
.end method
