.class public abstract Lcom/android/server/lineage/LineageBaseFeature;
.super Ljava/lang/Object;
.source "LineageBaseFeature.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mSettingsObserver:Lcom/android/server/lineage/LineageBaseFeature$SettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/server/lineage/LineageBaseFeature;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/android/server/lineage/LineageBaseFeature;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract onSettingsChanged(Landroid/net/Uri;)V
.end method

.method public abstract onStart()V
.end method

.method public final putBoolean(Ljava/lang/String;Z)V
    .registers 4

    .line 64
    iget-object p0, p0, Lcom/android/server/lineage/LineageBaseFeature;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public final putInt(Ljava/lang/String;I)V
    .registers 4

    .line 74
    iget-object p0, p0, Lcom/android/server/lineage/LineageBaseFeature;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public final varargs registerSettings([Landroid/net/Uri;)V
    .registers 2

    .line 55
    iget-object p0, p0, Lcom/android/server/lineage/LineageBaseFeature;->mSettingsObserver:Lcom/android/server/lineage/LineageBaseFeature$SettingsObserver;

    invoke-virtual {p0, p1}, Lcom/android/server/lineage/LineageBaseFeature$SettingsObserver;->register([Landroid/net/Uri;)V

    return-void
.end method

.method public start()V
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/android/server/lineage/LineageBaseFeature;->mSettingsObserver:Lcom/android/server/lineage/LineageBaseFeature$SettingsObserver;

    if-nez v0, :cond_10

    .line 49
    new-instance v0, Lcom/android/server/lineage/LineageBaseFeature$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/lineage/LineageBaseFeature;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/lineage/LineageBaseFeature$SettingsObserver;-><init>(Lcom/android/server/lineage/LineageBaseFeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/lineage/LineageBaseFeature;->mSettingsObserver:Lcom/android/server/lineage/LineageBaseFeature$SettingsObserver;

    .line 50
    invoke-virtual {p0}, Lcom/android/server/lineage/LineageBaseFeature;->onStart()V

    :cond_10
    return-void
.end method
