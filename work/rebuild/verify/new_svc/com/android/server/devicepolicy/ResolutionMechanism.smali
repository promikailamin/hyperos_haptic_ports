.class public abstract Lcom/android/server/devicepolicy/ResolutionMechanism;
.super Ljava/lang/Object;
.source "ResolutionMechanism.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getParcelableResolutionMechanism()Landroid/app/admin/ResolutionMechanism;
.end method

.method public abstract resolve(Ljava/util/LinkedHashMap;)Lcom/android/server/devicepolicy/ResolvedPolicy;
.end method
