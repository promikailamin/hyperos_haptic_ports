.class public final Landroid/hardware/lights/LightsRequest;
.super Ljava/lang/Object;
.source "LightsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/lights/LightsRequest$Builder;
    }
.end annotation


# instance fields
.field final blacklist mLightIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mLightStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/lights/LightState;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/lights/Light;",
            "Landroid/hardware/lights/LightState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/hardware/lights/Light;",
            "Landroid/hardware/lights/LightState;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/lights/LightsRequest;->mRequests:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/lights/LightsRequest;->mLightIds:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/lights/LightsRequest;->mLightStates:Ljava/util/List;

    .line 43
    iget-object v0, p0, Landroid/hardware/lights/LightsRequest;->mRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/hardware/lights/LightsRequest;->mRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 45
    const/4 v0, 0x0

    :goto_29
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_52

    .line 46
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/lights/Light;

    .line 47
    iget-object v2, p0, Landroid/hardware/lights/LightsRequest;->mLightIds:Ljava/util/List;

    invoke-virtual {v1}, Landroid/hardware/lights/Light;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 48
    iget-object v2, p0, Landroid/hardware/lights/LightsRequest;->mLightStates:Ljava/util/List;

    iget-object v3, p0, Landroid/hardware/lights/LightsRequest;->mRequests:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/lights/LightState;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 50
    :cond_52
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Map;Landroid/hardware/lights/LightsRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/lights/LightsRequest;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public whitelist getLightStates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/lights/LightState;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Landroid/hardware/lights/LightsRequest;->mLightStates:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getLights()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Landroid/hardware/lights/LightsRequest;->mLightIds:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getLightsAndStates()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/hardware/lights/Light;",
            "Landroid/hardware/lights/LightState;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Landroid/hardware/lights/LightsRequest;->mRequests:Ljava/util/Map;

    return-object v0
.end method
