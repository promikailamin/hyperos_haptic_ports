.class final Landroid/media/MediaRouter2$SystemSessionOverridesListenerRecord;
.super Ljava/lang/Record;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SystemSessionOverridesListenerRecord"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {}
    }
    componentAnnotations = {
        {},
        {}
    }
    componentNames = {
        "mExecutor",
        "mSystemSessionOverridesListener"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        Ljava/util/concurrent/Executor;,
        Landroid/media/MediaRouter2$SystemSessionOverridesListener;
    }
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mSystemSessionOverridesListener:Landroid/media/MediaRouter2$SystemSessionOverridesListener;


# direct methods
.method private synthetic blacklist $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/media/MediaRouter2$SystemSessionOverridesListenerRecord;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/media/MediaRouter2$SystemSessionOverridesListenerRecord;->mSystemSessionOverridesListener:Landroid/media/MediaRouter2$SystemSessionOverridesListener;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/media/MediaRouter2$SystemSessionOverridesListenerRecord;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2$SystemSessionOverridesListenerRecord;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSystemSessionOverridesListener(Landroid/media/MediaRouter2$SystemSessionOverridesListenerRecord;)Landroid/media/MediaRouter2$SystemSessionOverridesListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2$SystemSessionOverridesListenerRecord;->mSystemSessionOverridesListener:Landroid/media/MediaRouter2$SystemSessionOverridesListener;

    return-object p0
.end method

.method private constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$SystemSessionOverridesListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mExecutor",
            "mSystemSessionOverridesListener"
        }
    .end annotation

    .line 2638
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Landroid/media/MediaRouter2$SystemSessionOverridesListenerRecord;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/media/MediaRouter2$SystemSessionOverridesListenerRecord;->mSystemSessionOverridesListener:Landroid/media/MediaRouter2$SystemSessionOverridesListener;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$SystemSessionOverridesListener;Landroid/media/MediaRouter2-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2$SystemSessionOverridesListenerRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$SystemSessionOverridesListener;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 2643
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2644
    return v0

    .line 2646
    :cond_4
    instance-of v1, p1, Landroid/media/MediaRouter2$SystemSessionOverridesListenerRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 2647
    return v2

    .line 2649
    :cond_a
    iget-object v1, p0, Landroid/media/MediaRouter2$SystemSessionOverridesListenerRecord;->mSystemSessionOverridesListener:Landroid/media/MediaRouter2$SystemSessionOverridesListener;

    check-cast p1, Landroid/media/MediaRouter2$SystemSessionOverridesListenerRecord;

    iget-object p1, p1, Landroid/media/MediaRouter2$SystemSessionOverridesListenerRecord;->mSystemSessionOverridesListener:Landroid/media/MediaRouter2$SystemSessionOverridesListener;

    if-ne v1, p1, :cond_13

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 2655
    iget-object v0, p0, Landroid/media/MediaRouter2$SystemSessionOverridesListenerRecord;->mSystemSessionOverridesListener:Landroid/media/MediaRouter2$SystemSessionOverridesListener;

    invoke-interface {v0}, Landroid/media/MediaRouter2$SystemSessionOverridesListener;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist mExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 2638
    iget-object v0, p0, Landroid/media/MediaRouter2$SystemSessionOverridesListenerRecord;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public blacklist mSystemSessionOverridesListener()Landroid/media/MediaRouter2$SystemSessionOverridesListener;
    .registers 2

    .line 2638
    iget-object v0, p0, Landroid/media/MediaRouter2$SystemSessionOverridesListenerRecord;->mSystemSessionOverridesListener:Landroid/media/MediaRouter2$SystemSessionOverridesListener;

    return-object v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 2638
    invoke-direct {p0}, Landroid/media/MediaRouter2$SystemSessionOverridesListenerRecord;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Landroid/media/MediaRouter2$SystemSessionOverridesListenerRecord;

    const-string v2, "mExecutor;mSystemSessionOverridesListener"

    invoke-static {v0, v1, v2}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
