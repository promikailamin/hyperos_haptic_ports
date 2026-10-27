.class public Landroid/flags/FeatureFlagsFake;
.super Landroid/flags/FeatureFlags;
.source "FeatureFlagsFake.java"


# instance fields
.field private final blacklist mFlagValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/flags/BooleanFlagBase;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mReadFlags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/flags/BooleanFlagBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/flags/IFeatureFlags;)V
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Landroid/flags/FeatureFlags;-><init>(Landroid/flags/IFeatureFlags;)V

    .line 40
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/flags/FeatureFlagsFake;->mFlagValues:Ljava/util/Map;

    .line 41
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroid/flags/FeatureFlagsFake;->mReadFlags:Ljava/util/Set;

    .line 45
    return-void
.end method

.method private blacklist requireFlag(Landroid/flags/BooleanFlagBase;)Z
    .registers 5

    .line 105
    iget-object v0, p0, Landroid/flags/FeatureFlagsFake;->mFlagValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 110
    iget-object v0, p0, Landroid/flags/FeatureFlagsFake;->mReadFlags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Landroid/flags/FeatureFlagsFake;->mFlagValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 106
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to access "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " in test but no overrided specified. You must call #setFlagValue for each flag read in a test."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist isCurrentlyEnabled(Landroid/flags/DynamicBooleanFlag;)Z
    .registers 2

    .line 64
    invoke-direct {p0, p1}, Landroid/flags/FeatureFlagsFake;->requireFlag(Landroid/flags/BooleanFlagBase;)Z

    move-result p1

    return p1
.end method

.method public blacklist isEnabled(Landroid/flags/BooleanFlag;)Z
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Landroid/flags/FeatureFlagsFake;->requireFlag(Landroid/flags/BooleanFlagBase;)Z

    move-result p1

    return p1
.end method

.method public blacklist isEnabled(Landroid/flags/FusedOffFlag;)Z
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Landroid/flags/FeatureFlagsFake;->requireFlag(Landroid/flags/BooleanFlagBase;)Z

    move-result p1

    return p1
.end method

.method public blacklist isEnabled(Landroid/flags/FusedOnFlag;)Z
    .registers 2

    .line 59
    invoke-direct {p0, p1}, Landroid/flags/FeatureFlagsFake;->requireFlag(Landroid/flags/BooleanFlagBase;)Z

    move-result p1

    return p1
.end method

.method public blacklist setFlagValue(Landroid/flags/BooleanFlagBase;Z)V
    .registers 6

    .line 93
    instance-of v0, p1, Landroid/flags/DynamicBooleanFlag;

    if-nez v0, :cond_40

    iget-object v1, p0, Landroid/flags/FeatureFlagsFake;->mReadFlags:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_40

    .line 94
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You can not set the value of a flag after it has been read. Tried to set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " but it already "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Landroid/flags/FeatureFlagsFake;->mFlagValues:Ljava/util/Map;

    .line 96
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_40
    :goto_40
    iget-object v1, p0, Landroid/flags/FeatureFlagsFake;->mFlagValues:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    if-eqz v0, :cond_50

    .line 100
    check-cast p1, Landroid/flags/DynamicFlag;

    invoke-virtual {p0, p1}, Landroid/flags/FeatureFlagsFake;->onFlagChange(Landroid/flags/DynamicFlag;)V

    .line 102
    :cond_50
    return-void
.end method

.method protected blacklist syncInternal(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/flags/Flag<",
            "*>;>;)V"
        }
    .end annotation

    .line 69
    return-void
.end method
