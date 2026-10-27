.class public Lcom/android/server/location/contexthub/ContextHubClientBroker;
.super Landroid/hardware/location/IContextHubClient$Stub;
.source "ContextHubClientBroker.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/app/AppOpsManager$OnOpChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;,
        Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;
    }
.end annotation


# static fields
.field private static final AUTHORIZATION_UNKNOWN:I = -0x1

.field private static final CHANGE_ID_AUTH_STATE_DENIED:J = 0xacf3007L

.field private static final RECEIVE_MSG_NOTE:Ljava/lang/String; = "NanoappMessageDelivery "

.field private static final TAG:Ljava/lang/String; = "ContextHubClientBroker"


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

.field private mAttributionTag:Ljava/lang/String;

.field private mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

.field private final mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

.field private final mContext:Landroid/content/Context;

.field private final mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

.field private final mForceDeniedNapps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mHostEndPointId:S

.field private mIsPendingIntentCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsPermQueryIssued:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mMessageChannelNanoappIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mNappToAuthTimerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/server/location/contexthub/AuthStateDenialTimer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackage:Ljava/lang/String;

.field private final mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

.field private final mPid:I

.field private final mQueryPermsCallback:Landroid/hardware/location/IContextHubTransactionCallback;

.field private mRegistered:Z

.field private final mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

.field private final mUid:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsPermQueryIssued(Lcom/android/server/location/contexthub/ContextHubClientBroker;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mIsPermQueryIssued:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMessageChannelNanoappIdMap(Lcom/android/server/location/contexthub/ContextHubClientBroker;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateNanoAppAuthState(Lcom/android/server/location/contexthub/ContextHubClientBroker;JLjava/util/List;Z)I
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->updateNanoAppAuthState(JLjava/util/List;Z)I

    move-result p0

    return p0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Landroid/hardware/location/ContextHubInfo;SLandroid/app/PendingIntent;JLjava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;)V
    .registers 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contextHubProxy"    # Lcom/android/server/location/contexthub/IContextHubWrapper;
    .param p3, "clientManager"    # Lcom/android/server/location/contexthub/ContextHubClientManager;
    .param p4, "contextHubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .param p5, "hostEndPointId"    # S
    .param p6, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p7, "nanoAppId"    # J
    .param p9, "attributionTag"    # Ljava/lang/String;
    .param p10, "transactionManager"    # Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 352
    nop

    .line 354
    invoke-virtual/range {p6 .. p6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v12

    .line 352
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    invoke-direct/range {v0 .. v12}, Lcom/android/server/location/contexthub/ContextHubClientBroker;-><init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Landroid/hardware/location/ContextHubInfo;SLandroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Landroid/app/PendingIntent;JLjava/lang/String;)V

    .line 355
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Landroid/hardware/location/ContextHubInfo;SLandroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Landroid/app/PendingIntent;JLjava/lang/String;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contextHubProxy"    # Lcom/android/server/location/contexthub/IContextHubWrapper;
    .param p3, "clientManager"    # Lcom/android/server/location/contexthub/ContextHubClientManager;
    .param p4, "contextHubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .param p5, "hostEndPointId"    # S
    .param p6, "callback"    # Landroid/hardware/location/IContextHubClientCallback;
    .param p7, "attributionTag"    # Ljava/lang/String;
    .param p8, "transactionManager"    # Lcom/android/server/location/contexthub/ContextHubTransactionManager;
    .param p9, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p10, "nanoAppId"    # J
    .param p12, "packageName"    # Ljava/lang/String;

    .line 313
    invoke-direct {p0}, Landroid/hardware/location/IContextHubClient$Stub;-><init>()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mRegistered:Z

    .line 210
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mIsPendingIntentCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 216
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mIsPermQueryIssued:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 223
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    .line 230
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mForceDeniedNapps:Ljava/util/Set;

    .line 235
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mNappToAuthTimerMap:Ljava/util/Map;

    .line 241
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$1;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mQueryPermsCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    .line 314
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContext:Landroid/content/Context;

    .line 315
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 316
    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 317
    iput-object p4, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    .line 318
    iput-short p5, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    .line 319
    iput-object p6, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    .line 320
    if-nez p9, :cond_4a

    .line 321
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    goto :goto_51

    .line 323
    :cond_4a
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-direct {v0, p0, p9, p10, p11}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;Landroid/app/PendingIntent;J)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    .line 325
    :goto_51
    iput-object p12, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    .line 326
    iput-object p7, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttributionTag:Ljava/lang/String;

    .line 327
    iput-object p8, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 329
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPid:I

    .line 330
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mUid:I

    .line 331
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 333
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->startMonitoringOpChanges()V

    .line 334
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendHostEndpointConnectedEvent()V

    .line 335
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Landroid/hardware/location/ContextHubInfo;SLandroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/lang/String;)V
    .registers 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contextHubProxy"    # Lcom/android/server/location/contexthub/IContextHubWrapper;
    .param p3, "clientManager"    # Lcom/android/server/location/contexthub/ContextHubClientManager;
    .param p4, "contextHubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .param p5, "hostEndPointId"    # S
    .param p6, "callback"    # Landroid/hardware/location/IContextHubClientCallback;
    .param p7, "attributionTag"    # Ljava/lang/String;
    .param p8, "transactionManager"    # Lcom/android/server/location/contexthub/ContextHubTransactionManager;
    .param p9, "packageName"    # Ljava/lang/String;

    .line 342
    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v12, p9

    invoke-direct/range {v0 .. v12}, Lcom/android/server/location/contexthub/ContextHubClientBroker;-><init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Landroid/hardware/location/ContextHubInfo;SLandroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Landroid/app/PendingIntent;JLjava/lang/String;)V

    .line 345
    return-void
