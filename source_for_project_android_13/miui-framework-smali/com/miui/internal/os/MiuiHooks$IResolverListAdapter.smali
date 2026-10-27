.class public interface abstract Lcom/miui/internal/os/MiuiHooks$IResolverListAdapter;
.super Ljava/lang/Object;
.source "MiuiHooks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/os/MiuiHooks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IResolverListAdapter"
.end annotation


# virtual methods
.method public abstract blacklist getPlaceholderCount()I
.end method

.method public abstract blacklist getRecommendItem()Lcom/android/internal/app/chooser/TargetInfo;
.end method

.method public abstract blacklist getUnfilteredResolveList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation
.end method
