.class public final Lcom/android/server/devicepolicy/MostRecent;
.super Lcom/android/server/devicepolicy/ResolutionMechanism;
.source "MostRecent.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/android/server/devicepolicy/ResolutionMechanism;-><init>()V

    return-void
.end method


# virtual methods
.method public getParcelableResolutionMechanism()Landroid/app/admin/MostRecent;
    .registers 1

    .line 37
    new-instance p0, Landroid/app/admin/MostRecent;

    invoke-direct {p0}, Landroid/app/admin/MostRecent;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getParcelableResolutionMechanism()Landroid/app/admin/ResolutionMechanism;
    .registers 1

    .line 26
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/MostRecent;->getParcelableResolutionMechanism()Landroid/app/admin/MostRecent;

    move-result-object p0

    return-object p0
.end method

.method public resolve(Ljava/util/LinkedHashMap;)Lcom/android/server/devicepolicy/ResolvedPolicy;
    .registers 2

    .line 31
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 32
    :cond_8
    new-instance p1, Lcom/android/server/devicepolicy/ResolvedPolicy;

    invoke-direct {p1, p0}, Lcom/android/server/devicepolicy/ResolvedPolicy;-><init>(Ljava/util/Map$Entry;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 42
    const-string p0, "MostRecent {}"

    return-object p0
.end method
