.class Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;
.super Ljava/lang/Object;
.source "HotwordDetectionConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/HotwordDetectionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceConnectionFactory"
.end annotation


# instance fields
.field private final mBindingFlags:I

.field private final mIntent:Landroid/content/Intent;

.field private mRestartCount:I

.field final synthetic this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;


# direct methods
.method static bridge synthetic -$$Nest$fgetmRestartCount(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;)I
    .registers 1

    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->mRestartCount:I

    return p0
.end method

.method constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/content/Intent;Z)V
    .registers 4
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "bindInstantServiceAllowed"    # Z

    .line 953
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 951
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->mRestartCount:I

    .line 954
    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->mIntent:Landroid/content/Intent;

    .line 955
    if-eqz p3, :cond_e

    const/high16 p1, 0x400000

    :cond_e
    iput p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->mBindingFlags:I

    .line 956
    return-void
.end method


# virtual methods
.method createLocked()Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;
    .registers 10

    .line 959
    new-instance v8, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget-object v2, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->mIntent:Landroid/content/Intent;

    iget v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->mBindingFlags:I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget v5, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUser:I

    new-instance v6, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory$$ExternalSyntheticLambda0;-><init>()V

    iget v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->mRestartCount:I

    add-int/lit8 v7, v0, 0x1

    iput v7, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->mRestartCount:I

    rem-int/lit8 v7, v0, 0xa

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;I)V

    .line 963
    .local v0, "connection":Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->connect()Lcom/android/internal/infra/AndroidFuture;

    .line 965
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmAudioFlinger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$smupdateAudioFlinger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Landroid/os/IBinder;)V

    .line 966
    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$smupdateContentCaptureManager(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V

    .line 967
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$mupdateServiceIdentity(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V

    .line 968
    return-object v0
.end method
