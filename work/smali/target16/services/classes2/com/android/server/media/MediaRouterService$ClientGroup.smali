.class public final Lcom/android/server/media/MediaRouterService$ClientGroup;
.super Ljava/lang/Object;
.source "MediaRouterService.java"


# instance fields
.field public final mClientRecords:Ljava/util/List;

.field public mSelectedRouteId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterService;)V
    .registers 2

    .line 1176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1178
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$ClientGroup;->mClientRecords:Ljava/util/List;

    return-void
.end method
