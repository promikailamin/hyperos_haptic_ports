.class Landroid/media/browse/MediaBrowser$Subscription;
.super Ljava/lang/Object;
.source "MediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/browse/MediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Subscription"
.end annotation


# instance fields
.field private final greylist-max-o mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$SubscriptionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mOptionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 1169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mCallbacks:Ljava/util/List;

    .line 1171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    .line 1172
    return-void
.end method


# virtual methods
.method public greylist-max-o getCallback(Landroid/content/Context;Landroid/os/Bundle;)Landroid/media/browse/MediaBrowser$SubscriptionCallback;
    .registers 4

    .line 1187
    if-eqz p2, :cond_9

    .line 1188
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1190
    :cond_9
    const/4 p1, 0x0

    :goto_a
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2c

    .line 1191
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0, p2}, Landroid/media/browse/MediaBrowserUtils;->areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1192
    iget-object p2, p0, Landroid/media/browse/MediaBrowser$Subscription;->mCallbacks:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    return-object p1

    .line 1190
    :cond_29
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    .line 1195
    :cond_2c
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-o getCallbacks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$SubscriptionCallback;",
            ">;"
        }
    .end annotation

    .line 1183
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getOptionsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1179
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o isEmpty()Z
    .registers 2

    .line 1175
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o putCallback(Landroid/content/Context;Landroid/os/Bundle;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V
    .registers 5

    .line 1199
    if-eqz p2, :cond_9

    .line 1200
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1202
    :cond_9
    const/4 p1, 0x0

    :goto_a
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_29

    .line 1203
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0, p2}, Landroid/media/browse/MediaBrowserUtils;->areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1204
    iget-object p2, p0, Landroid/media/browse/MediaBrowser$Subscription;->mCallbacks:Ljava/util/List;

    invoke-interface {p2, p1, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1205
    return-void

    .line 1202
    :cond_26
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    .line 1208
    :cond_29
    iget-object p1, p0, Landroid/media/browse/MediaBrowser$Subscription;->mCallbacks:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1209
    iget-object p1, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1210
    return-void
.end method
