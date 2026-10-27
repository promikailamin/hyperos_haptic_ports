.class final Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;
.super Ljava/lang/Object;
.source "LocationTimeZoneManagerServiceState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private mControllerState:Ljava/lang/String;

.field private mControllerStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSuggestion:Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

.field private mPrimaryProviderStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondaryProviderStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmControllerState(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mControllerState:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmControllerStates(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mControllerStates:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastSuggestion(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;)Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    .registers 1

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mLastSuggestion:Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrimaryProviderStates(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mPrimaryProviderStates:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSecondaryProviderStates(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mSecondaryProviderStates:Ljava/util/List;

    return-object p0
.end method

.method constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method build()Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;
    .registers 2

    .line 124
    new-instance v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;)V

    return-object v0
.end method

.method public setControllerState(Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;
    .registers 2
    .param p1, "stateEnum"    # Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mControllerState:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method setLastSuggestion(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;
    .registers 3
    .param p1, "lastSuggestion"    # Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    .line 99
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mLastSuggestion:Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    .line 100
    return-object p0
.end method

.method setPrimaryProviderStateChanges(Ljava/util/List;)Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;",
            ">;)",
            "Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;"
        }
    .end annotation

    .line 111
    .local p1, "primaryProviderStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mPrimaryProviderStates:Ljava/util/List;

    .line 112
    return-object p0
.end method

.method setSecondaryProviderStateChanges(Ljava/util/List;)Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;",
            ">;)",
            "Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;"
        }
    .end annotation

    .line 118
    .local p1, "secondaryProviderStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mSecondaryProviderStates:Ljava/util/List;

    .line 119
    return-object p0
.end method

.method public setStateChanges(Ljava/util/List;)Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;"
        }
    .end annotation

    .line 105
    .local p1, "states":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mControllerStates:Ljava/util/List;

    .line 106
    return-object p0
.end method
