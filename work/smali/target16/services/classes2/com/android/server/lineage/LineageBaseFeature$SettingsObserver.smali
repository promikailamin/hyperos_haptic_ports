.class public final Lcom/android/server/lineage/LineageBaseFeature$SettingsObserver;
.super Lcom/android/server/lineage/common/UserContentObserver;
.source "LineageBaseFeature.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/lineage/LineageBaseFeature;


# direct methods
.method public constructor <init>(Lcom/android/server/lineage/LineageBaseFeature;Landroid/os/Handler;)V
    .registers 3

    .line 94
    iput-object p1, p0, Lcom/android/server/lineage/LineageBaseFeature$SettingsObserver;->this$0:Lcom/android/server/lineage/LineageBaseFeature;

    .line 95
    invoke-direct {p0, p2}, Lcom/android/server/lineage/common/UserContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 119
    iget-object p0, p0, Lcom/android/server/lineage/LineageBaseFeature$SettingsObserver;->this$0:Lcom/android/server/lineage/LineageBaseFeature;

    invoke-virtual {p0, p2}, Lcom/android/server/lineage/LineageBaseFeature;->onSettingsChanged(Landroid/net/Uri;)V

    return-void
.end method

.method public varargs register([Landroid/net/Uri;)V
    .registers 8

    .line 99
    iget-object v0, p0, Lcom/android/server/lineage/LineageBaseFeature$SettingsObserver;->this$0:Lcom/android/server/lineage/LineageBaseFeature;

    iget-object v0, v0, Lcom/android/server/lineage/LineageBaseFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 100
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_16

    aget-object v4, p1, v3

    const/4 v5, -0x1

    .line 101
    invoke-virtual {v0, v4, v2, p0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 104
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/lineage/common/UserContentObserver;->observe()V

    return-void
.end method

.method public update()V
    .registers 2

    .line 114
    iget-object p0, p0, Lcom/android/server/lineage/LineageBaseFeature$SettingsObserver;->this$0:Lcom/android/server/lineage/LineageBaseFeature;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/lineage/LineageBaseFeature;->onSettingsChanged(Landroid/net/Uri;)V

    return-void
.end method
