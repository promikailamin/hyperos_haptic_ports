.class public Lcom/android/server/devicepolicy/ResolvedPolicy;
.super Ljava/lang/Object;
.source "ResolvedPolicy.java"


# instance fields
.field public final mContributingAdmins:Ljava/util/Set;

.field public final mResolvedPolicyValue:Landroid/app/admin/PolicyValue;


# direct methods
.method public constructor <init>(Landroid/app/admin/PolicyValue;Ljava/util/Set;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/server/devicepolicy/ResolvedPolicy;->mResolvedPolicyValue:Landroid/app/admin/PolicyValue;

    .line 30
    iput-object p2, p0, Lcom/android/server/devicepolicy/ResolvedPolicy;->mContributingAdmins:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map$Entry;)V
    .registers 3

    .line 34
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/PolicyValue;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/devicepolicy/EnforcingAdmin;

    invoke-static {p1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/devicepolicy/ResolvedPolicy;-><init>(Landroid/app/admin/PolicyValue;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public getContributingAdmins()Ljava/util/Set;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/android/server/devicepolicy/ResolvedPolicy;->mContributingAdmins:Ljava/util/Set;

    return-object p0
.end method

.method public getResolvedPolicyValue()Landroid/app/admin/PolicyValue;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/android/server/devicepolicy/ResolvedPolicy;->mResolvedPolicyValue:Landroid/app/admin/PolicyValue;

    return-object p0
.end method
