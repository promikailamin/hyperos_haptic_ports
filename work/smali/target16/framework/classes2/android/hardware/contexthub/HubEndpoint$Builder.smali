.class public final Landroid/hardware/contexthub/HubEndpoint$Builder;
.super Ljava/lang/Object;
.source "HubEndpoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/HubEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mLifecycleCallback:Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

.field private blacklist mLifecycleCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mMainExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mMessageCallback:Landroid/hardware/contexthub/HubEndpointMessageCallback;

.field private blacklist mMessageCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private blacklist mServiceInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/HubServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTag:Ljava/lang/String;

.field private blacklist mVersion:I


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mServiceInfos:Ljava/util/List;

    .line 485
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mPackageName:Ljava/lang/String;

    .line 486
    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mTag:Ljava/lang/String;

    .line 487
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    long-to-int v0, v0

    iput v0, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mVersion:I

    .line 488
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 489
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/contexthub/HubEndpoint;
    .registers 8

    .line 577
    new-instance v0, Landroid/hardware/contexthub/HubEndpoint;

    new-instance v1, Landroid/hardware/contexthub/HubEndpointInfo;

    iget-object v2, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mPackageName:Ljava/lang/String;

    iget v3, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mVersion:I

    iget-object v4, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mTag:Ljava/lang/String;

    iget-object v5, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mServiceInfos:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/hardware/contexthub/HubEndpointInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    iget-object v2, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mLifecycleCallback:Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    .line 580
    iget-object v3, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mLifecycleCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v3, :cond_18

    iget-object v3, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mLifecycleCallbackExecutor:Ljava/util/concurrent/Executor;

    goto :goto_1a

    :cond_18
    iget-object v3, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mMainExecutor:Ljava/util/concurrent/Executor;

    :goto_1a
    iget-object v4, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mMessageCallback:Landroid/hardware/contexthub/HubEndpointMessageCallback;

    .line 582
    iget-object v5, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mMessageCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v5, :cond_23

    iget-object v5, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mMessageCallbackExecutor:Ljava/util/concurrent/Executor;

    goto :goto_25

    :cond_23
    iget-object v5, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mMainExecutor:Ljava/util/concurrent/Executor;

    :goto_25
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/hardware/contexthub/HubEndpoint;-><init>(Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/HubEndpointLifecycleCallback;Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointMessageCallback;Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpoint-IA;)V

    .line 577
    return-object v0
.end method

.method public whitelist setLifecycleCallback(Landroid/hardware/contexthub/HubEndpointLifecycleCallback;)Landroid/hardware/contexthub/HubEndpoint$Builder;
    .registers 3

    .line 520
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mLifecycleCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 521
    iput-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mLifecycleCallback:Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    .line 522
    return-object p0
.end method

.method public whitelist setLifecycleCallback(Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointLifecycleCallback;)Landroid/hardware/contexthub/HubEndpoint$Builder;
    .registers 3

    .line 533
    iput-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mLifecycleCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 534
    iput-object p2, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mLifecycleCallback:Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    .line 535
    return-object p0
.end method

.method public whitelist setMessageCallback(Landroid/hardware/contexthub/HubEndpointMessageCallback;)Landroid/hardware/contexthub/HubEndpoint$Builder;
    .registers 3

    .line 544
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mMessageCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 545
    iput-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mMessageCallback:Landroid/hardware/contexthub/HubEndpointMessageCallback;

    .line 546
    return-object p0
.end method

.method public whitelist setMessageCallback(Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointMessageCallback;)Landroid/hardware/contexthub/HubEndpoint$Builder;
    .registers 3

    .line 557
    iput-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mMessageCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 558
    iput-object p2, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mMessageCallback:Landroid/hardware/contexthub/HubEndpointMessageCallback;

    .line 559
    return-object p0
.end method

.method public whitelist setServiceInfoCollection(Ljava/util/Collection;)Landroid/hardware/contexthub/HubEndpoint$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/contexthub/HubServiceInfo;",
            ">;)",
            "Landroid/hardware/contexthub/HubEndpoint$Builder;"
        }
    .end annotation

    .line 570
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mServiceInfos:Ljava/util/List;

    .line 571
    return-object p0
.end method

.method public whitelist setTag(Ljava/lang/String;)Landroid/hardware/contexthub/HubEndpoint$Builder;
    .registers 2

    .line 509
    iput-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mTag:Ljava/lang/String;

    .line 510
    return-object p0
.end method

.method public blacklist setVersion(I)Landroid/hardware/contexthub/HubEndpoint$Builder;
    .registers 2

    .line 498
    iput p1, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mVersion:I

    .line 499
    return-object p0
.end method
