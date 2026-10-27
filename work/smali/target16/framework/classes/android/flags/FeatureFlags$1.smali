.class Landroid/flags/FeatureFlags$1;
.super Landroid/flags/IFeatureFlagsCallback$Stub;
.source "FeatureFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/flags/FeatureFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/flags/FeatureFlags;


# direct methods
.method constructor blacklist <init>(Landroid/flags/FeatureFlags;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 80
    iput-object p1, p0, Landroid/flags/FeatureFlags$1;->this$0:Landroid/flags/FeatureFlags;

    invoke-direct {p0}, Landroid/flags/IFeatureFlagsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFlagChange(Landroid/flags/SyncableFlag;)V
    .registers 6

    .line 83
    iget-object v0, p0, Landroid/flags/FeatureFlags$1;->this$0:Landroid/flags/FeatureFlags;

    invoke-static {v0}, Landroid/flags/FeatureFlags;->-$$Nest$fgetmKnownFlags(Landroid/flags/FeatureFlags;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/flags/Flag;

    .line 84
    invoke-static {v1, p1}, Landroid/flags/FeatureFlags;->-$$Nest$smflagEqualsSyncableFlag(Landroid/flags/Flag;Landroid/flags/SyncableFlag;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 85
    instance-of v0, v1, Landroid/flags/DynamicFlag;

    if-eqz v0, :cond_4b

    .line 86
    instance-of v0, v1, Landroid/flags/DynamicBooleanFlag;

    if-eqz v0, :cond_42

    .line 87
    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 88
    if-nez v0, :cond_35

    .line 89
    move-object v0, v1

    check-cast v0, Landroid/flags/DynamicBooleanFlag;

    invoke-virtual {v0}, Landroid/flags/DynamicBooleanFlag;->getDefault()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_35
    iget-object v2, p0, Landroid/flags/FeatureFlags$1;->this$0:Landroid/flags/FeatureFlags;

    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1, v0}, Landroid/flags/FeatureFlags;->-$$Nest$maddBooleanOverride(Landroid/flags/FeatureFlags;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_42
    iget-object p1, p0, Landroid/flags/FeatureFlags$1;->this$0:Landroid/flags/FeatureFlags;

    check-cast v1, Landroid/flags/DynamicFlag;

    invoke-virtual {p1, v1}, Landroid/flags/FeatureFlags;->onFlagChange(Landroid/flags/DynamicFlag;)V

    goto :goto_4b

    .line 97
    :cond_4a
    goto :goto_a

    .line 98
    :cond_4b
    :goto_4b
    return-void
.end method