.end method

.method private authStateToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "state"    # I

    .line 881
    packed-switch p1, :pswitch_data_10

    .line 889
    const-string v0, "UNKNOWN"

    return-object v0

    .line 887
    :pswitch_6
    const-string v0, "GRANTED"

    return-object v0

    .line 885
    :pswitch_9
    const-string v0, "DENIED_GRACE_PERIOD"

    return-object v0

    .line 883
    :pswitch_c
    const-string v0, "DENIED"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private checkNanoappPermsAsync()V
    .registers 5

    .line 670
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mIsPermQueryIssued:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 671
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    .line 672
    invoke-virtual {v1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mQueryPermsCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    .line 671
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createQueryTransaction(ILandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object v0

    .line 673
    .local v0, "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    .line 675
    .end local v0    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    :cond_1e
    return-void
.end method

.method private createIntent(I)Landroid/content/Intent;
    .registers 5
    .param p1, "eventType"    # I

    .line 791
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 792
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.hardware.location.extra.EVENT_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 793
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    const-string v2, "android.hardware.location.extra.CONTEXT_HUB_INFO"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 794
    return-object v0
.end method

.method private createIntent(IJ)Landroid/content/Intent;
    .registers 6
    .param p1, "eventType"    # I
    .param p2, "nanoAppId"    # J

    .line 806
    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->createIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 807
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.hardware.location.extra.NANOAPP_ID"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 808
    return-object v0
.end method

.method private doSendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .registers 11
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 843
    :try_start_0
    const-string v6, "android.permission.ACCESS_CONTEXT_HUB"

    .line 844
    .local v6, "requiredPermission":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_d} :catch_e

    .line 853
    .end local v6    # "requiredPermission":Ljava/lang/String;
    goto :goto_38

    .line 847
    :catch_e
    move-exception v0

    .line 848
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mIsPendingIntentCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PendingIntent has been canceled, unregistering from client (host endpoint ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContextHubClientBroker"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->close()V

    .line 854
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_38
    return-void
.end method

.method private declared-synchronized invokeCallback(Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;)V
    .registers 6
    .param p1, "consumer"    # Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;

    monitor-enter p0

    .line 774
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2c

    if-eqz v0, :cond_2a

    .line 776
    :try_start_5
    invoke-interface {p1, v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;->accept(Landroid/hardware/location/IContextHubClientCallback;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_2c

    .line 780
    goto :goto_2a

    .line 777
    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubClientBroker;
    :catch_9
    move-exception v0

    .line 778
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_a
    const-string v1, "ContextHubClientBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException while invoking client callback (host endpoint ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_2c

    .line 782
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    :goto_2a
    monitor-exit p0

    return-void

    .line 773
    .end local p1    # "consumer":Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;
    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized isRegistered()Z
    .registers 2

    monitor-enter p0

    .line 860
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mRegistered:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 860
    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubClientBroker;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic lambda$onHubReset$6(Landroid/hardware/location/IContextHubClientCallback;)V
    .registers 1
    .param p0, "callback"    # Landroid/hardware/location/IContextHubClientCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 549
    invoke-interface {p0}, Landroid/hardware/location/IContextHubClientCallback;->onHubReset()V

    return-void
.end method

.method static synthetic lambda$onNanoAppAborted$8(JILandroid/hardware/location/IContextHubClientCallback;)V
    .registers 4
    .param p0, "nanoAppId"    # J
    .param p2, "abortCode"    # I
    .param p3, "callback"    # Landroid/hardware/location/IContextHubClientCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 563
    invoke-interface {p3, p0, p1, p2}, Landroid/hardware/location/IContextHubClientCallback;->onNanoAppAborted(JI)V

    return-void
.end method

.method static synthetic lambda$onNanoAppLoaded$2(JLandroid/hardware/location/IContextHubClientCallback;)V
    .registers 3
    .param p0, "nanoAppId"    # J
    .param p2, "callback"    # Landroid/hardware/location/IContextHubClientCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 529
    invoke-interface {p2, p0, p1}, Landroid/hardware/location/IContextHubClientCallback;->onNanoAppLoaded(J)V

    return-void
.end method

.method static synthetic lambda$onNanoAppUnloaded$4(JLandroid/hardware/location/IContextHubClientCallback;)V
    .registers 3
    .param p0, "nanoAppId"    # J
    .param p2, "callback"    # Landroid/hardware/location/IContextHubClientCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 540
    invoke-interface {p2, p0, p1}, Landroid/hardware/location/IContextHubClientCallback;->onNanoAppUnloaded(J)V

    return-void
.end method

.method static synthetic lambda$sendAuthStateCallback$10(JILandroid/hardware/location/IContextHubClientCallback;)V
    .registers 4
    .param p0, "nanoAppId"    # J
    .param p2, "authState"    # I
    .param p3, "callback"    # Landroid/hardware/location/IContextHubClientCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 760
    invoke-interface {p3, p0, p1, p2}, Landroid/hardware/location/IContextHubClientCallback;->onClientAuthorizationChanged(JI)V

    return-void
.end method

.method static synthetic lambda$sendMessageToClient$0(Landroid/hardware/location/NanoAppMessage;Landroid/hardware/location/IContextHubClientCallback;)V
    .registers 2
    .param p0, "message"    # Landroid/hardware/location/NanoAppMessage;
    .param p1, "callback"    # Landroid/hardware/location/IContextHubClientCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 511
    invoke-interface {p1, p0}, Landroid/hardware/location/IContextHubClientCallback;->onMessageFromNanoApp(Landroid/hardware/location/NanoAppMessage;)V

    return-void
.end method

.method private declared-synchronized onClientExit()V
    .registers 4

    monitor-enter p0

    .line 867
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 868
    invoke-interface {v0}, Landroid/hardware/location/IContextHubClientCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 869
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    .line 871
    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubClientBroker;
    :cond_10
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->hasPendingIntent()Z

    move-result v0

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mRegistered:Z

    if-eqz v0, :cond_25

    .line 872
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    iget-short v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {v0, v2}, Lcom/android/server/location/contexthub/ContextHubClientManager;->unregisterClient(S)V

    .line 873
    iput-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mRegistered:Z

    .line 875
    :cond_25
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p0}, Landroid/app/AppOpsManager;->stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 877
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    iget-short v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {v0, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onHostEndpointDisconnected(S)V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    .line 878
    monitor-exit p0

    return-void

    .line 866
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendAuthStateCallback(JI)V
    .registers 5
    .param p1, "nanoAppId"    # J
    .param p3, "authState"    # I

    .line 760
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda2;-><init>(JI)V

    invoke-direct {p0, v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;)V

    .line 762
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;JI)V

    .line 765
    .local v0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/Intent;>;"
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;J)V

    .line 766
    return-void
.end method

.method private sendHostEndpointConnectedEvent()V
    .registers 4

    .line 894
    new-instance v0, Landroid/hardware/contexthub/HostEndpointInfo;

    invoke-direct {v0}, Landroid/hardware/contexthub/HostEndpointInfo;-><init>()V

    .line 895
    .local v0, "info":Landroid/hardware/contexthub/HostEndpointInfo;
    iget-short v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    int-to-char v1, v1

    iput-char v1, v0, Landroid/hardware/contexthub/HostEndpointInfo;->hostEndpointId:C

    .line 896
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    iput-object v1, v0, Landroid/hardware/contexthub/HostEndpointInfo;->packageName:Ljava/lang/String;

    .line 897
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttributionTag:Ljava/lang/String;

    iput-object v1, v0, Landroid/hardware/contexthub/HostEndpointInfo;->attributionTag:Ljava/lang/String;

    .line 898
    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mUid:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1a

    .line 899
    const/4 v1, 0x1

    goto :goto_1b

    .line 900
    :cond_1a
    const/4 v1, 0x2

    :goto_1b
    iput v1, v0, Landroid/hardware/contexthub/HostEndpointInfo;->type:I

    .line 901
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v1, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onHostEndpointConnected(Landroid/hardware/contexthub/HostEndpointInfo;)V

    .line 902
    return-void
.end method

.method private declared-synchronized sendPendingIntent(Ljava/util/function/Supplier;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/Intent;>;"
    monitor-enter p0

    .line 817
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->hasPendingIntent()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 818
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->doSendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 820
    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubClientBroker;
    :cond_18
    monitor-exit p0

    return-void

    .line 816
    .end local p1    # "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/Intent;>;"
    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized sendPendingIntent(Ljava/util/function/Supplier;J)V
    .registers 6
    .param p2, "nanoAppId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/content/Intent;",
            ">;J)V"
        }
    .end annotation

    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/Intent;>;"
    monitor-enter p0

    .line 829
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->hasPendingIntent()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    .line 830
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->getNanoAppId()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-nez v0, :cond_22

    .line 831
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->doSendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 833
    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubClientBroker;
    :cond_22
    monitor-exit p0

    return-void

    .line 828
    .end local p1    # "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/Intent;>;"
    .end local p2    # "nanoAppId":J
    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private startMonitoringOpChanges()V
    .registers 4

    .line 358
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 359
    return-void
.end method

.method private updateNanoAppAuthState(JLjava/util/List;Z)I
    .registers 11
    .param p1, "nanoAppId"    # J
    .param p4, "gracePeriodExpired"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .line 679
    .local p3, "nanoappPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->updateNanoAppAuthState(JLjava/util/List;ZZ)I

    move-result v0

    return v0
.end method


# virtual methods
.method attachDeathRecipient()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    if-eqz v0, :cond_c

    .line 594
    invoke-interface {v0}, Landroid/hardware/location/IContextHubClientCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 596
    :cond_c
    return-void
.end method

.method public binderDied()V
    .registers 1

    .line 432
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->onClientExit()V

    .line 433
    return-void
.end method

.method public close()V
    .registers 2

    .line 416
    monitor-enter p0

    .line 417
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->clear()V

    .line 418
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b

    .line 419
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->onClientExit()V

    .line 420
    return-void

    .line 418
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method dump(Landroid/util/proto/ProtoOutputStream;)V
    .registers 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 913
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->getHostEndPointId()S

    move-result v0

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 914
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->getAttachedContextHubId()I

    move-result v0

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 915
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    const-wide v1, 0x10900000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 916
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->isValid()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 917
    const-wide v0, 0x10800000005L

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 918
    const-wide v0, 0x10300000004L

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->getNanoAppId()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 920
    :cond_41
    const-wide v0, 0x10800000006L

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->hasPendingIntent()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 921
    const-wide v0, 0x10800000007L

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->isPendingIntentCancelled()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 922
    const-wide v0, 0x10800000008L

    iget-boolean v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mRegistered:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 924
    return-void
.end method

.method getAttachedContextHubId()I
    .registers 2

    .line 467
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {v0}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v0

    return v0
.end method

.method getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 460
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method getHostEndPointId()S
    .registers 2

    .line 474
    iget-short v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    return v0
.end method

.method public getId()I
    .registers 2

    .line 424
    iget-short v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    return v0
.end method

.method getPackageName()Ljava/lang/String;
    .registers 2

    .line 445
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method handleAuthStateTimerExpiry(J)V
    .registers 6
    .param p1, "nanoAppId"    # J

    .line 654
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    monitor-enter v0

    .line 655
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mNappToAuthTimerMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/AuthStateDenialTimer;

    .line 656
    .local v1, "timer":Lcom/android/server/location/contexthub/AuthStateDenialTimer;
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1c

    .line 658
    if-eqz v1, :cond_1b

    .line 659
    nop

    .line 660
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    .line 659
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->updateNanoAppAuthState(JLjava/util/List;Z)I

    .line 663
    :cond_1b
    return-void

    .line 656
    .end local v1    # "timer":Lcom/android/server/location/contexthub/AuthStateDenialTimer;
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method hasPendingIntent(Landroid/app/PendingIntent;J)Z
    .registers 8
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "nanoAppId"    # J

    .line 577
    const/4 v0, 0x0

    .line 579
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    monitor-enter p0

    .line 580
    :try_start_2
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    move-object v0, v1

    .line 581
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->getNanoAppId()J

    move-result-wide v1

    .line 582
    .local v1, "intentNanoAppId":J
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_20

    .line 583
    if-eqz v0, :cond_1e

    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    cmp-long v3, v1, p2

    if-nez v3, :cond_1e

    const/4 v3, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    return v3

    .line 582
    .end local v1    # "intentNanoAppId":J
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method hasPermissions(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 605
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 606
    .local v1, "permission":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPid:I

    iget v4, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mUid:I

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1e

    .line 607
    const/4 v0, 0x0

    return v0

    .line 609
    .end local v1    # "permission":Ljava/lang/String;
    :cond_1e
    goto :goto_4

    .line 610
    :cond_1f
    const/4 v0, 0x1

    return v0
.end method

.method isPendingIntentCancelled()Z
    .registers 2

    .line 645
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mIsPendingIntentCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$onHubReset$7$com-android-server-location-contexthub-ContextHubClientBroker()Landroid/content/Intent;
    .registers 2

    .line 550
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->createIntent(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onNanoAppAborted$9$com-android-server-location-contexthub-ContextHubClientBroker(JI)Landroid/content/Intent;
    .registers 6
    .param p1, "nanoAppId"    # J
    .param p3, "abortCode"    # I

    .line 566
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->createIntent(IJ)Landroid/content/Intent;

    move-result-object v0

    .line 567
    const-string v1, "android.hardware.location.extra.NANOAPP_ABORT_CODE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 566
    return-object v0
.end method

.method synthetic lambda$onNanoAppLoaded$3$com-android-server-location-contexthub-ContextHubClientBroker(J)Landroid/content/Intent;
    .registers 4
    .param p1, "nanoAppId"    # J

    .line 531
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->createIntent(IJ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onNanoAppUnloaded$5$com-android-server-location-contexthub-ContextHubClientBroker(J)Landroid/content/Intent;
    .registers 4
    .param p1, "nanoAppId"    # J

    .line 542
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->createIntent(IJ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$sendAuthStateCallback$11$com-android-server-location-contexthub-ContextHubClientBroker(JI)Landroid/content/Intent;
    .registers 6
    .param p1, "nanoAppId"    # J
    .param p3, "authState"    # I

    .line 763
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->createIntent(IJ)Landroid/content/Intent;

    move-result-object v0

    .line 764
    const-string v1, "android.hardware.location.extra.CLIENT_AUTHORIZATION_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 763
    return-object v0
.end method

.method synthetic lambda$sendMessageToClient$1$com-android-server-location-contexthub-ContextHubClientBroker(JLandroid/hardware/location/NanoAppMessage;)Landroid/content/Intent;
    .registers 6
    .param p1, "nanoAppId"    # J
    .param p3, "message"    # Landroid/hardware/location/NanoAppMessage;

    .line 514
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->createIntent(IJ)Landroid/content/Intent;

    move-result-object v0

    .line 515
    const-string v1, "android.hardware.location.extra.MESSAGE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 514
    return-object v0
.end method

.method notePermissions(Ljava/util/List;Ljava/lang/String;)Z
    .registers 13
    .param p2, "noteMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 622
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 623
    .local v1, "permission":Ljava/lang/String;
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v8

    .line 624
    .local v8, "opCode":I
    const/4 v2, -0x1

    if-eq v8, v2, :cond_5e

    .line 626
    const/4 v9, 0x0

    :try_start_18
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v4, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mUid:I

    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttributionTag:Ljava/lang/String;

    move v3, v8

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_26
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_26} :catch_2a

    if-eqz v2, :cond_29

    .line 628
    return v9

    .line 634
    :cond_29
    goto :goto_5e

    .line 630
    :catch_2a
    move-exception v0

    .line 631
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecurityException: noteOp for pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " opcode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 632
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 631
    const-string v3, "ContextHubClientBroker"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    return v9

    .line 636
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v1    # "permission":Ljava/lang/String;
    .end local v8    # "opCode":I
    :cond_5e
    :goto_5e
    goto :goto_4

    .line 638
    :cond_5f
    const/4 v0, 0x1

    return v0
.end method

.method onHubReset()V
    .registers 2

    .line 549
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda8;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;)V

    .line 550
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;)V

    .line 553
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendHostEndpointConnectedEvent()V

    .line 554
    return-void
.end method

.method onNanoAppAborted(JI)V
    .registers 5
    .param p1, "nanoAppId"    # J
    .param p3, "abortCode"    # I

    .line 563
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda10;-><init>(JI)V

    invoke-direct {p0, v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;)V

    .line 565
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;JI)V

    .line 568
    .local v0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/Intent;>;"
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;J)V

    .line 569
    return-void
.end method

.method onNanoAppLoaded(J)V
    .registers 4
    .param p1, "nanoAppId"    # J

    .line 527
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->checkNanoappPermsAsync()V

    .line 529
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda6;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;)V

    .line 530
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;J)V

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;J)V

    .line 532
    return-void
