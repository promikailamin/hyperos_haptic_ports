.class public Lcom/android/server/credentials/RequestSession$RequestSessionDeathRecipient;
.super Ljava/lang/Object;
.source "RequestSession.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/credentials/RequestSession;


# direct methods
.method public constructor <init>(Lcom/android/server/credentials/RequestSession;)V
    .registers 2

    .line 429
    iput-object p1, p0, Lcom/android/server/credentials/RequestSession$RequestSessionDeathRecipient;->this$0:Lcom/android/server/credentials/RequestSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/credentials/RequestSession;Lcom/android/server/credentials/RequestSession-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/credentials/RequestSession$RequestSessionDeathRecipient;-><init>(Lcom/android/server/credentials/RequestSession;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 432
    const-string v0, "CredentialManager"

    const-string v1, "Client binder died - clearing session"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession$RequestSessionDeathRecipient;->this$0:Lcom/android/server/credentials/RequestSession;

    invoke-static {p0}, Lcom/android/server/credentials/RequestSession;->-$$Nest$misUiWaitingForData(Lcom/android/server/credentials/RequestSession;)Z

    move-result v0

    sget-object v1, Lcom/android/server/credentials/metrics/ApiStatus;->BINDER_DIED:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/credentials/RequestSession;->finishSession(ZI)V

    return-void
.end method
