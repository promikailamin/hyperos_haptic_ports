.class public Landroid/powerconsumption/declineWhite/DeclineWhiteInfo;
.super Ljava/lang/Object;
.source "DeclineWhiteInfo.java"


# instance fields
.field private blacklist declineWhiteConfigList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist version:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/powerconsumption/declineWhite/DeclineWhiteInfo;->declineWhiteConfigList:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method public blacklist getDeclineWhiteList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Landroid/powerconsumption/declineWhite/DeclineWhiteInfo;->declineWhiteConfigList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getVersion()J
    .registers 3

    .line 25
    iget-wide v0, p0, Landroid/powerconsumption/declineWhite/DeclineWhiteInfo;->version:J

    return-wide v0
.end method

.method public blacklist setDeclineWhiteList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 21
    .local p1, "declineWhiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/powerconsumption/declineWhite/DeclineWhiteInfo;->declineWhiteConfigList:Ljava/util/ArrayList;

    .line 22
    return-void
.end method

.method public blacklist setVersion(J)V
    .registers 3
    .param p1, "version"    # J

    .line 17
    iput-wide p1, p0, Landroid/powerconsumption/declineWhite/DeclineWhiteInfo;->version:J

    .line 18
    return-void
.end method
