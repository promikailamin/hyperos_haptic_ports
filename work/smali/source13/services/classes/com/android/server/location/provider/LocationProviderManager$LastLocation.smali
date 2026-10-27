.class Lcom/android/server/location/provider/LocationProviderManager$LastLocation;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/provider/LocationProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LastLocation"
.end annotation


# instance fields
.field private mCoarseBypassLocation:Landroid/location/Location;

.field private mCoarseLocation:Landroid/location/Location;

.field private mFineBypassLocation:Landroid/location/Location;

.field private mFineLocation:Landroid/location/Location;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculateNextCoarse(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;
    .registers 7
    .param p1, "oldCoarse"    # Landroid/location/Location;
    .param p2, "newCoarse"    # Landroid/location/Location;

    .line 2984
    if-nez p1, :cond_3

    .line 2985
    return-object p2

    .line 2989
    :cond_3
    invoke-virtual {p2}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    sub-long/2addr v0, v2

    .line 2990
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    .line 2991
    return-object p2

    .line 2993
    :cond_14
    return-object p1
.end method

.method private calculateNextFine(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;
    .registers 7
    .param p1, "oldFine"    # Landroid/location/Location;
    .param p2, "newFine"    # Landroid/location/Location;

    .line 2971
    if-nez p1, :cond_3

    .line 2972
    return-object p2

    .line 2976
    :cond_3
    invoke-virtual {p2}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    .line 2977
    return-object p2

    .line 2979
    :cond_10
    return-object p1
.end method


# virtual methods
.method public clearLocations()V
    .registers 2

    .line 2935
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineLocation:Landroid/location/Location;

    .line 2936
    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseLocation:Landroid/location/Location;

    .line 2937
    return-void
.end method

.method public clearMock()V
    .registers 3

    .line 2920
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineLocation:Landroid/location/Location;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/location/Location;->isMock()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2921
    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineLocation:Landroid/location/Location;

    .line 2923
    :cond_d
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseLocation:Landroid/location/Location;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/location/Location;->isMock()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2924
    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseLocation:Landroid/location/Location;

    .line 2926
    :cond_19
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineBypassLocation:Landroid/location/Location;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/location/Location;->isMock()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2927
    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineBypassLocation:Landroid/location/Location;

    .line 2929
    :cond_25
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseBypassLocation:Landroid/location/Location;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/location/Location;->isMock()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2930
    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseBypassLocation:Landroid/location/Location;

    .line 2932
    :cond_31
    return-void
.end method

.method public get(IZ)Landroid/location/Location;
    .registers 4
    .param p1, "permissionLevel"    # I
    .param p2, "isBypass"    # Z

    .line 2941
    packed-switch p1, :pswitch_data_1a

    .line 2956
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2943
    :pswitch_9
    if-eqz p2, :cond_e

    .line 2944
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineBypassLocation:Landroid/location/Location;

    return-object v0

    .line 2946
    :cond_e
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineLocation:Landroid/location/Location;

    return-object v0

    .line 2949
    :pswitch_11
    if-eqz p2, :cond_16

    .line 2950
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseBypassLocation:Landroid/location/Location;

    return-object v0

    .line 2952
    :cond_16
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseLocation:Landroid/location/Location;

    return-object v0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_11
        :pswitch_9
    .end packed-switch
.end method

.method public set(Landroid/location/Location;)V
    .registers 3
    .param p1, "location"    # Landroid/location/Location;

    .line 2961
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineLocation:Landroid/location/Location;

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->calculateNextFine(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineLocation:Landroid/location/Location;

    .line 2962
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseLocation:Landroid/location/Location;

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->calculateNextCoarse(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseLocation:Landroid/location/Location;

    .line 2963
    return-void
.end method

.method public setBypass(Landroid/location/Location;)V
    .registers 3
    .param p1, "location"    # Landroid/location/Location;

    .line 2966
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineBypassLocation:Landroid/location/Location;

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->calculateNextFine(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineBypassLocation:Landroid/location/Location;

    .line 2967
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseBypassLocation:Landroid/location/Location;

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->calculateNextCoarse(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseBypassLocation:Landroid/location/Location;

    .line 2968
    return-void
.end method
