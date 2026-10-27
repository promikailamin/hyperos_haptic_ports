.class public final Landroid/content/AttributionSource$Builder;
.super Ljava/lang/Object;
.source "AttributionSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/AttributionSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mAttributionSourceState:Landroid/content/AttributionSourceState;

.field private blacklist mHasBeenUsed:Z


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3

    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 646
    new-instance v0, Landroid/content/AttributionSourceState;

    invoke-direct {v0}, Landroid/content/AttributionSourceState;-><init>()V

    iput-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    .line 656
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput p1, v0, Landroid/content/AttributionSourceState;->uid:I

    .line 657
    iget-object p1, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    const/4 v0, -0x1

    iput v0, p1, Landroid/content/AttributionSourceState;->pid:I

    .line 658
    iget-object p1, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    const/4 v0, 0x0

    iput v0, p1, Landroid/content/AttributionSourceState;->deviceId:I

    .line 659
    iget-object p1, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-static {}, Landroid/content/AttributionSource;->-$$Nest$sfgetsDefaultToken()Landroid/os/Binder;

    move-result-object v0

    iput-object v0, p1, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    .line 660
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/AttributionSource;)V
    .registers 4

    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 646
    new-instance v0, Landroid/content/AttributionSourceState;

    invoke-direct {v0}, Landroid/content/AttributionSourceState;-><init>()V

    iput-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    .line 669
    if-eqz p1, :cond_51

    .line 672
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    iput v1, v0, Landroid/content/AttributionSourceState;->uid:I

    .line 673
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPid()I

    move-result v1

    iput v1, v0, Landroid/content/AttributionSourceState;->pid:I

    .line 674
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    .line 675
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    .line 676
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-static {p1}, Landroid/content/AttributionSource;->-$$Nest$fgetmAttributionSourceState(Landroid/content/AttributionSource;)Landroid/content/AttributionSourceState;

    move-result-object v1

    iget-object v1, v1, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    .line 678
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v1

    iput v1, v0, Landroid/content/AttributionSourceState;->deviceId:I

    .line 679
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-static {p1}, Landroid/content/AttributionSource;->-$$Nest$fgetmAttributionSourceState(Landroid/content/AttributionSource;)Landroid/content/AttributionSourceState;

    move-result-object v1

    iget-object v1, v1, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    iput-object v1, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    .line 680
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, v0, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    .line 681
    return-void

    .line 670
    :cond_51
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "current AttributionSource can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist checkNotUsed()V
    .registers 3

    .line 798
    iget-boolean v0, p0, Landroid/content/AttributionSource$Builder;->mHasBeenUsed:Z

    if-nez v0, :cond_5

    .line 802
    return-void

    .line 799
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/content/AttributionSource;
    .registers 3

    .line 787
    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    .line 788
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/AttributionSource$Builder;->mHasBeenUsed:Z

    .line 790
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    if-nez v0, :cond_13

    .line 792
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/AttributionSourceState;

    iput-object v1, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    .line 794
    :cond_13
    new-instance v0, Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-direct {v0, v1}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    return-object v0
.end method

.method public whitelist setAttributionTag(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;
    .registers 3

    .line 709
    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    .line 710
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput-object p1, v0, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    .line 711
    return-object p0
.end method

.method public whitelist setDeviceId(I)Landroid/content/AttributionSource$Builder;
    .registers 3

    .line 756
    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    .line 757
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput p1, v0, Landroid/content/AttributionSourceState;->deviceId:I

    .line 758
    return-object p0
.end method

.method public whitelist setNext(Landroid/content/AttributionSource;)Landroid/content/AttributionSource$Builder;
    .registers 5

    .line 765
    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    .line 766
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    if-eqz p1, :cond_12

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/AttributionSourceState;

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/content/AttributionSource;->-$$Nest$fgetmAttributionSourceState(Landroid/content/AttributionSource;)Landroid/content/AttributionSourceState;

    move-result-object p1

    aput-object p1, v1, v2

    goto :goto_16

    .line 767
    :cond_12
    iget-object p1, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v1, p1, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    :goto_16
    iput-object v1, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    .line 768
    return-object p0
.end method

.method public blacklist setNextAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource$Builder;
    .registers 5

    .line 776
    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    .line 777
    if-eqz p1, :cond_14

    .line 780
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/AttributionSourceState;

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/content/AttributionSource;->-$$Nest$fgetmAttributionSourceState(Landroid/content/AttributionSource;)Landroid/content/AttributionSourceState;

    move-result-object p1

    aput-object p1, v1, v2

    iput-object v1, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    .line 782
    return-object p0

    .line 778
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null AttributionSource not permitted."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setPackageName(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;
    .registers 3

    .line 700
    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    .line 701
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput-object p1, v0, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    .line 702
    return-object p0
.end method

.method public whitelist setPid(I)Landroid/content/AttributionSource$Builder;
    .registers 3

    .line 691
    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    .line 692
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput p1, v0, Landroid/content/AttributionSourceState;->pid:I

    .line 693
    return-object p0
.end method

.method public whitelist setRenouncedPermissions(Ljava/util/Set;)Landroid/content/AttributionSource$Builder;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/AttributionSource$Builder;"
        }
    .end annotation

    .line 742
    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    .line 743
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    if-eqz p1, :cond_11

    .line 744
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    iput-object p1, v0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    .line 745
    return-object p0
.end method
