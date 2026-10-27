.class public interface abstract Lcom/miui/internal/os/MiuiHooks$IResolverActivity;
.super Ljava/lang/Object;
.source "MiuiHooks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/os/MiuiHooks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IResolverActivity"
.end annotation


# virtual methods
.method public abstract blacklist getReferrerPackage()Ljava/lang/String;
.end method

.method public abstract blacklist onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverListAdapter;)V
.end method

.method public abstract blacklist setRegistered(Z)V
.end method
