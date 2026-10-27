.class public final Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;
.super Ljava/lang/Object;
.source "MediaRoute2ProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 1231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1232
    const-string v0, ""

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;->mPackageName:Ljava/lang/String;

    .line 1233
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;->mExtras:Landroid/os/Bundle;

    .line 1234
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams;
    .registers 3

    .line 1264
    new-instance v0, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams;-><init>(Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;Landroid/media/MediaRoute2ProviderService-IA;)V

    return-object v0
.end method

.method public blacklist setExtras(Landroid/os/Bundle;)Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;
    .registers 2

    .line 1246
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;->mExtras:Landroid/os/Bundle;

    .line 1247
    return-object p0
.end method

.method public blacklist setPackageName(Ljava/lang/String;)Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;
    .registers 2

    .line 1257
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;->mPackageName:Ljava/lang/String;

    .line 1258
    return-object p0
.end method