.end method

.method onNanoAppUnloaded(J)V
    .registers 4
    .param p1, "nanoAppId"    # J

    .line 540
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda4;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;)V

    .line 541
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;J)V

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;J)V

    .line 543
    return-void
.end method

.method public onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 437
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 438
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 439
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->checkNanoappPermsAsync()V

    .line 442
    :cond_13
    return-void
.end method

.method sendMessageToClient(Landroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V
    .registers 12
    .param p1, "message"    # Landroid/hardware/location/NanoAppMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/NanoAppMessage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 489
    .local p2, "nanoappPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "messagePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v0

    .line 491
    .local v0, "nanoAppId":J
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->updateNanoAppAuthState(JLjava/util/List;Z)I

    move-result v2

    .line 496
    .local v2, "authState":I
    const-string v3, ". "

    const-string v4, "Dropping message from "

    const-string v5, "ContextHubClientBroker"

    const/4 v6, 0x1

    if-ne v2, v6, :cond_41

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_41

    .line 497
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in grace period and napp msg has permissions"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-void

    .line 504
    :cond_41
    if-eqz v2, :cond_6e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NanoappMessageDelivery "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 505
    invoke-virtual {p0, p3, v6}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->notePermissions(Ljava/util/List;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5d

    goto :goto_6e

    .line 511
    :cond_5d
    new-instance v3, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/location/NanoAppMessage;)V

    invoke-direct {p0, v3}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;)V

    .line 513
    new-instance v3, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;JLandroid/hardware/location/NanoAppMessage;)V

    .line 516
    .local v3, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/Intent;>;"
    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;J)V

    .line 517
    return-void

    .line 506
    .end local v3    # "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/Intent;>;"
    :cond_6e
    :goto_6e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t have permission"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    return-void
