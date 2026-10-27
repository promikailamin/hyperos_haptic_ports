.class public Lmiui/contentcatcher/sdk/injector/IContentCatchedCallback$Default;
.super Ljava/lang/Object;
.source "IContentCatchedCallback.java"

# interfaces
.implements Lmiui/contentcatcher/sdk/injector/IContentCatchedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/contentcatcher/sdk/injector/IContentCatchedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onContentCatched(Lmiui/contentcatcher/sdk/Content;)V
    .registers 2
    .param p1, "content"    # Lmiui/contentcatcher/sdk/Content;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method