.end method

.method public sendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;)I
    .registers 7
    .param p1, "message"    # Landroid/hardware/location/NanoAppMessage;

    .line 372
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->checkPermissions(Landroid/content/Context;)V

    .line 375
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->isRegistered()Z

    move-result v0

    const-string v1, "ContextHubClientBroker"

    if-eqz v0, :cond_89

    .line 376
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    .line 377
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 376
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 378
    .local v0, "authState":I
    if-nez v0, :cond_50

    .line 379
    const-wide/32 v1, 0xacf3007

    invoke-static {v1, v2}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v1

    if-nez v1, :cond_33

    .line 385
    const/4 v1, 0x1

    return v1

    .line 380
    :cond_33
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client doesn\'t have valid permissions to send message to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 381
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 386
    :cond_50
    if-ne v0, v3, :cond_55

    .line 390
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->checkNanoappPermsAsync()V

    .line 394
    :cond_55
    :try_start_55
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    iget-short v3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    .line 395
    invoke-virtual {v4}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v4

    .line 394
    invoke-virtual {v2, v3, v4, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->sendMessageToContextHub(SILandroid/hardware/location/NanoAppMessage;)I

    move-result v1
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_63} :catch_64

    .line 400
    .local v1, "result":I
    goto :goto_88

    .line 396
    .end local v1    # "result":I
    :catch_64
    move-exception v2

    .line 397
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException in sendMessageToNanoApp (target hub ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    .line 398
    invoke-virtual {v4}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 397
    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    const/4 v1, 0x1

    .line 401
    .end local v0    # "authState":I
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v1    # "result":I
    :goto_88
    goto :goto_8f

    .line 402
    .end local v1    # "result":I
    :cond_89
    const-string v0, "Failed to send message to nanoapp: client connection is closed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v1, 0x1

    .line 406
    .restart local v1    # "result":I
    :goto_8f
    return v1
.end method

.method setAttributionTag(Ljava/lang/String;)V
    .registers 2
    .param p1, "attributionTag"    # Ljava/lang/String;

    .line 453
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttributionTag:Ljava/lang/String;

    .line 454
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 928
    const-string v0, "[ContextHubClient "

    .line 929
    .local v0, "out":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "endpointID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->getHostEndPointId()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 930
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "contextHub: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->getAttachedContextHubId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 931
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_65

    .line 932
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "attributionTag: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 934
    :cond_65
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->isValid()Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 935
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "intentCreatorPackage: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "nanoAppId: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->getNanoAppId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c8

    .line 938
    :cond_ae
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 940
    :goto_c8
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_163

    .line 941
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " messageChannelNanoappSet: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 942
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    .line 943
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 944
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    :goto_ed
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_150

    .line 945
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 946
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " auth state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 947
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->authStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 948
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14f

    .line 949
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 951
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_14f
    goto :goto_ed

    .line 952
    :cond_150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 954
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    :cond_163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 956
    return-object v0
.end method

.method updateNanoAppAuthState(JLjava/util/List;ZZ)I
    .registers 14
    .param p1, "nanoAppId"    # J
    .param p4, "gracePeriodExpired"    # Z
    .param p5, "forceDenied"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)I"
        }
    .end annotation

    .line 700
    .local p3, "nanoappPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    monitor-enter v0

    .line 703
    :try_start_3
    invoke-virtual {p0, p3}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->hasPermissions(Ljava/util/List;)Z

    move-result v1

    .line 705
    .local v1, "hasPermissions":Z
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    .line 706
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 705
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 707
    .local v2, "curAuthState":I
    const/4 v3, 0x2

    if-ne v2, v4, :cond_2d

    .line 711
    const/4 v2, 0x2

    .line 712
    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    :cond_2d
    move v4, v2

    .line 721
    .local v4, "newAuthState":I
    const/4 v5, 0x1

    if-nez p5, :cond_50

    iget-object v6, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mForceDeniedNapps:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3e

    goto :goto_50

    .line 724
    :cond_3e
    if-eqz p4, :cond_44

    .line 725
    if-ne v2, v5, :cond_5a

    .line 726
    const/4 v4, 0x0

    goto :goto_5a

    .line 729
    :cond_44
    if-ne v2, v3, :cond_4a

    if-nez v1, :cond_4a

    .line 730
    const/4 v4, 0x1

    goto :goto_5a

    .line 731
    :cond_4a
    if-eq v2, v3, :cond_5a

    if-eqz v1, :cond_5a

    .line 732
    const/4 v4, 0x2

    goto :goto_5a

    .line 722
    :cond_50
    :goto_50
    const/4 v4, 0x0

    .line 723
    iget-object v6, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mForceDeniedNapps:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 736
    :cond_5a
    :goto_5a
    if-eq v4, v5, :cond_6e

    .line 737
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mNappToAuthTimerMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/contexthub/AuthStateDenialTimer;

    .line 738
    .local v3, "timer":Lcom/android/server/location/contexthub/AuthStateDenialTimer;
    if-eqz v3, :cond_86

    .line 739
    invoke-virtual {v3}, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->cancel()V

    goto :goto_86

    .line 741
    .end local v3    # "timer":Lcom/android/server/location/contexthub/AuthStateDenialTimer;
    :cond_6e
    if-ne v2, v3, :cond_86

    .line 742
    new-instance v3, Lcom/android/server/location/contexthub/AuthStateDenialTimer;

    .line 743
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, p0, p1, p2, v5}, Lcom/android/server/location/contexthub/AuthStateDenialTimer;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;JLandroid/os/Looper;)V

    .line 744
    .restart local v3    # "timer":Lcom/android/server/location/contexthub/AuthStateDenialTimer;
    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mNappToAuthTimerMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    invoke-virtual {v3}, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->start()V

    goto :goto_87

    .line 741
    .end local v3    # "timer":Lcom/android/server/location/contexthub/AuthStateDenialTimer;
    :cond_86
    :goto_86
    nop

    .line 748
    :goto_87
    if-eq v2, v4, :cond_96

    .line 749
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    .end local v1    # "hasPermissions":Z
    :cond_96
    monitor-exit v0
    :try_end_97
    .catchall {:try_start_3 .. :try_end_97} :catchall_9d

    .line 752
    if-eq v2, v4, :cond_9c

    .line 754
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendAuthStateCallback(JI)V

    .line 756
    :cond_9c
    return v4

    .line 751
    .end local v2    # "curAuthState":I
    .end local v4    # "newAuthState":I
    :catchall_9d
    move-exception v1

    :try_start_9e
    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw v1
.end method
